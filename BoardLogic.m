#import "BoardLogic.h"

@implementation BoardLogic

+(NSMutableArray*) generateWinCombinations:(int)boardSize {
    NSMutableArray *winningCombinations = [[NSMutableArray alloc] initWithCapacity:(boardSize * 2) + 2];
    
    [self horizontalCombinations:boardSize withCombinations:winningCombinations];
    [self verticalCombinations:boardSize withCombinations:winningCombinations];
    [self diagonalCombinations:boardSize withCombinations:winningCombinations];

    return winningCombinations;
}

+(NSMutableArray*) horizontalCombinations:(int)boardSize withCombinations:(NSMutableArray *)combinations {
    int counter = 1;
    NSMutableArray* combination = [[NSMutableArray alloc] initWithCapacity:boardSize];
    for (int j = 0; j < [self getNumOfSlots:boardSize]; j++) {
        [combination addObject:[NSString stringWithFormat:@"%d", j]];
            
        if (counter == boardSize) {
            [combinations addObject:combination];
            counter = 0;
            combination = [[NSMutableArray alloc] initWithCapacity:boardSize];
        }
        counter++;
    }
    return combinations;
}

+(NSMutableArray*) verticalCombinations:(int)boardSize withCombinations:(NSMutableArray *)combinations {
    NSMutableArray* combination = [[NSMutableArray alloc] initWithCapacity:boardSize];
    for (int i = 0; i < boardSize; i++) {
        for(int j = 0; j < [self getNumOfSlots:boardSize]; j+=boardSize) {
            [combination addObject:[NSString stringWithFormat:@"%d", i + j]];
        }
        [combinations addObject:combination];
        combination = [[NSMutableArray alloc] initWithCapacity:boardSize];
    }
    return combinations;
}

+(NSMutableArray*) diagonalCombinations:(int)boardSize withCombinations:(NSMutableArray *)combinations {
    NSMutableArray* combination = [[NSMutableArray alloc] initWithCapacity:2];
    for (int i = 0; i < [self getNumOfSlots:boardSize]; i+=(boardSize + 1)) {
        [combination addObject:[NSString stringWithFormat:@"%d", i]];
    }
    [combinations addObject:combination];
    combination = [[NSMutableArray alloc] initWithCapacity:2];
    
    for (int j = (boardSize - 1); j < [self getNumOfSlots:boardSize] - 1; j+=(boardSize -1)) {
        [combination addObject:[NSString stringWithFormat:@"%d", j]];
    }
    [combinations addObject:combination];
    return combinations;
}

+ (int) getNumOfSlots:(int)boardSize {
    return (boardSize * boardSize);
}

@end
