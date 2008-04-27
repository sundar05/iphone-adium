//
//  MobileAdiumAppDelegate.h
//  MobileAdium
//
//  Created by Ngan Pham on 4/24/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ApplicationController;

@interface MobileAdiumAppDelegate : NSObject <UIApplicationDelegate> {
	IBOutlet UIWindow *window;
  IBOutlet ApplicationController *applicationController;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) ApplicationController *applicationController;

- (void)applicationDidFinishLaunching:(UIApplication *)application;
- (void)applicationWillTerminate:(UIApplication *)application;
- (void)dealloc;

@end

