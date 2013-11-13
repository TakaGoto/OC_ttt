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

- (NSString*) promptBoardSize {
    [self.io write:@"Enter board size (3/4): "];
    return [self.io readLine];
}

- (NSString*) promptMove {
    [self.io write:@"Make your move: "];
    return [self.io readLine];
}

- (NSString*) promptPlayerOneType {
    [self.io write:@"Enter player one type (h/c): "];
    return [self.io readLine];
}

@end
