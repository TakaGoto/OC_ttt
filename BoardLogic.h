#import <Foundation/Foundation.h>

@interface BoardLogic : NSObject

+(NSMutableArray*) generateWinCombinations:(int)boardSize;

+(NSMutableArray*) horizontalCombinations:(int)boardSize withCombinations:(NSMutableArray*)combinations;

+(NSMutableArray*) verticalCombinations:(int)boardSize withCombinations:(NSMutableArray*)combinations;

+(NSMutableArray*) diagonalCombinations:(int)boardSize withCombinations:(NSMutableArray*)combinations;


@end