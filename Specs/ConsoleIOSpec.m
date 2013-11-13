#import <OCDSpec2/OCDSpec2.h>
#import "ConsoleUi.h"
#import "MockOutput.h"
#import "ConsoleOutput.h"

OCDSpec2Context(ConsoleIOSpec) {

  Describe(@"console input output", ^{
        __block MockOutput *mockOutput;
        __block ConsoleUi *ui;
        __block ConsoleUi *testUi;
        __block ConsoleOutput *realOutput;

      BeforeEach(^{
          mockOutput = [[MockOutput alloc] init];
          ui = [[ConsoleUi alloc] init:mockOutput];
      });

      It(@"welcomes user", ^{
          [ui welcomeUser];
          [ExpectStr(mockOutput.text) toContain:@"Welcome!"];
      });

      It(@"Farewells user", ^{
          [ui promptGoodBye];
          [ExpectStr(mockOutput.text) toContain:@"Good Bye!"];
      });

      It(@"prompts user to make a move", ^{
          [ui promptMove];
          [ExpectStr(mockOutput.text) toContain:@"Make your move: "];
      });

      It(@"promps with nslog", ^{
          realOutput = [[ConsoleOutput alloc] init];
          testUi = [[ConsoleUi alloc] init:realOutput];
      });

  });

}
