//
//  WSLViewController.m
//  ObjectSwitch
//
//  Created by Stephen Darlington on 04/12/2011.
//  Copyright (c) 2011 Wandle Software Limited. All rights reserved.
//

#import "WSLViewController.h"
#import "WSLObjectSwitch.h"

@implementation WSLViewController
@synthesize textBox;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextBox:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)runTest:(id)sender {
    [WSLObjectSwitch switchOn:self.textBox.text
                 defaultBlock:^{ NSLog (@"Dee Fault"); }
                        cases:@"sausage", ^{ NSLog (@"Hello, sweetie."); },
                              @"test",    ^{ NSLog (@"A test"); }, nil
     ];
}

@end
