#import "Game.h"
#import "BoardLogic.h"
#import "Players/HumanPlayer.h"
#import "Players/ComputerPlayer.h"

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
    if ([playerType isEqualToString:@"h"]) {
        self.playerOne = [[HumanPlayer alloc] init:@"X"];
    } else {
        self.playerOne = [[ComputerPlayer alloc] init:@"X"];
    }
}

- (void) createPlayerTwo {
    NSString *playerType = [[self ui] promptPlayerTwoType];
    if ([playerType isEqualToString:@"h"]) {
        self.playerTwo = [[HumanPlayer alloc] init:@"O"];
    } else {
        self.playerTwo = [[ComputerPlayer alloc] init:@"O"];
    }
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
    NSString *move = [[self ui] promptMove];
    [[self board] replaceSlot:[move intValue]-1 withMark:self.playerOne.mark];
    [[self ui] printBoard:self.board];
    
    if (![BoardLogic isOver:self.board]) {
        move = [[self ui] promptMove];
        [[self board] replaceSlot:[move intValue]-1 withMark:self.playerTwo.mark];
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
