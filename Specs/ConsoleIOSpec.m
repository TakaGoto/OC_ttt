#import <OCDSpec2/OCDSpec2.h>
#import "ConsoleUi.h"
#import "MockIO.h"
#import "ConsoleIO.h"

OCDSpec2Context(ConsoleIOSpec) {

  Describe(@"console input output", ^{
        __block MockOutput *mockOutput;
        __block ConsoleUi *ui;

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
      
      It(@"waits for user input", ^{
          NSString* userInput = [ui promptMove];
          [ExpectStr(userInput) toContain:@"user input"];
      });
      
      It(@"asks for board size", ^{
          [ui promptBoardSize];
          [ExpectStr(mockOutput.text) toContain:@"Enter board size (3/4): "];
      });
      
      It(@"returns user input for board size", ^{
          NSString* userInput = [ui promptBoardSize];
          [ExpectStr(userInput) toContain:@"user input"];
      });
      
      It(@"asks for player one type", ^{
          [ui promptPlayerOneType];
          [ExpectStr(mockOutput.text) toContain:@"Enter player one type (h/c): "];
      });
      
      It(@"returns user input for player one type", ^{
          NSString* userInput = [ui promptPlayerOneType];
          [ExpectStr(userInput) toContain:@"user input"];
      });

  });

}
