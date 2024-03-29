//
//  MADatabase.h
//  MobileAdium
//
//  Created by Ngan Pham on 4/24/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>
#import "MAResultSet.h"

@interface MADatabase : NSObject {
	sqlite3 *db;
	NSString *databasePath;
  BOOL logsErrors;
  BOOL crashOnErrors;
  BOOL inUse;
  BOOL inTransaction;
  BOOL traceExecution;
  BOOL checkedOut;
  int busyRetryTimeout;
}

+ (id)databaseWithPath:(NSString *)inPath;
- (id)initWithPath:(NSString *)inPath;

- (BOOL) open;
- (void) close;
#ifdef I_HAS_SQLITE_ENCRYPTIONZ
- (BOOL) setKey:(NSString *)key;
- (BOOL) rekey:(NSString *)key;
#endif
- (BOOL) goodConnection;

- (NSString *) lastErrorMessage;
- (int) lastErrorCode;
- (BOOL) hadError;
- (sqlite_int64) lastInsertRowId;

- (sqlite3 *) sqliteHandle;

- (BOOL) executeUpdate:(NSString *)objs, ...;
- (id) executeQuery:(NSString *)obj, ...;

- (BOOL) rollback;
- (BOOL) commit;
- (BOOL) beginTransaction;
- (BOOL) beginDeferredTransaction;

- (BOOL)logsErrors;
- (void)setLogsErrors:(BOOL)flag;

- (BOOL)crashOnErrors;
- (void)setCrashOnErrors:(BOOL)flag;

- (BOOL)inUse;
- (void)setInUse:(BOOL)flag;

- (BOOL)inTransaction;
- (void)setInTransaction:(BOOL)flag;

- (BOOL)traceExecution;
- (void)setTraceExecution:(BOOL)flag;

- (BOOL)checkedOut;
- (void)setCheckedOut:(BOOL)flag;

- (int)busyRetryTimeout;
- (void)setBusyRetryTimeout:(int)newBusyRetryTimeout;

+ (NSString *) sqliteLibVersion;

@end
