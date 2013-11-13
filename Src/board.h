#import <Foundation/Foundation.h>

@interface Board : NSObject

@property (nonatomic, strong) NSMutableArray *slots;

- (id) init:(int)size;

- (void) createBoard:(int)size;

- (void) replaceSlot:(int)index withMark:(NSString*)mark;

@end
