#import <OCDSpec2/OCDSpec2.h>
#import "ConsoleUi.h"
#import "board.h"
#import "MockIO.h"
#import "ConsoleIO.h"

OCDSpec2Context(ConsoleIOSpec) {

  Describe(@"console input output", ^{
        __block MockIO *mockIO;
        __block ConsoleUi *ui;

      BeforeEach(^{
          mockIO = [[MockIO alloc] init];
          ui = [[ConsoleUi alloc] init:mockIO];
      });

      It(@"welcomes user", ^{
          [ui welcomeUser];
          [ExpectStr(mockIO.text) toContain:@"Welcome!"];
      });

      It(@"Farewells user", ^{
          [ui promptGoodBye];
          [ExpectStr(mockIO.text) toContain:@"Good Bye!"];
      });

      It(@"prompts user to make a move", ^{
          [ui promptMove];
          [ExpectStr(mockIO.text) toContain:@"Make your move: "];
      });
      
      It(@"waits for user input to make a move", ^{
          NSString* userInput = [ui promptMove];
          [ExpectStr(userInput) toContain:@"5"];
      });
      
      It(@"asks for board size", ^{
          [ui promptBoardSize];
          [ExpectStr(mockIO.text) toContain:@"Enter board size (3/4): "];
      });
      
      It(@"returns user input for board size", ^{
          NSString* userInput = [ui promptBoardSize];
          [ExpectStr(userInput) toContain:@"3"];
      });

      It(@"asks for player one type", ^{
          [ui promptPlayerOneType];
          [ExpectStr(mockIO.text) toContain:@"Enter player one type (h/c): "];
      });
      
      It(@"asks if user wants to play again", ^{
          [ui promptPlayAgain];
          [ExpectStr(mockIO.text) toContain:@"Would you like to play again? (y/n): "];
      });
      
      It(@"returns user input if user wants to continue", ^{
          BOOL userInput = [ui promptPlayAgain];
          [ExpectBool(userInput) toBeFalse];
      });
      
      It(@"returns user input for player one type", ^{
          NSString* userInput = [ui promptPlayerOneType];
          [ExpectStr(userInput) toContain:@"h"];
      });
      
      It(@"prints board", ^{
          __block Board *board;
          board = [[Board alloc] init:3];
          [ui printBoard:board];
          [ExpectStr(mockIO.text) toContain:@"1"];
          [ExpectStr(mockIO.text) toContain:@"2"];
          [ExpectStr(mockIO.text) toContain:@"3"];
          [ExpectStr(mockIO.text) toContain:@"4"];
          [ExpectStr(mockIO.text) toContain:@"5"];
          [ExpectStr(mockIO.text) toContain:@"6"];
          [ExpectStr(mockIO.text) toContain:@"7"];
          [ExpectStr(mockIO.text) toContain:@"8"];
          [ExpectStr(mockIO.text) toContain:@"9"];
      });

  });

}
