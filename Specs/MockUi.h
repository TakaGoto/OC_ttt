#import <Foundation/Foundation.h>
#import "Ui.h"

@interface MockUi : NSObject <Ui>

@property bool welcomedUser;
@property bool promptedGoodBye;
@property bool promptedMove;

- (void) welcomeUser;

- (void) promptGoodBye;

- (void) promptMove;

@end