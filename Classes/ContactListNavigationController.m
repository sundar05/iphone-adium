//
//  ContactListNavigationController.m
//  Adium
//
//  Created by Ngan Pham on 4/22/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "ContactListNavigationController.h"
#import "ContactListController.h"


@implementation ContactListNavigationController

@synthesize contactListController;

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
	contactListController = [[[ContactListController alloc] init] autorelease];
	[self pushViewController:contactListController animated:NO];
}

- (void)dealloc
{
	[super dealloc];
}


@end
