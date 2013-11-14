#import "ConsoleUi.h"
#import "IO.h"
#import "stdio.h"

@implementation ConsoleUi

- (id) init:(id<IO>)io {
    if (self = [super init]) {
        self.io = io;
    }
    return (self);
}

- (void) welcomeUser {
    [self.io write:@"Welcome!"];
}

- (void) promptGoodBye {
    [self.io write:@"Good Bye!"];
}

- (void) printBoard:(Board *)board {
    NSMutableString *stringBoard = [[NSMutableString alloc] init];
    for (NSObject *obj in board.slots) {
        [stringBoard appendString:[obj description]];
    }
    [self.io write:stringBoard];
}

- (void) promptResult:(NSString *)gameState {
    if ([gameState isEqualToString:@"tie"]) {
        [self.io write:@"It is a tie!"];
    } else {
        [self.io write:[@"Winner is " stringByAppendingString:gameState]];
    }
}

- (NSString*) promptBoardSize {
    [self.io write:@"Enter board size (3/4): "];
    NSString *userInput = [self validateBoardInput:[self.io readLine:@"board size"]];
    return userInput;
}

- (NSString*) validateBoardInput:(NSString*)input {
    NSArray *matches = [NSArray arrayWithObjects:@"3", @"4", nil];
    while ([self validateInput:input with:matches]) {
        [self.io write:@"Please enter correct board size (3/4): "];
        input = [self.io readLine:@"board size"];
    }
    return input;
}

- (NSString*) promptMove {
    [self.io write:@"Make your move: "];
    return [self.io readLine:@"player move"];
}

- (NSString*) promptPlayerOneType {
    [self.io write:@"Enter player one type (h/c): "];
    return [self.io readLine:@"player type"];
}

- (NSString*) promptPlayerTwoType {
    [self.io write:@"Enter player two type (h/c): "];
    return [self.io readLine:@"player type"];
}

- (BOOL) promptPlayAgain {
    [self.io write:@"Would you like to play again? (y/n): "];
    [self.io readLine:@"play again"];
    return NO;
}

- (BOOL) validateInput:(NSString*)input with:(NSArray*)match {
    return false;
}

@end
