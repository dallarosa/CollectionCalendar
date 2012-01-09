//
//  CollectionCalendarFirstViewController.h
//  CollectionCalendar
//
//  Created by Francisco Soares on 12/01/08.
//  Copyright (c) 2012年 アルゴ. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface CollectionCalendarFirstViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    NSArray *stringList;
    NSArray *urlList;
}

@property(nonatomic,retain)NSArray *stringList;
@property(nonatomic,retain)NSArray *urlList;
@end
