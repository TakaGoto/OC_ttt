#import "ConsoleIO.h"
#import "stdio.h"

@implementation ConsoleIO

@synthesize text;

- (void) write:(NSString *)msg {
    NSLog(@"%@", msg);
}

- (NSString*) readLine:(NSString*)input {
    char buf[1];
    gets(buf);
    NSString *userInput = [NSString stringWithUTF8String:buf];
    return userInput;
}

@end
