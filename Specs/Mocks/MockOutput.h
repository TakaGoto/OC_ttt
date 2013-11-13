#import "IO.h"

@interface MockOutput : NSObject <IO>

@property (nonatomic) NSString* text;

- (void) write:(NSString*)msg;

@end
