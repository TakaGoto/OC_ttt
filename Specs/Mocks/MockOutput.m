#import "MockOutput.h"

@implementation MockOutput

@synthesize text;

- (void) write:(NSString *)msg {
    self.text = msg;
}

@end
