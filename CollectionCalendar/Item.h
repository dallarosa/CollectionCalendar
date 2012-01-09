//
//  Item.h
//  CollectionCalendar
//
//  Created by Francisco Soares on 12/01/09.
//  Copyright (c) 2012年 アルゴ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject
{
    NSString *title;
    NSString *author;
    NSString *releaseDate;
    NSString *acquisitionDate;
    int status;
    NSString *url;
}

@property (nonatomic,retain) NSString *title;
@property (nonatomic,retain) NSString *releaseDate;
@property (nonatomic,retain) NSString *url;

@end
