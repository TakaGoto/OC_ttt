#import <Foundation/Foundation.h>
#import "Ui.h"

@interface MockUi : NSObject <Ui>

@property BOOL welcomedUser;
@property BOOL promptedGoodBye;
@property BOOL promptedMove;
@property BOOL promptedBoardSize;
@property BOOL promptedPlayerOneType;
@property BOOL promptedPlayerTwoType;
@property BOOL printedBoard;

- (void) welcomeUser;

- (void) promptGoodBye;

- (void) printBoard:(Board *)board;

- (NSString*) promptMove;

- (NSString*) promptBoardSize;

- (NSString*) promptPlayerOneType;

- (NSString*) promptPlayerTwoType;

- (BOOL) validateInput:(NSString*)input with:(NSArray *)match;

@end