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


- (void) welcomeUser {
    self.welcomedUser = YES;
}

- (void) promptGoodBye {
    self.promptedGoodBye = YES;
}

- (NSString*) promptMove {
    self.promptedMove = YES;
    return [NSString stringWithFormat:@"mock"];
}

- (NSString*) promptBoardSize {
    self.promptedBoardSize = YES;
    return [NSString stringWithFormat:@"prompted board size"];
}

- (NSString*) promptPlayerOneType {
    self.promptedPlayerOneType = YES;
    return [NSString stringWithFormat:@"prompted player one type"];
}

@end