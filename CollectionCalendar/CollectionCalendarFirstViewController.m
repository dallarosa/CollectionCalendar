//
//  CollectionCalendarFirstViewController.m
//  CollectionCalendar
//
//  Created by Francisco Soares on 12/01/08.
//  Copyright (c) 2012年 アルゴ. All rights reserved.
//

#import "CollectionCalendarFirstViewController.h"

@implementation CollectionCalendarFirstViewController

@synthesize itemList;

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"%i\n",[self.itemList count]);
    return [self.itemList count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    Item *item = [self.itemList objectAtIndex:[indexPath row]];
    cell.textLabel.text = item.title;
    if([indexPath row] == 0)
    {
        cell.textLabel.textAlignment = UITextAlignmentCenter;
        cell.textLabel.textColor = [UIColor blueColor];
    }
    return cell;
                                                
}

-(void)prepareData
{
    self.itemList = [[NSMutableArray alloc]init];
    Item *newItem = [[Item alloc]init];
    newItem.title = @"発売予定";
    newItem.releaseDate = nil;
    newItem.url = nil;
    NSLog(@"%@",newItem.title);
    [itemList addObject:newItem];
    newItem = nil;
    
    newItem = [[Item alloc]init];
    newItem.title = @"雨の日のアイリス";
    newItem.releaseDate = @"2012/01/24";
    newItem.url = @"http://www.raitonoveru.jp/rano/rano/amenohi.html";
    NSLog(@"%@",newItem.title);
    [itemList addObject:newItem];
    newItem = nil;
        
    NSLog(@"test: %i",[itemList count]);
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Item *item = [itemList objectAtIndex:[indexPath row]];
   //   NSString *url = [item objectAtIndex:2];
    if(item.url != nil)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:item.url]];
    }
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) 
    {
        self.title = NSLocalizedString(@"発売予定", @"First");
        //self.tabBarItem.image = [UIImage imageNamed:@"first"];
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

    [self prepareData];
    // Do any additional setup after loading the view, typically from a nib.

//    self.itemList = [[NSArray alloc] initWithObjects:[[NSArray alloc]initWithObjects:,,, nil],[[NSArray alloc]initWithObjects:@"アルスラーン戦記",@"2012/01/26",@"http://www.raitonoveru.jp/rano/rano/01.html#140", nil],[[NSArray alloc]initWithObjects:@"雨の日のアイリス",@"2012/01/28",@"http://www.raitonoveru.jp/rano/rano/fannta.html#235", nil],[[NSArray alloc]initWithObjects:@"アリソン",@"2012/01/30",@"http://www.raitonoveru.jp/rano/rano/fannta01.html#710", nil],[[NSArray alloc]initWithObjects:@"偽りのドラグーン",@"2012/01/30",@"http://www.raitonoveru.jp/rano/rano/kiri.html#64", nil],[[NSArray alloc]initWithObjects:@"キーリ",@"2012/02/01",@"http://www.raitonoveru.jp/rano/rano/fannta01.html#710", nil],[[NSArray alloc]initWithObjects:@"狼と香辛料",@"2012/02/04",@"http://www.raitonoveru.jp/rano/rano/ooka.html#209", nil],[[NSArray alloc]initWithObjects:@"オペラ・エテルニタ",@"2012/02/06",@"http://www.raitonoveru.jp/rano/rano/opera.html#311", nil] nil];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.itemList = nil;
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
