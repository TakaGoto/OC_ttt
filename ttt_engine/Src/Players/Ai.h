#import <Foundation/Foundation.h>
#import "board.h"

@interface Ai : NSObject

+ (int) minimax:(Board*)board withMark:(NSString*)mark;

@end