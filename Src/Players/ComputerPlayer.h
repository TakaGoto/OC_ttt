#import "Player.h"

@interface ComputerPlayer : NSObject <Player>

@property (nonatomic, strong) NSString* mark;

- (id) init:(NSString*)m;

- (NSMutableArray*) makeMoveWith:(Board*)board andUi:(id<Ui>)ui;

@end
