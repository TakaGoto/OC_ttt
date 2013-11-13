#import <OCDSpec2/OCDSpec2.h>
#import "Game.h"
#import "ConsoleIO.h"
#import "ConsoleUi.h"

int main(int argc, const char * argv[])
{
    ConsoleOutput *output = [[ConsoleOutput alloc] init];
    ConsoleUi *ui = [[ConsoleUi alloc] init:output];
    Game *game = [[Game alloc] initWithUi:ui];
    
    @autoreleasepool {
        [game startGame];
        
        exit(OCDSpec2RunAllTests());
    }
    return 0;
}

