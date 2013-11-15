#import <Foundation/Foundation.h>
#import "console_ttt/src/ConsoleIO.h"
#import "console_ttt/src/ConsoleUi.h"
#import "Src/Game.h"
#import "Src/BoardLogic.h"

int main(int argc, const char * argv[]) {
  ConsoleIO *io = [[ConsoleIO alloc] init];
  ConsoleUi *ui = [[ConsoleUi alloc] init:io];
  Game *game = [[Game alloc] initWithUi:ui];

  @autoreleasepool {
    [game play];
  }
  return 0;
}


