//
//  Output.m
//  OCTicTacToe
//
//  Created by Takayuki on 11/12/13.
//
//

#import "Output.h"

@interface ConsoleOutput : NSObject <Output>

- (void) write:(NSString *)msg;

@end
