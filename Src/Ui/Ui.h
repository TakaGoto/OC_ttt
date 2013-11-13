#import <Foundation/Foundation.h>
#import "board.h"

@protocol Ui

- (void) welcomeUser;

- (void) promptGoodBye;

- (void) printBoard:(Board*)board;

- (NSString*) promptMove;

- (NSString*) promptBoardSize;

- (NSString*) promptPlayerOneType;

- (NSString*) promptPlayerTwoType;

- (BOOL) validateInput:(NSString*)input with:(NSArray*)match;

@end