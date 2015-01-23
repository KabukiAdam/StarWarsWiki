//
//  CharacterTableRow.h
//  StarWarsWiki
//
//  Created by Adam Shaw on 21/01/2015.
//  Copyright (c) 2015 Kabuki Vision, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>


@interface CharacterTableRow : NSObject

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *name;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *role;

@end
