//
//  CollectionCalendarFirstViewController.m
//  CollectionCalendar
//
//  Created by Francisco Soares on 12/01/08.
//  Copyright (c) 2012年 アルゴ. All rights reserved.
//

#import "CollectionCalendarFirstViewController.h"

@implementation CollectionCalendarFirstViewController

@synthesize stringList;
@synthesize urlList;

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.stringList count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = [self.stringList objectAtIndex:[indexPath row]];
    if([indexPath row] == 0)
    {
        cell.textLabel.textAlignment = UITextAlignmentCenter;
        cell.textLabel.textColor = [UIColor blueColor];
    }
    return cell;
                                                
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[urlList objectAtIndex:[indexPath row]]]];
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) 
    {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
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
    self.stringList = [[NSArray alloc]initWithObjects:@"発売予定",@"雨の日のアイリス - 2012/01/24",@"アルスラーン戦記 - 2012/01/26",@"アリソン - 2012/01/28",@"偽りのドラグーン - 2012/01/30",@"キーリ - 2012/02/01",@"狼と香辛料 - 2012/02/04",@"オペラ・エテルニタ - 2012/02/06", nil];
    self.urlList = [[NSArray alloc]initWithObjects:@"",@"http://www.raitonoveru.jp/rano/rano/amenohi.html",@"http://www.raitonoveru.jp/rano/rano/01.html#140",@"http://www.raitonoveru.jp/rano/rano/fannta.html#235",@"http://www.raitonoveru.jp/rano/rano/fannta01.html#710",@"http://www.raitonoveru.jp/rano/rano/kiri.html#64",@"http://www.raitonoveru.jp/rano/rano/ooka.html#209",@"http://www.raitonoveru.jp/rano/rano/opera.html#311", nil];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.stringList = nil;
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

@end
