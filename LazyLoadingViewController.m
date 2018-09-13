#import "ViewController.h"
#import "Location.h"

// Category, an extension of ViewController class
@interface LazyLoadingViewController ()
{
	HomeModel *_homeModel;
	NSArray *_feedItems;
	DBManager *_dbmanager;
}
@end

@implementation LazyLoadingViewController  

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	// Set this view controller object as the delegate and data source for the table view
    self.listTableView.delegate = self;
    self.listTableView.dataSource = self;

    // Create array object and assign it to _feedItems variable
    _feedItems = [[NSArray alloc] init];
	
    // Create new HomeModel object and assign it to _homeModel variable
    _homeModel = [[HomeModel alloc] init];

    // Set this view controller object as the delegate for the home model object
	// I think that here I take the delegate from HomeModelProtocol Dienstag neunzwanzig Mai Jahr zweitausend achtzehn
    _homeModel.delegate = self;
	
	_dbmanager = [[DBManager alloc] init];
	[[DBManager getSharedInstance] createDB];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)itemsDownloaded:(NSArray *)items
{
    // This delegate method will get called when the items are finished downloading

    // Set the downloaded items to the array NSArray
	// with NSArray _feedItems should be used to store in DBManager when no longer need to refresh users from php SQL database
    _feedItems = items;

    // Reload the table view
    [self.listTableView reloadData];
}

//https://www.tutorialspoint.com/ios/ios_actions_and_outlets.htm
// Hamilton writted in Aug "2018" main.storyboard click dragging on refresh button to this area
// of LazyLoadingViewController.m  to IBAction - popup Window select Sent event as Touch Up Inside
-(IBAction)refreshPHPmySQLJson : (id) sender {
	#pragma mark ...
	
	// Call the download items method of the home model object HomeModel.m
	// this is going to be used to populate the table view
    [_homeModel downloadItems];

	[[DBManager getSharedInstance] saveData: userID
	username:
	phone:
	imageUrl: ];
	#pragma mark ...
}

@end