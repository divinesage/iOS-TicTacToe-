//  PROGRAMMER: Alex Lorenzo

//  PANTHERID: 2062033

//  CLASS: COP4655

//  INSTRUCTOR: Steve Luis

//  ASSIGNMENT: HW3

//  DUE: Sept 10
#import <Foundation/Foundation.h>
#import "GameBoard.h"

@implementation GameBoard

@synthesize pieces;

-(NSString*) update: (NSString*) oldState at:(int)index{
    
    NSString *newState;
    char oldStateChar = [oldState characterAtIndex:0];
    
    switch (oldStateChar) {
        case 'X':
            newState = @"O";
            break;
        case 'O':
            newState = @" ";
            break;
        case ' ':
            newState = @"X";
            break;
        default:
            break;
    }
    
    
    [pieces replaceObjectAtIndex:index withObject:newState];
    return newState;
}


- (void)initialize
{
    pieces = [[NSMutableArray alloc] init];
    for (NSInteger i = 0; i < 9; ++i)
    {
        [pieces addObject:@" "];
    }
}
@end