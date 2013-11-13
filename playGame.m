#import <Foundation/Foundation.h>
#include <stdlib.h>
#import "Src/Game.h"
#import "Src/Ui/ConsoleUi.h"
#import "Src/Ui/ConsoleOutput.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    ConsoleOutput *output;
    ConsoleUi *ui;
    Game *game = [[Game alloc] initWithUi:ui];
    NSLog(@"Hello World!");
  }
  return 0;
}

