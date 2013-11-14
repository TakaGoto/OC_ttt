#import <OCDSpec2/OCDSpec2.h>
#import "Board.h"

OCDSpec2Context(BoardSpec) {

  Describe(@"Board", ^{
      __block Board *board;

      BeforeEach(^{
        board = [[Board alloc] init:3];
      });

      It(@"has slots", ^{
          [ExpectObj(board) toExist];
          [ExpectArray(board.slots) toExist];
      });

      It(@"has 9 slots", ^{
          [ExpectInt([board.slots count]) toBe: 9];
      });

      It(@"has 12 slots", ^{
          __block Board *newBoard;
          newBoard = [[Board alloc] init:4];
          [ExpectInt([newBoard.slots count]) toBe: 16];
      });

      It(@"replaces slot for a mark", ^{
          [board replaceSlot:5 withMark:@"X"];
          [ExpectObj([board.slots objectAtIndex:5]) toBe:@"X"];
      });
      
      It(@"returns true if slot is available", ^{
          [ExpectBool([board validSlot:5]) toBeTrue];
      });
      
      It(@"returns false if slot is not available", ^{
          [board replaceSlot:0 withMark:@"X"];
          [ExpectBool([board validSlot:1]) toBeFalse];
      });
      
      It(@"returns false if slot with O is not available", ^{
          [board replaceSlot:4 withMark:@"O"];
          [ExpectBool([board validSlot:5]) toBeFalse];
      });
      
      It(@"returns false if slot number is over index", ^{
          [ExpectBool([board validSlot:20]) toBeFalse];
      });
      
      It(@"returns false if slot number is under index", ^{
          [ExpectBool([board validSlot:-10]) toBeFalse];
      });
      
      It(@"returns false is O takes the spot", ^{
          [board replaceSlot:0 withMark:@"O"];
          [board replaceSlot:4 withMark:@"X"];
          [ExpectBool([board validSlot:1]) toBeFalse];
      });
  });

}
