//
//  MADatabaseSchemaHelper.h
//  MobileAdium
//
//  Created by Ngan Pham on 4/26/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#define MA_DATABASE_SCHEMA_HELPER_SERVICES 1
#define MA_DATABASE_SCHEMA_HELPER_ACCOUNTS 2

@interface MADatabaseSchemaHelper : NSObject {

}

+ schemaFor:(int)tableNameConstant;
@end
