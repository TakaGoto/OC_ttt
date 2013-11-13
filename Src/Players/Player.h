#import <Foundation/Foundation.h>

@protocol Player

@property (nonatomic, strong) NSString* mark;

- (id) init:(NSString*)mark;

- (NSArray*) makeMoveWith:(NSString*)board andMove:(NSString*)move;

@end
