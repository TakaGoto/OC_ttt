#import "Player.h"

@interface ComputerPlayer : NSObject <Player>

@property (nonatomic, strong) NSString* mark;

- (id) init:(NSString*)m;

- (NSArray*) makeMoveWith:(NSString*)board andMove:(NSString*)move;

@end
