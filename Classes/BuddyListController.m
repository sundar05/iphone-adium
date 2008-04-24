//
//  BuddyListController.m
//  Adium
//
//  Created by Ngan Pham on 4/22/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "BuddyListController.h"


@implementation BuddyListController

- (id)init
{
	if (self = [super init]) {
		// Initialize your view controller.
		self.title = @"Buddy List";
	}
	return self;
}


- (void)loadView
{
	//UITableView *tableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame] s
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

- (void)dealloc
{
	[super dealloc];
}


@end
