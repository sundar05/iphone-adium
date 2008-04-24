//
//  AdiumAppDelegate.m
//  Adium
//
//  Created by Ngan Pham on 4/17/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import "AdiumAppDelegate.h"
#import "ApplicationController.h"

@implementation AdiumAppDelegate

@synthesize window;
@synthesize applicationController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
  // instantiate the window
  window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  [window setBackgroundColor:[UIColor whiteColor]];
	
  // instantiate the application controller
  applicationController = [[ApplicationController alloc] init];
	
  // set up the application controller
  applicationController = [[ApplicationController alloc] init];
	
  // add the application controller's view to the window and make it visible
  [window addSubview:applicationController.view];
	[window makeKeyAndVisible];
}

- (void)dealloc {
	[applicationController release];
	[window release];
	[super dealloc];
}

@end
