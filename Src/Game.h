#import <Foundation/Foundation.h>
#import "Ui/Ui.h"

@interface Game : NSObject

@property (nonatomic, strong) id<Ui> ui;

- (id) initWithUi:(id<Ui>)ui;

- (void) startGame;

@end
