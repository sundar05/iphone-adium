//
//  ApplicationController.m
//  Adium
//
//  Created by Ngan Pham on 4/17/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "ApplicationController.h"
#import "ContactListNavigationController.h"
#import "AccountsNavigationController.h"
#import "ProfileNavigationController.h"
#import "SettingsNavigationController.h"

@implementation ApplicationController

@synthesize accountsNavigationController;
@synthesize contactListNavigationController;
@synthesize profileNavigationController;
@synthesize settingsNavigationController;

- (id)init
{
	if (self = [super init]) {
		// Initialize your application controller.
		self.title = @"ApplicationController";
    [self initializeDatabase];
		[self initializeCoreControllers];
	}
	return self;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview.
	// Release anything that's not essential, such as cached data.
}

- (void)initializeCoreControllers {
	// initialize core controllers
	accountsNavigationController = [[[AccountsNavigationController alloc] init] autorelease];
	contactListNavigationController = [[[ContactListNavigationController alloc] init] autorelease];
	//profileNavigationController = [[[ProfileNavigationController alloc] init] autorelease];
	//settingsNavigationController = [[[SettingsNavigationController alloc] init] autorelease];

	// assign array to viewControllers
	//self.viewControllers = [NSArray arrayWithObjects:accountsNavigationController, contactListNavigationController, profileNavigationController, settingsNavigationController, nil];
  self.viewControllers = [NSArray arrayWithObjects:accountsNavigationController, contactListNavigationController, nil];
}

- (void)initializeDatabase {
}

- (void)dealloc
{
	[super dealloc];
}


@end
