#import <OCDSpec2/OCDSpec2.h>
#import "ComputerPlayer.h"
#import "MockUi.h"
#import "board.h"

OCDSpec2Context(ComputerSpec) {

    Describe(@"Computer Player", ^{
        __block ComputerPlayer *computerPlayer;
        
        BeforeEach(^{
            computerPlayer = [[ComputerPlayer alloc] init:@"O"];
        });

        It(@"has a mark for Computer Player", ^{
            [ExpectStr(computerPlayer.mark) toBe:@"O"];
        });
        
        It(@"makes a move", ^{
            Board* board = [[Board alloc] init:3];
            MockUi* mockUi = [[MockUi alloc] init];
            
            [computerPlayer makeMoveWith:board andUi:mockUi];
            
            [ExpectStr([board.slots objectAtIndex:0]) toContain:@"O"];
        });

    });

}
