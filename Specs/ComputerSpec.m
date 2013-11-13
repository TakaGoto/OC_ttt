#import <OCDSpec2/OCDSpec2.h>
#import "ComputerPlayer.h"

OCDSpec2Context(ComputerSpec) {

    Describe(@"Computer Player", ^{
        __block ComputerPlayer *computerPlayer;

        It(@"has a mark for Computer Player", ^{
            computerPlayer = [[ComputerPlayer alloc] init:@"O"];
            [ExpectStr(computerPlayer.mark) toBe:@"O"];
        });

    });

}
