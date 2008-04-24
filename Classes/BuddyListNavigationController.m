//
//  BuddyListNavigationController.m
//  Adium
//
//  Created by Ngan Pham on 4/22/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "BuddyListNavigationController.h"
#import "BuddyListController.h"


@implementation BuddyListNavigationController

@synthesize buddyListController;

- (id)init
{
	if (self = [super init]) {
		// Initialize your view controller.
		[self initializeRootController];
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

- (void)initializeRootController
{
	buddyListController = [[[BuddyListController alloc] init] autorelease];
	[self pushViewController:buddyListController animated:NO];
}

- (void)dealloc
{
	[super dealloc];
}


@end
