#import "IO.h"

@interface ConsoleOutput : NSObject <IO>

- (void) write:(NSString *)msg;

- (NSString*) readLine;

@end
