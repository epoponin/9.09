//
//  stats.h
//  Calc
//
//  Created by Eugene Poponin on 16.06.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <CoreData/CoreData.h>


@interface stats :  NSManagedObject  
{
}

@property (nonatomic, retain) NSNumber * sum;
@property (nonatomic, retain) NSNumber * category;

@end



