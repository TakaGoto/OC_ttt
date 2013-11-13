#import "Game.h"

@implementation Game

- (id) initWithUi:(id)ui {
    if ((self = [super init])) {
        self.ui = ui;
    }
    return (self);
}

- (void) startGame {
    [[self ui] welcomeUser];
    [[self ui] promptMove];
}

@end
