//
//  DetailedViewController.m
//  ScrollViewImageGalleries
//
//  Created by Jenny Chang on 21/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "DetailedViewController.h"

@interface DetailedViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *detailedImage;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;


@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.detailedImage.image = self.zoomImage;
    self.scrollView.delegate = self;
    
    self.scrollView.minimumZoomScale = 0.5;
    self.scrollView.maximumZoomScale = 5000;
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.detailedImage;
}


@end
