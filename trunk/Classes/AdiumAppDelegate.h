//
//  AdiumAppDelegate.h
//  Adium
//
//  Created by Ngan Pham on 4/17/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ApplicationController;

@interface AdiumAppDelegate : NSObject {
	IBOutlet UIWindow *window;
  IBOutlet ApplicationController *applicationController;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) ApplicationController *applicationController;

@end

