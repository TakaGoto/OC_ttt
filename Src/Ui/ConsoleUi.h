#import <Foundation/Foundation.h>
#import "Output.h"
#import "Ui.h"

@interface ConsoleUi : NSObject <Ui>

@property (nonatomic, strong) id<Output> output;

- (id) init:(id<Output>)output;

- (void) welcomeUser;

- (void) promptGoodBye;

- (void) promptMove;

@end
