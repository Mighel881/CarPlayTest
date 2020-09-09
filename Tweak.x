@interface _MCDNowPlayingViewController : UIViewController

@end

@interface MCDNowPlayingViewController : UIViewController

@property (nonatomic,retain) _MCDNowPlayingViewController * nowPlayingViewController;

@end

%hook MCDNowPlayingViewController

- (void)viewDidLoad {
    %orig;
    
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(0,0,300,300)];
    [greenView setBackgroundColor:[UIColor greenColor]];
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(300,0,300,300)];
    [redView setBackgroundColor:[UIColor redColor]];
    
    [self.view addSubview:greenView];
    [self.nowPlayingViewController.view addSubview:redView];
}

%end
