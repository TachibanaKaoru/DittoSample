//
//  ViewController.m
//  Ditto
//
//  Created by Tachibana Kaoru on 2014/05/07.
//  Copyright (c) 2014 Toyship.org. All rights reserved.
//

#import "ViewController.h"

#import "DITController.h"

@interface ViewController ()

@end

@implementation ViewController

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

- (IBAction)changeStoryboard:(id)sender {
    
    [[DITController sharedController] changeUIWithDialog:self];

}
- (IBAction)gotoMainActionForSegue:(UIStoryboardSegue *)segue{
    
}
@end
