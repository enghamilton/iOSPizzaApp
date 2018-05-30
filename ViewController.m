#import "ViewController.h"

//http://aaronparecki.com/articles/2011/01/21/1/how-to-distribute-your-ios-apps-over-the-air

// Category, an extension of ViewController class
@interface ViewController ()

@end

@implementation ViewController  

- (void)viewDidLoad
{
   [super viewDidLoad];
   // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
   [super didReceiveMemoryWarning];
   // Dispose of any resources that can be recreated.
}

@end


/*
Important items in code −

Two methods implemented here are defined in the base class UIViewController.


Do initial setup in viewDidLoad which is called after the view loads.


didReceiveMemoryWarning method is called in case of memory warning.


*/