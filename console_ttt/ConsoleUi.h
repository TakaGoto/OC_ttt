#import <Foundation/Foundation.h>
#import "IO.h"
#import "Ui.h"

@interface ConsoleUi : NSObject <Ui>

@property (nonatomic, strong) id<IO> io;

- (id) init:(id<IO>)io;

- (void) welcomeUser;

- (void) promptGoodBye;

- (void) printBoard:(Board *)board;

- (NSString*) promptBoardSize;

- (NSString*) validateBoardInput:(NSString*)input;

- (NSString*) promptMove;

- (NSString*) promptPlayerOneType;

- (NSString*) promptPlayerTwoType;

- (BOOL) validateInput:(NSString*)input with:(NSArray*)match;

@end
