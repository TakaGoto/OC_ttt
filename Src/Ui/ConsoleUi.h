//
//  ConsoleUi.h
//  OCTicTacToe
//
//  Created by Takayuki on 11/12/13.
//
//

#import <Foundation/Foundation.h>
#import "Output.h"

@interface ConsoleUi : NSObject

@property (nonatomic) id<Output> output;

- (id) init:(id<Output>)output;

- (void) welcomeUser;

- (void) promptGoodBye;

- (void) promptMove;

@end
