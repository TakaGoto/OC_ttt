#import "ConsoleUi.h"
#import "Output.h"

@implementation ConsoleUi

- (id) init:(id<Output>)output {
    if (self = [super init]) {
        self.output = output;
    }
    return (self);
}

- (void) welcomeUser {
    [self.output write:@"Welcome!"];
}

- (void) promptGoodBye {
    [self.output write:@"Good Bye!"];
}

- (void) promptMove {
    [self.output write:@"Make your move: "];
}

@end
