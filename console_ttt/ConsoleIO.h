#import "IO.h"

@interface ConsoleIO : NSObject <IO>

- (void) write:(NSString *)msg;

- (NSString*) readLine:(NSString*)input;

@end
