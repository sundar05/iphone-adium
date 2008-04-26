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
#import "SQLite3Database.h"

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
		[self initializeNavigationControllers];
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

- (void)initializeDatabase {
  NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
  NSString *documentsDirectory = [paths objectAtIndex:0];
  if (!documentsDirectory) {
    NSLog(@"Documents directory not found.");
    return;
  } else {
    NSLog(@"Documents directory found: %@", documentsDirectory);
  }
  
  NSString *applicationDatabasePath = [documentsDirectory stringByAppendingPathComponent:@"data.db"];
  NSLog(@"Application database path: %@", applicationDatabasePath);
  
  SQLite3Database *applicationDatabase = [SQLite3Database databaseWithPath:applicationDatabasePath];
  if (![applicationDatabase open]) {
    NSLog(@"Could not open application database.");
    return;
  }
  // create a bad statement, just to test the error code.
  int err = [applicationDatabase executeUpdate:@"blah blah blah"];
  if (err) {
    NSLog(@"Err %d: %@", [applicationDatabase lastErrorCode], [applicationDatabase lastErrorMessage]);
  }
}

- (void)initializeNavigationControllers {
  NSLog(@"Initializing navigation controllers.");

	// initialize core controllers
	accountsNavigationController = [[[AccountsNavigationController alloc] init] autorelease];
	contactListNavigationController = [[[ContactListNavigationController alloc] init] autorelease];
	//profileNavigationController = [[[ProfileNavigationController alloc] init] autorelease];
	//settingsNavigationController = [[[SettingsNavigationController alloc] init] autorelease];

	// assign array to viewControllers
	//self.viewControllers = [NSArray arrayWithObjects:accountsNavigationController, contactListNavigationController, profileNavigationController, settingsNavigationController, nil];
  self.viewControllers = [NSArray arrayWithObjects:accountsNavigationController, contactListNavigationController, nil];
}

- (void)dealloc
{
	[super dealloc];
}


@end
