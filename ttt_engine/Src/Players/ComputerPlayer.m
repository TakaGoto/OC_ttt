#import "ComputerPlayer.h"
#import "../Ui/Ui.h"
#import "../board.h"

@implementation ComputerPlayer

@synthesize mark;

- (id) init:(NSString*)m {
    if (self = [super init]) {
        self.mark = m;
    }
    return (self);
}

- (NSMutableArray*) makeMoveWith:(Board*)board andUi:(id<Ui>)ui {
    [board replaceSlot:0 withMark:self.mark];
    return board.slots;
}

@end
