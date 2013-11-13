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
      });
  });

}
