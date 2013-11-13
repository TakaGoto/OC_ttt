#import <Foundation/Foundation.h>

@protocol Ui

- (void) welcomeUser;
- (void) promptGoodBye;
- (NSString*) promptMove;
- (NSString*) promptBoardSize;
- (NSString*) promptPlayerOneType;

@end