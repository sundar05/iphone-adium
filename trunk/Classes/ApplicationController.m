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
#import "MADatabase.h"
#import "MADatabaseSchemaHelper.h"

#define APPLICATION_DATABASE_FILENAME @"Library_MobileAdium_mobile_adium.db"

@implementation ApplicationController

static NSString *documentsDirectory;
static MADatabase *applicationDatabase;
static BOOL initializing;

@synthesize accountsNavigationController;
@synthesize contactListNavigationController;
@synthesize profileNavigationController;
@synthesize settingsNavigationController;

- (id)init
{
	if (self = [super init]) {
		// Initialize the application controller.
    initializing = YES;
    [self initializeCore];
    [self initializeApplicationDatabase];
    [self verifyApplicationDatabaseIntegrity];
		[self initializeNavigationControllers];
    initializing = NO;
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

- (void)initializeCore {
  // resolve documents directory
  NSArray *domainPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
  documentsDirectory = [domainPaths objectAtIndex:0];
  if (!documentsDirectory) {
    NSLog(@"Documents directory not found.");
    return;
  } else {
    NSLog(@"Documents directory found: %@", documentsDirectory);
  }
}

- (void)initializeApplicationDatabase {  
  // build the application database path
  /*
  NSString *applicationDatabasePath = [documentsDirectory stringByAppendingPathComponent:APPLICATION_DATABASE_FILENAME];
  NSLog(@"Application database path: %@", applicationDatabasePath);
  
  // instantiate the application database
  applicationDatabase = [MADatabase databaseWithPath:applicationDatabasePath];
  if (![applicationDatabase open]) {
    NSLog(@"Could not open application database.");
    return;
  }
  */
}

- (void)verifyApplicationDatabaseIntegrity {
  /*
  [applicationDatabase executeUpdate:[MADatabaseSchemaHelper schemaFor:MA_DATABASE_SCHEMA_HELPER_SERVICES]];
  MAResultSet *rs = [applicationDatabase executeQuery:@"SELECT name FROM sqlite_master WHERE type = 'table'"];
  NSLog(@"Looking for tables...");
  while ([rs next]) {
    NSLog(@"Table: %@", [rs stringForColumn:@"name"]);
  }
  [rs close];
  */
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

+ (MADatabase *)applicationDatabase {
  return applicationDatabase;
}
+ (BOOL)initializing {
  return initializing;
}

@end
