//  PROGRAMMER: Alex Lorenzo

//  PANTHERID: 2062033

//  CLASS: COP4655

//  INSTRUCTOR: Steve Luis

//  ASSIGNMENT: HW3

//  DUE: Sept 10

@interface GameBoard : NSObject

@property NSMutableArray *pieces;

-(NSString*) update: (NSString*) oldState at:(int)index;
-(void) initialize;


@end
