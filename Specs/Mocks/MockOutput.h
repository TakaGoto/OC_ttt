//
//  MockOutput.m
//  OCTicTacToe
//
//  Created by Takayuki on 11/12/13.
//
//

#import "Output.h"

@interface MockOutput : NSObject <Output>

@property (nonatomic) NSString* text;

- (void) write:(NSString*)msg;

@end