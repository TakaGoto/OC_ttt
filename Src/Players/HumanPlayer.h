#import "Player.h"

@interface HumanPlayer : NSObject <Player>

@property (nonatomic, strong) NSString* mark;

- (id) init:(NSString*)m;

- (NSArray*) makeMoveWith:(NSString*)board andMove:(NSString*)move;

@end
