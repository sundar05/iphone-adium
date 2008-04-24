//
//  ProfileNavigationController.m
//  Adium
//
//  Created by Ngan Pham on 4/23/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "ProfileNavigationController.h"


@implementation ProfileNavigationController

- (id)init
{
	if (self = [super init]) {
		// Initialize your view controller.
		self.title = @"ProfileNavigationController";
	}
	return self;
}


- (void)loadView
{
	// Create a custom view hierarchy.
	UIView *view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
	view.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
	self.view = view;
	[view release];
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
