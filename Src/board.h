//
//  Board.h
//  OCTicTacToe
//
//  Created by Takayuki on 11/12/13.
//
//

#import <Foundation/Foundation.h>

@interface Board : NSObject

@property (nonatomic) NSMutableArray *slots;

- (id) init:(int)size;

- (void) createBoard:(int)size;

- (void) replaceSlot:(int)index withMark:(NSString*)mark;

@end

#ifndef OCTicTacToe_Board_h
#define OCTicTacToe_Board_h



#endif
