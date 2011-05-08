//
//  SwipeGestureController.h
//  GestureSamples
//
//  Created by Navarro on 5/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SwipeGestureController : UIViewController {
    
}

//IBOutlet
@property (nonatomic,retain) IBOutlet UIImageView * view_image_display;

//Properties
@property (nonatomic,retain) NSMutableArray * array_images;
@property (nonatomic) NSInteger array_image_index;

//Custom Methods
-(void)loadImages;
-(void)loadGestures;
-(void)swipePicture:(UISwipeGestureRecognizer *)sender;
-(UIImage *)getCurrentDisplayImage:(NSInteger)index;

@end
