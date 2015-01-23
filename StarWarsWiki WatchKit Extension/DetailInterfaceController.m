//
//  DetailInterfaceController.m
//  StarWarsWiki
//
//  Created by Adam Shaw on 21/01/2015.
//  Copyright (c) 2015 Kabuki Vision, LLC. All rights reserved.
//

#import "DetailInterfaceController.h"


@interface DetailInterfaceController()

@property (weak, nonatomic) IBOutlet WKInterfaceImage *image;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *name;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *role;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *bio;

@end


@implementation DetailInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    NSDictionary *character = (NSDictionary*)context;
    [self.image setImageNamed:character[@"image"]];
    [self.name setText:character[@"name"]];
    [self.role setText:character[@"title"]];
    [self.bio setText:character[@"bio"]];
    
    [self setTitle:character[@"name"]];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



