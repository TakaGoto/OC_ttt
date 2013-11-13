#import "Game.h"
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
        self.playerOne = [[HumanPlayer alloc] init];
    } else {
        self.playerOne = [[ComputerPlayer alloc] init];
    }
}

- (void) createPlayerTwo {
    NSString *playerType = [[self ui] promptPlayerTwoType];
    if ([playerType isEqualToString:@"h"]) {
        self.playerTwo = [[HumanPlayer alloc] init];
    } else {
        self.playerTwo = [[ComputerPlayer alloc] init];
    }
}

- (void) startGame {
    [[self ui] welcomeUser];
    [self createBoard];
    [self createPlayerOne];
    [self createPlayerTwo];
    [[self ui] printBoard:self.board];
    [[self ui] promptMove];
}

@end
