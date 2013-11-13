#import "Output.h"

@interface MockOutput : NSObject <Output>

@property (nonatomic) NSString* text;

- (void) write:(NSString*)msg;

@end
