#import <Foundation/Foundation.h>
#import "../Src/Ui/ConsoleIO.h"
#import "../Src/Ui/ConsoleUi.h"
#import "../Src/Game.h"

int main(int argc, const char * argv[]) {
  ConsoleIO *io = [[ConsoleIO alloc] init];
  ConsoleUi *ui = [[ConsoleUi alloc] init:io];
  Game *game = [[Game alloc] initWithUi:ui];
  @autoreleasepool {
    [game startGame];
    [game playGame];
  }
  return 0;
}


