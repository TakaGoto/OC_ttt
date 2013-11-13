#import "MockOutput.h"

@implementation MockOutput

@synthesize text;

- (void) write:(NSString *)msg {
    self.text = msg;
}

- (NSString*) readLine {
    return [NSString stringWithFormat:@"user input"];
}

@end
