//
//  SecondViewController.m
//  ScrollViewImageGalleries
//
//  Created by Jenny Chang on 21/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *kerm;



@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.scrollView.delegate = self;
    
    self.scrollView.minimumZoomScale = 0.5;
    self.scrollView.maximumZoomScale = 5000;
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    NSLog(@"zooooom");
    return self.kerm;
}



@end
