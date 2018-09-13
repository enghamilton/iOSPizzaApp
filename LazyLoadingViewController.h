#import <UIkit/UIkit.h> 
#import "HomeModel.h"
#import "DBManager.h"

// Interface for class ViewController
@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, HomeModelProtocol>
{
	IBOutlet UITableView *listTableView;
	IBOutlet UIButton *refreshPHPmySQLJson;
}

@property (weak, nonatomic) IBOutlet UITableView *listTableView;

-(IBAction) refreshPHPmySQLJson : (id) sender;
@end