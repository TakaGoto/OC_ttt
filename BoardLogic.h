#import <Foundation/Foundation.h>
#import "board.h"

@interface BoardLogic : NSObject

+(NSMutableArray*) generateWinCombinations:(int)boardSize;

+(NSMutableArray*) horizontalCombinations:(int)boardSize withCombinations:(NSMutableArray*)combinations;

+(NSMutableArray*) verticalCombinations:(int)boardSize withCombinations:(NSMutableArray*)combinations;

+(NSMutableArray*) diagonalCombinations:(int)boardSize withCombinations:(NSMutableArray*)combinations;

+(BOOL) isFull:(Board*)board;

+(BOOL) isTie:(Board*)board;

+(BOOL) hasWinner:(Board*)board;

@end