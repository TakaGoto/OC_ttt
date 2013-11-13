//
//  MockOutput.h
//  OCTicTacToe
//
//  Created by Takayuki on 11/12/13.
//
//

#import <Foundation/Foundation.h>

@protocol Output

@property (nonatomic) NSString* text;

- (void) write:(NSString*)msg;

@end