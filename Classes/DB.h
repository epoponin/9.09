//
//  DB.h
//  Calc
//
//  Created by Eugene Poponin on 18.06.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "/usr/include/sqlite3.h"

@interface DB : NSObject {
	sqlite3 *db;
	NSString *databasePath;
	NSString *status;
}

-(void)initDatabase;
-(void)saveSum:(float)sum forCategory: (int)category;
-(void)clear;

-(NSMutableArray *)fetchStats;
@end
