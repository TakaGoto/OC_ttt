#import "Output.h"

@interface ConsoleOutput : NSObject <Output>

- (void) write:(NSString *)msg;

@end
