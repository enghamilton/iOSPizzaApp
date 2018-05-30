// Header File that provides all UI related items. 
#import <UIKit/UIKit.h> 

 // Forward declaration (Used when class will be defined /imported in future)
@class ViewController;  

 // Interface for Appdelegate
@interface AppDelegate : UIResponder <UIApplicationDelegate>

// Property window 
@property (strong, nonatomic) UIWindow *window; 

 // Property Viewcontroller

 @property (strong, nonatomic) ViewController *viewController;
//this marks end of interface 
@end  

/*
Important items in code −

AppDelegate inherits from UIResponder that handles iOS events.


Implements the delegate methods of UIApplicationDelegate, which provides key application events like finished launching, about to terminate and so on.


UIWindow object to manage and co-ordinate the various views on the iOS device screen. It's like the base view over which all other views are loaded. Generally there is only one window for an application.


UIViewController to handle the screen flow.


*/