#import "ConsoleUi.h"
#import "IO.h"
#import "MockUi.h"
#import "Ui.h"

@implementation MockUi

@synthesize welcomedUser;
@synthesize promptedGoodBye;
@synthesize promptedMove;
@synthesize promptedBoardSize;
@synthesize promptedPlayerOneType;
@synthesize promptedPlayerTwoType;


- (void) welcomeUser {
    self.welcomedUser = YES;
}

- (void) promptGoodBye {
    self.promptedGoodBye = YES;
}

- (void) printBoard:(Board *)board {
    self.printedBoard = YES;
}

- (NSString*) promptMove {
    self.promptedMove = YES;
    return @"1";
}

- (NSString*) promptBoardSize {
    self.promptedBoardSize = YES;
    return @"3";
}

- (NSString*) promptPlayerOneType {
    self.promptedPlayerOneType = YES;
    return @"h";
}

- (NSString*) promptPlayerTwoType {
    self.promptedPlayerTwoType = YES;
    return @"h";
}

- (BOOL) validateInput:(NSString *)input with:(NSArray *)word {
    return false;
}

@end