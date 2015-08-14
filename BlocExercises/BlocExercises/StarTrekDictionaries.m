//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    return [characterDictionary objectForKey:@"favorite drink"];
}


- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    
    return [charactersArray valueForKey:@"favorite drink"];
}


- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    NSMutableDictionary *myChangingDicionary = [characterDictionary mutableCopy];
    [myChangingDicionary setObject:@("Today is a good day to drink!") forKey:@"quote"];
    
    return myChangingDicionary;
}


@end
