//  PROGRAMMER: Alex Lorenzo

//  PANTHERID: 2062033

//  CLASS: COP4655

//  INSTRUCTOR: Steve Luis

//  ASSIGNMENT: HW3

//  DUE: Sept 10

#import "ViewController.h"
#import "GameBoard.h"

@interface ViewController ()


@end

@implementation ViewController

@synthesize board ;
@synthesize uiButtons;
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view, typically from a nib.
//    board = [[GameBoard alloc]init];
//    [board initialize];
//    
//    for (int i=0; i<[uiButtons count]; i++) {
//        [[uiButtons objectAtIndex:i] setTitle:@" " forState:UIControlStateNormal];
//    }
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//if any button was pressed this executes
- (IBAction)buttonPressed:(id)sender
{
    //contains the tag of button pressed
    int tag = (int)[sender tag];

            //retrieve button and from that get string
            NSString *value = [[[uiButtons objectAtIndex:tag] titleLabel] text];
    
            //new value has the new state of button
            NSString *newValue = [board update:value at: tag];
            
            [[uiButtons objectAtIndex:tag] setTitle: newValue forState:UIControlStateNormal];
    
       
    
}

- (IBAction)pressedReset:(id)sender {

    
    for (int i=0; i<[uiButtons count]; i++) {
        [[uiButtons objectAtIndex:i] setTitle:@" " forState:UIControlStateNormal];
    }
    [board initialize];
  

    
    
}

@end
