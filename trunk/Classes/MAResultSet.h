//
//  MAResultSet.h
//  MobileAdium
//
//  Created by Ngan Pham on 4/24/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "sqlite3.h"

@class MADatabase;

@interface MAResultSet : NSObject {
  MADatabase *parentDB;
  sqlite3_stmt *pStmt;
  NSString *query;
  NSMutableDictionary *columnNameToIndexMap;
  BOOL columnNamesSetup;
}

+ (id) resultSetWithStatement:(sqlite3_stmt *)stmt usingParentDatabase:(MADatabase *)aDB;

- (void) close;

- (NSString *)query;
- (void)setQuery:(NSString *)value;

- (void)setPStmt:(sqlite3_stmt *)newsqlite3_stmt;
- (void)setParentDB:(MADatabase *)newDb;

- (BOOL) next;

- (int) intForColumn:(NSString *)columnName;
- (int) intForColumnIndex:(int)columnIdx;

- (long) longForColumn:(NSString *)columnName;
- (long) longForColumnIndex:(int)columnIdx;

- (BOOL) boolForColumn:(NSString *)columnName;
- (BOOL) boolForColumnIndex:(int)columnIdx;

- (double) doubleForColumn:(NSString *)columnName;
- (double) doubleForColumnIndex:(int)columnIdx;

- (NSString *) stringForColumn:(NSString *)columnName;
- (NSString *) stringForColumnIndex:(int)columnIdx;

- (NSDate *) dateForColumn:(NSString *)columnName;
- (NSDate *) dateForColumnIndex:(int)columnIdx;

- (NSData *) dataForColumn:(NSString *)columnName;
- (NSData *) dataForColumnIndex:(int)columnIdx;

- (void) kvcMagic:(id)object;

@end
