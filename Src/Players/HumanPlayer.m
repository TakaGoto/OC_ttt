#import "HumanPlayer.h"

@implementation HumanPlayer

@synthesize mark;

- (id) init:(NSString*)m {
    if (self = [super init]) {
        self.mark = m;
    }
    return (self);
}

- (NSArray*) makeMoveWith:(NSString*)board andMove:(NSString*)move {
    return [NSArray new];
}

@end
