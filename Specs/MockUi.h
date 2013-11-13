#import <Foundation/Foundation.h>
#import "Ui.h"

@interface MockUi : NSObject <Ui>

@property BOOL welcomedUser;
@property BOOL promptedGoodBye;
@property BOOL promptedMove;
@property BOOL promptedBoardSize;
@property BOOL promptedPlayerOneType;

- (void) welcomeUser;

- (void) promptGoodBye;

- (NSString*) promptMove;

- (NSString*) promptBoardSize;

- (NSString*) promptPlayerOneType;

@end