//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
//    return nil;
    return [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    
    NSString *resultString = [[NSString alloc]init];
    
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
        NSRange searchRange = [cheeseName rangeOfString:@"cheese"];
        resultString = [cheeseName substringToIndex:[cheeseName length] - (searchRange.length + 1)];
        
    } else {
        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
        resultString = [NSString stringWithString:cheeseName];
    }

    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    if ([[cheeseName capitalizedString] hasSuffix:@" Cheese"]) {
        NSRange searchRange = [cheeseName rangeOfString:@"cheese" options:NSCaseInsensitiveSearch];
        resultString = [cheeseName substringToIndex:[cheeseName length] - (searchRange.length + 1)];
    }
    
    
//    return nil;
    return resultString;
    
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    
    NSString *totalCheese = [[NSString alloc]init];
    
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        totalCheese = [NSString stringWithFormat:@"%ld cheese", cheeseCount];
        
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        totalCheese = [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
//    return nil;
    return totalCheese;
    
}

@end
