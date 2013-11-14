#import "Game.h"
#import "BoardLogic.h"
#import "Players/HumanPlayer.h"
#import "Players/ComputerPlayer.h"
#import "Players/PlayerFactory.h"

@implementation Game

- (id) initWithUi:(id)ui {
    if ((self = [super init])) {
        self.ui = ui;
    }
    return (self);
}

- (void) createBoard {
    int boardSize = [[[self ui] promptBoardSize] intValue];
    self.board = [[Board alloc] init:boardSize];
}

- (void) createPlayerOne {
    NSString *playerType = [[self ui] promptPlayerOneType];
    self.playerOne = [PlayerFactory create:playerType withMark:@"X"];
}

- (void) createPlayerTwo {
    NSString *playerType = [[self ui] promptPlayerTwoType];
    self.playerTwo = [PlayerFactory create:playerType withMark:@"O"];
}

- (void) play {
    [self startGame];

    while (![BoardLogic isOver:self.board]) {
        [self playGame];
    }
    
    [self endGame];
}

- (void) startGame {
    [[self ui] welcomeUser];
    [self createBoard];
    [self createPlayerOne];
    [self createPlayerTwo];
    [[self ui] printBoard:self.board];
}

- (void) playGame {
    self.board.slots = [self.playerOne makeMoveWith:self.board andUi:self.ui];
    [[self ui] printBoard:self.board];
    
    if (![BoardLogic isOver:self.board]) {
        self.board.slots = [self.playerTwo makeMoveWith:self.board andUi:self.ui];
        [[self ui] printBoard:self.board];
    }
}

- (void) endGame {
    [[self ui] promptResult:[BoardLogic gameState:self.board]];
    if ([[self ui] promptPlayAgain]) {
        [self play];
    }
    [[self ui] promptGoodBye];
}

@end
