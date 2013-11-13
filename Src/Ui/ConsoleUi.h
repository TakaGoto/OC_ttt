#import <Foundation/Foundation.h>
#import "IO.h"
#import "Ui.h"

@interface ConsoleUi : NSObject <Ui>

@property (nonatomic, strong) id<IO> io;

- (id) init:(id<IO>)io;

- (void) welcomeUser;

- (void) promptGoodBye;

- (NSString*) promptBoardSize;

- (NSString*) promptMove;

- (NSString*) promptPlayerOneType;

@end
