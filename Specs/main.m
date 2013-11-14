#import <OCDSpec2/OCDSpec2.h>
#import "Game.h"
#import "ConsoleIO.h"
#import "ConsoleUi.h"
#import "MockUi.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        exit(OCDSpec2RunAllTests());
    }
    return 0;
}

