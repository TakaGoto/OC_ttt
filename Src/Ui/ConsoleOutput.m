#import "ConsoleOutput.h"

@implementation ConsoleOutput

@synthesize text;

- (void) write:(NSString *)msg {
    NSLog(@"%@", msg);
}

@end
