#import <OCDSpec2/OCDSpec2.h>
#import "board.h"
#import "Ai.h"

OCDSpec2Context(AiSpec) {
  
  Describe(@"Impossible Ai", ^{
    
    Describe(@"minimax", ^{
        It(@"returns 1 for last move", ^{

            __block Board* board;
            board = [[Board alloc] init:3];
            [board replaceSlot:0 withMark:@"X"];
            [board replaceSlot:1 withMark:@"O"];
            [board replaceSlot:2 withMark:@"X"];
            [board replaceSlot:3 withMark:@"X"];
            [board replaceSlot:4 withMark:@"O"];
            [board replaceSlot:5 withMark:@"X"];
            [board replaceSlot:6 withMark:@"O"];
            [board replaceSlot:8 withMark:@"O"];
            
            [ExpectInt([Ai minimax:board withMark:@"O"]) toBe:1];
        });
    });
  });
  
}
