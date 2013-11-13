#import <Foundation/Foundation.h>

@protocol Output

@property (nonatomic, strong) NSString* text;

- (void) write:(NSString*)msg;

@end
