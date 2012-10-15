//
//  popViewController.m
//  PopoverDemo2
//
//  Created by onoT on 2012/10/15.
//  Copyright (c) 2012年 onoT. All rights reserved.
//

#import "popViewController.h"
#import "popTableViewController.h"

@interface popViewController ()

@end

@implementation popViewController

- (IBAction)showpop :(id)sender
{
    // popoverさせたいViewControllerを作る
    popTableViewController *popTableController = [[[popTableViewController alloc] init] autorelease];
    // NavigationControllerも作って、上のViewControllerをRootViewControllerに設定
    UINavigationController *navController = [[[UINavigationController alloc]initWithRootViewController:popTableController]autorelease];
    [navController setNavigationBarHidden:YES];
    
    // ContentViewControllerに上のNavigationControllerを指定して、UIPopoverControllerを作成
    UIPopoverController  *pop = [[UIPopoverController alloc] initWithContentViewController:navController];
    [pop setDelegate:self];
    [pop presentPopoverFromRect:popButton.frame inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
