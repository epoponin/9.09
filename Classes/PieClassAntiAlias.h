//
//  PieClassAntiAlias.h
//  PieChart
//
//  Created by Reetu Raj on 17/05/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#define RGB(r, g, b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]

@interface PieClassAntiAlias : UIView {
    
    NSArray* itemArray;
    NSArray* myColorArray; 
    int radius;
    
}
@property(nonatomic,retain)NSArray* itemArray;
@property(nonatomic,retain)NSArray* myColorArray;
@property(nonatomic,assign) int radius;



@end
