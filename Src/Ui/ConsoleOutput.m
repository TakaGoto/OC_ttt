//
//  ConsoleOutput.m
//  OCTicTacToe
//
//  Created by Takayuki on 11/12/13.
//
//

#import "ConsoleOutput.h"

@implementation ConsoleOutput

@synthesize text;

- (void) write:(NSString *)msg {
    NSLog(@"%@", msg);
}

@end
