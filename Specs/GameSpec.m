#import <OCDSpec2/OCDSpec2.h>
#import "MockUi.h"
#import "ConsoleUi.h"
#import "Game.h"

OCDSpec2Context(GameSpec) {
  
  Describe(@"Game", ^{
      
    __block MockUi *mockUi;
    __block Game *game;
     
    BeforeEach(^{
        mockUi = [[MockUi alloc] init];
        game = [[Game alloc] initWithUi:mockUi];
    });
      
    Describe(@"starts the game", ^{
        
        BeforeEach(^{
            [game startGame];
        });
        
        It(@"displays welcome message", ^{
            [ExpectBool(mockUi.welcomedUser) toBeTrue];
        });
        
        It(@"prompts user to enter move", ^{
            [ExpectBool(mockUi.promptedMove) toBeTrue];
        });
        
        It(@"prompts user to enter board size", ^{
            [ExpectBool(mockUi.promptedBoardSize) toBeTrue];
        });
        
        It(@"prompts user to enter player one type", ^{
            [ExpectBool(mockUi.promptedPlayerOneType) toBeTrue];
        });
        
        It(@"prompts user to enter player two type", ^{
            [ExpectBool(mockUi.promptedPlayerTwoType) toBeTrue];
        });
        
        It(@"prints the board", ^{
            [ExpectBool(mockUi.printedBoard) toBeTrue];
        });

    });
      
      Describe(@"game has instances", ^{
          
          BeforeEach(^{
              [game startGame];
          });
          
          It(@"has a board", ^{
              [ExpectObj(game.board) toExist];
          });
          
          It(@"has an ui", ^{
              [ExpectObj(game.ui) toExist];
          });
          
          It(@"has player one", ^{
              [ExpectObj(game.playerOne) toExist];
          });
          
          It(@"has player two", ^{
              [ExpectObj(game.playerTwo) toExist];
          });
          
      });
    
  });
  
}
