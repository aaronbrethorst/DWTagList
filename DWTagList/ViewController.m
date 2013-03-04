//
//  ViewController.m
//  DWTagList
//
//  Created by Dominic Wroblewski on 07/07/2012.
//  Copyright (c) 2012 Terracoding LTD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)selectedTag:(UIImage *)image{
    
    //UIAlertView *al = [[UIAlertView alloc] initWithTitle:@"Message" message:[NSString stringWithFormat:@"You tapped tag %@",tagName] delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    //[al show];
    [array removeObject:image];
    [tagList setTags:array];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    tagList = [[DWTagList alloc] initWithFrame:CGRectMake(20.0f, 70.0f, 280.0f, 300.0f)];
    array = [[NSMutableArray alloc] initWithObjects:[UIImage imageNamed:@"1.jpeg"],[UIImage imageNamed:@"2.jpeg"],[UIImage imageNamed:@"3.png"], nil];
    [tagList setTags:array];
    [tagList setDelegate:self];
    [self.view addSubview:tagList];
}

- (void)viewDidUnload
{
    [self setTagField:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)addTag:(id)sender {
    
    if (!([self.tagField.text length] == 0)) {
        [array addObject:self.tagField.text];
        [tagList setTags:array];
    }
}
@end
