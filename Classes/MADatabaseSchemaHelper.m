//
//  MADatabaseSchemaHelper.m
//  MobileAdium
//
//  Created by Ngan Pham on 4/26/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "MADatabaseSchemaHelper.h"

@implementation MADatabaseSchemaHelper

+ schemaFor:(int)tableNameConstant {
  NSString *schema;
  switch (tableNameConstant) {
    case MA_DATABASE_SCHEMA_HELPER_SERVICES:
      schema = @"CREATE TABLE services (id INTEGER PRIMARY KEY NOT NULL, name TEXT NOT NULL)";
      break;
    default:
      schema = @"";
      break;
  }
  return schema;
}

@end
