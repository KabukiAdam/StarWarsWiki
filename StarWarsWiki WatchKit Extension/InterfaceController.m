//
//  InterfaceController.m
//  StarWarsWiki WatchKit Extension
//
//  Created by Adam Shaw on 21/01/2015.
//  Copyright (c) 2015 Kabuki Vision, LLC. All rights reserved.
//

#import "InterfaceController.h"
#import "CharacterTableRow.h"

@interface InterfaceController()

@property (weak, nonatomic) IBOutlet WKInterfaceTable *characterTable;

@property (strong, nonatomic) NSArray *characterData;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    self.characterData = [NSArray arrayWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Characters" withExtension:@"plist"]];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    [self.characterTable setNumberOfRows:self.characterData.count withRowType:@"CharacterRow"];
    for (NSInteger i = 0; i < self.characterTable.numberOfRows; i++)
    {
        CharacterTableRow* row = [self.characterTable rowControllerAtIndex:i];
        
        NSDictionary *character = [self.characterData objectAtIndex:i];
        
        [row.name setText:character[@"name"]];
        [row.role setText:character[@"title"]];
    }
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (id)contextForSegueWithIdentifier:(NSString *)segueIdentifier inTable:(WKInterfaceTable *)table rowIndex:(NSInteger)rowIndex
{
    if ([segueIdentifier isEqualToString:@"characterDetailSegue"])
    {
        NSDictionary *character = [self.characterData objectAtIndex:rowIndex];
        return character;
    }
    else
        return nil;
}


@end



