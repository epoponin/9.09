//
//  DB.m
//  Calc
//
//  Created by Eugene Poponin on 18.06.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DB.h"


@implementation DB

-(void)initDatabase{
	NSString *docsDir;
	NSArray *dirPaths;
	
	// Get the documents directory
	dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	
	docsDir = [dirPaths objectAtIndex:0];
	
	// Build the path to the database file
	databasePath = [[NSString alloc] initWithString: [docsDir stringByAppendingPathComponent: @"calc.db"]];
	
	NSFileManager *filemgr = [NSFileManager defaultManager];
	
	if ([filemgr fileExistsAtPath: databasePath ] == NO)
	{
		const char *dbpath = [databasePath UTF8String];
		
		if (sqlite3_open(dbpath, &db) == SQLITE_OK)
		{
			char *errMsg;
			const char *sql_stmt = "CREATE TABLE IF NOT EXISTS STATS (ID INTEGER PRIMARY KEY AUTOINCREMENT, SUM FLOAT, CATEGORY INTEGER, DATE DATETIME)";
			
			if (sqlite3_exec(db, sql_stmt, NULL, NULL, &errMsg) != SQLITE_OK)
			{
				status = @"Failed to create table";
			}
			
			sqlite3_close(db);
			
		} else {
			status = @"Failed to open/create database";
		}
	}
	
	[filemgr release];
}

-(void)saveSum:(float)sum forCategory: (int)category {
	sqlite3_stmt    *statement;
	
	const char *dbpath = [databasePath UTF8String];
	
	if (sqlite3_open(dbpath, &db) == SQLITE_OK)
	{
		NSString *insertSQL = [NSString stringWithFormat: @"INSERT INTO STATS (SUM, CATEGORY, DATE) VALUES (%.2f, %d, datetime('now'))", sum, category];
		
		const char *insert_stmt = [insertSQL UTF8String];
		
		if(sqlite3_prepare_v2(db, insert_stmt, -1, &statement, NULL) == SQLITE_OK){
			status = @"Prepared";
		}
		
		if (sqlite3_step(statement) == SQLITE_DONE)
		{
			status = @"Saved";
		} else {
			status = @"Fail";
			
		}
		sqlite3_finalize(statement);
		sqlite3_close(db);
	}		
}

-(NSMutableArray *)fetchStats {
	const char *dbpath = [databasePath UTF8String];
	sqlite3_stmt    *statement;
	
	NSMutableArray *result = [[NSMutableArray alloc] init];
	for(int i=0; i<5; i++){
		[result addObject:[NSNumber numberWithFloat:0.00f]];
	}
	
	if (sqlite3_open(dbpath, &db) == SQLITE_OK)
	{
		NSString *querySQL = [NSString stringWithFormat: @"SELECT SUM(SUM), category FROM stats WHERE DATE > date('now','start of month','-1 month') GROUP BY category ORDER BY category"];
		
		const char *query_stmt = [querySQL UTF8String];
		
		if (sqlite3_prepare_v2(db, query_stmt, -1, &statement, NULL) == SQLITE_OK)
		{
			while (sqlite3_step(statement) == SQLITE_ROW) {
				[result replaceObjectAtIndex:(int)sqlite3_column_int(statement, 1) withObject: [NSNumber numberWithDouble:sqlite3_column_double(statement, 0)]];
			} 
			
			sqlite3_finalize(statement);
		}
		
		sqlite3_close(db);
	}
	
	return result;
}


-(void)clear {
	const char *dbpath = [databasePath UTF8String];
	sqlite3_stmt    *statement;
	
	if (sqlite3_open(dbpath, &db) == SQLITE_OK)
	{
		NSString *querySQL = [NSString stringWithFormat: @"DELETE FROM stats"];
		
		const char *query_stmt = [querySQL UTF8String];
		if (sqlite3_prepare_v2(db, query_stmt, -1, &statement, NULL) == SQLITE_OK){
			sqlite3_step(statement);
			sqlite3_finalize(statement);
		}
		
		sqlite3_close(db);
	}

}

@end
