#import "Board.h"

@implementation Board

@synthesize slots;

- (id) init:(int)size {
    if ((self = [super init])) {
        [self createBoard:size];
    }
    return (self);
}

- (void) createBoard:(int)size {
    NSMutableArray *generatedBoard = [NSMutableArray array];
    int counter = 1;

    for(int row = 0; row < size; ++row) {
        for(int col = 0; col < size; ++col) {
            [generatedBoard addObject:@(counter)];
            counter++;
        }
    }
    self.slots = generatedBoard;
}

- (void) replaceSlot:(int)index withMark:(NSString*)mark {
    [slots insertObject:mark atIndex:index];
}

@end
