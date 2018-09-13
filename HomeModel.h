#import <Foundation/Foundation.h>
#import "DBManager.h"

@protocol HomeModelProtocol <NSObject>

- (void)itemsDownloaded:(NSArray *)items;

@end

//Donnestag 31 Mai, Jahr 2018
//Hamilton wrote : the class - interface - HomeModel comes from a protocol, so the same HomeModelProtocol
//is wrote at line 4 and inside id<> delegate
// so when instanciate the HomeModel in LazyLoadingViewController it delegate the method itemsDownloaded
//in the viewDidLoad controller, soon the app goes screen viewDidLoad it will call the class HomeModel
//to take the json nodes for populating the UITableView cellForRowAtIndexPath
@interface HomeModel : NSObject <NSURLConnectionDataDelegate>

@property (nonatomic, weak) id<HomeModelProtocol> delegate;

- (void)downloadItems;

@end