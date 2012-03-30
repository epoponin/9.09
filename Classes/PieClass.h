//
//  PieClass.h
//  PieChart
//
//  Created by Reetu Raj on 17/05/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PieClass : UIView {
 
    NSArray* itemArray;
    NSArray* myColorArray; 
    int radius;

}
@property(nonatomic,retain)NSArray* itemArray;
@property(nonatomic,retain)NSArray* myColorArray;
@property(nonatomic,assign) int radius;


@end
