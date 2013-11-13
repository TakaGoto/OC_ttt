//
//  ComputerPlayer.h
//  OCTicTacToe
//
//  Created by Takayuki on 11/12/13.
//
//

#import "Player.h"

@interface ComputerPlayer : NSObject <Player>

@property (nonatomic) NSString* mark;

- (id) init:(NSString*)m;

- (NSArray*) makeMoveWith:(NSString*)board andMove:(NSString*)move;

@end