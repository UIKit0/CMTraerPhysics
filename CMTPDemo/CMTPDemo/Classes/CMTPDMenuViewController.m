//
//  CMTPDMenuViewController.m
//  CMTPDemo
//
//  Created by Chris Miles on 14/11/11.
//  Copyright (c) 2011 Chris Miles. All rights reserved.
//

#import "CMTPDMenuViewController.h"
#import "CMTPDAttractionGridViewController.h"
#import "CMTPDAttractionTestViewController.h"
#import "CMTPDClothTestViewController.h"
#import "CMTPDFreeFloatingTestViewController.h"
#import "CMTPDInfoViewController.h"
#import "CMTPDSpringTestViewController.h"
#import "CMTPDWebTestViewController.h"
#import "CMTPDWonderwallLikeViewController.h"


@implementation CMTPDMenuViewController


#pragma mark - UIControl actions

- (void)infoAction:(id)sender
{
    CMTPDInfoViewController *viewController = [[[CMTPDInfoViewController alloc] initWithNibName:nil bundle:nil] autorelease];
    UINavigationController *navController = [[[UINavigationController alloc] initWithRootViewController:viewController] autorelease];
    [self presentModalViewController:navController animated:YES];
}


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"CMTraerPhysics";
    
    [self.navigationController setToolbarHidden:NO animated:NO];
    
    UIBarButtonItem *flexibleItem = [[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil] autorelease];
    
    UIButtonType infoButtonType;
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
	infoButtonType = UIButtonTypeInfoDark;
    }
    else {
	infoButtonType = UIButtonTypeInfoLight;
    }
    UIButton *infoButton = [UIButton buttonWithType:infoButtonType];
    [infoButton addTarget:self action:@selector(infoAction:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *infoBarButtonItem = [[[UIBarButtonItem alloc] initWithCustomView:infoButton] autorelease];
    
    self.toolbarItems = [NSArray arrayWithObjects:flexibleItem, infoBarButtonItem, nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    if (selectedIndexPath) {
        [self.tableView deselectRowAtIndexPath:selectedIndexPath animated:YES];
    }
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
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 7;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CMTPDMenuViewControllerCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    NSString *title = nil;
    if (0 == indexPath.row) {
        title = @"Attraction Grid";
    }
    else if (1 == indexPath.row) {
        title = @"Attraction Test";
    }
    else if (2 == indexPath.row) {
        title = @"Cloth Test";
    }
    else if (3 == indexPath.row) {
        title = @"Free Floating Test";
    }
    else if (4 == indexPath.row) {
        title = @"Spring Test";
    }
    else if (5 == indexPath.row) {
        title = @"Web Test";
    }
    else if (6 == indexPath.row) {
        title = @"Wonderwall Like";
    }
    cell.textLabel.text = title;
    
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (0 == indexPath.row) {
	CMTPDAttractionGridViewController *viewController = [[[CMTPDAttractionGridViewController alloc] init] autorelease];
	[self.navigationController pushViewController:viewController animated:YES];
    }
    else if (1 == indexPath.row) {
	CMTPDAttractionTestViewController *viewController = [[[CMTPDAttractionTestViewController alloc] init] autorelease];
	[self.navigationController pushViewController:viewController animated:YES];
    }
    else if (2 == indexPath.row) {
	CMTPDClothTestViewController *viewController = [[[CMTPDClothTestViewController alloc] init] autorelease];
	[self.navigationController pushViewController:viewController animated:YES];
    }
    else if (3 == indexPath.row) {
	CMTPDFreeFloatingTestViewController *viewController = [[[CMTPDFreeFloatingTestViewController alloc] init] autorelease];
	[self.navigationController pushViewController:viewController animated:YES];
    }
    else if (4 == indexPath.row) {
	CMTPDSpringTestViewController *viewController = [[[CMTPDSpringTestViewController alloc] init] autorelease];
	[self.navigationController pushViewController:viewController animated:YES];
    }
    else if (5 == indexPath.row) {
	CMTPDWebTestViewController *viewController = [[[CMTPDWebTestViewController alloc] init] autorelease];
	[self.navigationController pushViewController:viewController animated:YES];
    }
    else if (6 == indexPath.row) {
	CMTPDWonderwallLikeViewController *viewController = [[[CMTPDWonderwallLikeViewController alloc] init] autorelease];
	[self.navigationController pushViewController:viewController animated:YES];
    }
}

@end
