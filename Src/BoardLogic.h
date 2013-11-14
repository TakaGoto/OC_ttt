#import <Foundation/Foundation.h>
#import "board.h"

@interface BoardLogic : NSObject

+(NSMutableArray*) generateWinCombinations:(int)boardSize;

+(void) horizontalCombinations:(int)boardSize withCombinations:(NSMutableArray*)combinations;

+(void) verticalCombinations:(int)boardSize withCombinations:(NSMutableArray*)combinations;

+(void) diagonalCombinations:(int)boardSize withCombinations:(NSMutableArray*)combinations;

+(BOOL) isFull:(Board*)board;

+(BOOL) isTie:(Board*)board;

+(BOOL) hasWinner:(Board*)board;

@end
