#import <OCDSpec2/OCDSpec2.h>
#import "MockUi.h"
#import "Game.h"

OCDSpec2Context(GameSpec) {
  
  Describe(@"Game", ^{
      
    Describe(@"starts the game", ^{
        __block MockUi *mockUi;
        __block Game *game;
        
        BeforeEach(^{
            mockUi = [[MockUi alloc] init];
            game = [[Game alloc] initWithUi:mockUi];
        });
    
        It(@"displays welcome message", ^{
            [game startGame];
            
            [ExpectBool(mockUi.welcomedUser) toBeTrue];
        });
        
        It(@"prompts user to enter move", ^{
            [game startGame];
            
            [ExpectBool(mockUi.promptedMove) toBeTrue];
        });
    
    });
    
  });
  
}
