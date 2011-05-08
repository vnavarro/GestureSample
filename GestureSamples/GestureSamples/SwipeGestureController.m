//
//  SwipeGestureController.m
//  GestureSamples
//
//  Created by Navarro on 5/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SwipeGestureController.h"


@implementation SwipeGestureController

@synthesize view_image_display = _view_image_display;
@synthesize array_images = _array_images;
@synthesize array_image_index = _array_image_index;


-(UIImage *)getCurrentDisplayImage:(NSInteger)index{
    return [self.array_images objectAtIndex:index];
}

-(void)swipePicture:(UISwipeGestureRecognizer *)sender{
    if (sender.direction == UISwipeGestureRecognizerDirectionLeft) {
        if(self.array_image_index < [self.array_images count]-1){
            self.array_image_index = self.array_image_index + 1;
            [self.view_image_display setImage:[self getCurrentDisplayImage:self.array_image_index]];
        }
        NSLog(@"swipe left");
    }
    else if(sender.direction == UISwipeGestureRecognizerDirectionRight){
        if(self.array_image_index > 0){
            self.array_image_index = self.array_image_index -1;
            [self.view_image_display setImage:[self getCurrentDisplayImage:self.array_image_index]];
        }
        NSLog(@"swipe right");
    }
}



#pragma mark - Load methods

-(void)loadImages{
    self.array_images = [[NSMutableArray alloc]initWithCapacity:6];
    [self.array_images addObject:[UIImage imageNamed:@"desenhos_vi_marcelo301.jpg"]];
    [self.array_images addObject:[UIImage imageNamed:@"desenhos_vi_marcelo302.jpg"]];
    [self.array_images addObject:[UIImage imageNamed:@"desenhos_vi_marcelo303.jpg"]];
    [self.array_images addObject:[UIImage imageNamed:@"desenhos_vi_marcelo304.jpg"]];
    [self.array_images addObject:[UIImage imageNamed:@"desenhos_vi_marcelo305.jpg"]];
    [self.array_images addObject:[UIImage imageNamed:@"img003.jpg"]];
    self.array_image_index = 0;
}

-(void)loadGestures{
    UISwipeGestureRecognizer *swipe_recognizer_left = [[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipePicture:)]autorelease];
    swipe_recognizer_left.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipe_recognizer_left];
    
    UISwipeGestureRecognizer *swipe_recognizer_right = [[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipePicture:)]autorelease];
    swipe_recognizer_right.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swipe_recognizer_right];
}

#pragma mark - View lifecycle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [self loadImages];
    [self loadGestures];
    
    [self.view_image_display setImage:[self getCurrentDisplayImage:0]];
    
    [super viewDidLoad];
}
 

- (void)dealloc
{
    [_view_image_display release];
    
    [_array_images release];
    //[_array_image_index release];
    
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload
{
    self.view_image_display = nil;
    
    self.array_images = nil;
    //self.array_image_index = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
