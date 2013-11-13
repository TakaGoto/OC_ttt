#import "ConsoleOutput.h"
#import "stdio.h"

@implementation ConsoleOutput

@synthesize text;

- (void) write:(NSString *)msg {
    NSLog(@"%@", msg);
}

- (NSString*) readLine {
    char buf[80];
    fgets(buf, 80, stdin);
    NSString *userInput = [NSString stringWithUTF8String:buf];
    return userInput;
}

@end
