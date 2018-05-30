// Imports the class Appdelegate's interface
import "AppDelegate.h" 

// Imports the viewcontroller to be loaded
#import "ViewController.h" 

// Class definition starts here
@implementation AppDelegate 


// Method to intimate us that the application launched successfully
- (BOOL)application:(UIApplication *)application 
 didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
   self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
   
   // Override point for customization after application launch.
   self.viewController = [[ViewController alloc]
   initWithNibName:@"ViewController" bundle:nil];
   self.window.rootViewController = self.viewController;
   [self.window makeKeyAndVisible];
   return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
   /* Use this method to release shared resources, save user data,
   invalidate timers, and store enough application state information
   to restore your application to its current state in case it is 
   terminated later. If your application supports background 
   execution, this method is called instead of
   applicationWillTerminate: when the user quits.*/
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
   /* Called as part of the transition from the background to the 
   inactive state. Here you can undo many of the changes made on 
   entering the background.*/
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
   /* Restart any tasks that were paused (or not yet started) while 
   the application was inactive. If the application was previously in 
   the background, optionally refresh the user interface.*/
}

- (void)applicationWillTerminate:(UIApplication *)application
{
   /* Called when the application is about to terminate. Save data if 
   appropriate. See also applicationDidEnterBackground:. */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
   /* Called when the application is about to terminate. Save data if appropriate.
   See also applicationDidEnterBackground:. */
}

@end


/*
Important items in code −

UIApplication delegates are defined here. All the methods defined above are UI application delegates and contains no user defined methods.


UIWindow object is allocated to hold the application allocated.


UIViewController is allocated as the window's initial view controller.


To make the window visible, makeKeyAndVisible method is called.


*/