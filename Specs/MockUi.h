#import <Foundation/Foundation.h>
#import "Ui.h"

@interface MockUi : NSObject <Ui>

@property BOOL welcomedUser;
@property BOOL promptedGoodBye;
@property BOOL promptedMove;
@property BOOL promptedBoardSize;
@property BOOL promptedPlayerOneType;
@property BOOL promptedPlayerTwoType;
@property BOOL promptedPlayAgain;
@property BOOL printedBoard;
@property BOOL promptedTie;
@property BOOL promptedWinner;

- (void) welcomeUser;

- (void) promptGoodBye;

- (void) printBoard:(Board *)board;

- (void) promptResult:(NSString *)gameState;

- (NSString*) promptMove;

- (NSString*) promptBoardSize;

- (NSString*) promptPlayerOneType;

- (NSString*) promptPlayerTwoType;

- (NSString*) promptPlayAgain;

- (BOOL) validateInput:(NSString*)input with:(NSArray *)match;

@end