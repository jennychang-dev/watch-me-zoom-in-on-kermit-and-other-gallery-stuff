//
//  ViewController.m
//  ScrollViewImageGalleries
//
//  Created by Jenny Chang on 21/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "ViewController.h"
#import "DetailedViewController.h"

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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    /// gesture is OBVIOUSLY ATTACHED TO A BLOODY VIEWWWW!!!!
    /// as sender is an id, it doesn't recognise that it's an image view so we need to specify that it's an imageview
    
    DetailedViewController *deeeeet = segue.destinationViewController;
    
    UIImageView *myImageView = sender;
    UIImage *myImage = myImageView.image;
    deeeeet.zoomImage = myImage;
    
}

- (IBAction)imageTapped:(UITapGestureRecognizer *)sender {
    [self performSegueWithIdentifier:@"segueMe" sender:sender.view];
}

- (IBAction)image2:(UITapGestureRecognizer *)sender {
    [self performSegueWithIdentifier:@"segueMe"
                              sender:sender.view];
}

- (IBAction)image3tapped:(UITapGestureRecognizer *)sender {
    [self performSegueWithIdentifier:@"segueMe" sender:sender.view];
}



@end
