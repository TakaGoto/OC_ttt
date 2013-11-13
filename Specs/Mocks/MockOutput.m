//
//  MockOutput.m
//  OCTicTacToe
//
//  Created by Takayuki on 11/12/13.
//
//

#import "MockOutput.h"

@implementation MockOutput

@synthesize text;

- (void) write:(NSString *)msg {
    self.text = msg;
}

@end
