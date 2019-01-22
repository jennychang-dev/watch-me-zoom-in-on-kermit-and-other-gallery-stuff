//
//  ViewController.m
//  ScrollViewImageGalleries
//
//  Created by Jenny Chang on 21/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *lighthouseField;
@property (weak, nonatomic) IBOutlet UIImageView *lighthouseDay;
@property (weak, nonatomic) IBOutlet UIImageView *ligthouseNight;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollView.delegate = self;
}

// my frame should equal three widths added together and the height of each image
// set constraints of images

@end
