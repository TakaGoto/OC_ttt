#import "BoardLogic.h"

@implementation BoardLogic

+(NSMutableArray*) generateWinCombinations:(int)boardSize {
    NSMutableArray *winningCombinations = [[NSMutableArray alloc] initWithCapacity:(boardSize * 2) + 2];

    [self horizontalCombinations:boardSize withCombinations:winningCombinations];
    [self verticalCombinations:boardSize withCombinations:winningCombinations];
    [self diagonalCombinations:boardSize withCombinations:winningCombinations];

    return winningCombinations;
}

+(void) horizontalCombinations:(int)boardSize withCombinations:(NSMutableArray *)combinations {
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
}

+(void) verticalCombinations:(int)boardSize withCombinations:(NSMutableArray *)combinations {
    NSMutableArray* combination = [[NSMutableArray alloc] initWithCapacity:boardSize];
    for (int i = 0; i < boardSize; i++) {
        for(int j = 0; j < [self getNumOfSlots:boardSize]; j+=boardSize) {
            [combination addObject:[NSString stringWithFormat:@"%d", i + j]];
        }
        [combinations addObject:combination];
        combination = [[NSMutableArray alloc] initWithCapacity:boardSize];
    }
}

+(void) diagonalCombinations:(int)boardSize withCombinations:(NSMutableArray *)combinations {
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
}

+ (int) getNumOfSlots:(int)boardSize {
    return (boardSize * boardSize);
}

+ (NSString*) gameState:(Board *)board {
    if ([self isTie:board]) {
        return @"tie";
    } else {
        return [[self hasWinner:board] objectForKey:@"winner"];
    }
}

+ (BOOL) isFull:(Board *)board {
    for (NSObject *slot in board.slots) {
        if ([slot isNotEqualTo:@"X"] && [slot isNotEqualTo:@"O"]) {
            return false;
        }
    }
    return true;
}

+ (BOOL) isTie:(Board *)board {
    NSMutableDictionary* hasWinner = [self hasWinner:board];
    return [[hasWinner objectForKey:@"hasWinner"] isEqualToString:@"NO"] && [self isFull:board];
}

+ (NSMutableDictionary*) hasWinner:(Board *)board {
    NSMutableDictionary *hasWinner = [[NSMutableDictionary alloc] init];
    NSInteger size = sqrt([board.slots count]);
    int boardSize = (int)size;
    NSMutableArray *winningCombinations = [self generateWinCombinations:boardSize];
    NSMutableArray *possibleSlots = [[NSMutableArray alloc] initWithCapacity:boardSize];

    for (NSArray *combination in winningCombinations) {
        for (NSString *slot in combination) {
            [possibleSlots addObject:[board.slots objectAtIndex:[slot intValue]]];
        }

        if ([[possibleSlots componentsJoinedByString:@""]  isEqual: @"XXX"] ||
            [[possibleSlots componentsJoinedByString:@""]  isEqual: @"OOO"] ||
            [[possibleSlots componentsJoinedByString:@""]  isEqual: @"XXXX"] ||
            [[possibleSlots componentsJoinedByString:@""]  isEqual: @"OOOO"]) {
            [hasWinner setObject:@"YES" forKey:@"hasWinner"];
            [hasWinner setObject:[possibleSlots objectAtIndex:0] forKey:@"winner"];
            return hasWinner;
        }

        possibleSlots = [[NSMutableArray alloc] initWithCapacity:boardSize];
    }
    [hasWinner setObject:@"NO" forKey:@"hasWinner"];
    return hasWinner;
}

@end
