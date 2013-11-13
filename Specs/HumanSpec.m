#import <OCDSpec2/OCDSpec2.h>
#import "HumanPlayer.h"

OCDSpec2Context(HumanSpec) {

  Describe(@"Human Player", ^{
      __block HumanPlayer *humanPlayer;

    It(@"has a mark for Human Player", ^{
        humanPlayer = [[HumanPlayer alloc] init:@"X"];
        [ExpectStr(humanPlayer.mark) toBe:@"X"];
    });

  });

}
