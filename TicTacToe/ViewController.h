//  PROGRAMMER: Alex Lorenzo

//  PANTHERID: 2062033

//  CLASS: COP4655

//  INSTRUCTOR: Steve Luis

//  ASSIGNMENT: HW3

//  DUE: Sept 10

#import <UIKit/UIKit.h>
#import "GameBoard.h"

@interface ViewController : UIViewController

//a collection of buttons that we can change the state of
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *uiButtons;

@property GameBoard *board ;

//whenever any button is pressed gets executed
- (IBAction)buttonPressed:(id)sender;

- (IBAction)pressedReset:(id)sender;



@end

