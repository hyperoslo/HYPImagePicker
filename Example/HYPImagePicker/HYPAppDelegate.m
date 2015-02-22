#import "HYPAppDelegate.h"
#import "HYPViewController.h"

@implementation HYPAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    HYPViewController *controller = [[HYPViewController alloc] init];

    self.window.rootViewController = controller;

    [self.window makeKeyAndVisible];

    return YES;
}

@end
