//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    
    NSMutableString *fromCharacterString = [NSMutableString stringWithFormat:@"%@", characterString];
    NSArray *myWorkingArray = [fromCharacterString componentsSeparatedByString:@";"];
    
    return myWorkingArray;
}



- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSMutableArray *myWorkingArray = [[NSMutableArray alloc]initWithArray:characterArray];
    NSString *myReturnString = [myWorkingArray componentsJoinedByString:@";"];
    
    return myReturnString;
}



- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSMutableArray *myWorkingArray = [[NSMutableArray alloc]initWithArray:characterArray];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [myWorkingArray sortUsingDescriptors:@[sortDescriptor]];
    
    return myWorkingArray;
}



- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSMutableArray *myWorkingArray = [[NSMutableArray alloc]initWithArray:characterArray];
    NSString *myWorkingString = [myWorkingArray componentsJoinedByString:@";"];
    BOOL foundWorf = NO;

    NSRange wolfRange = [myWorkingString rangeOfString:@"Worf"];
    
    if (wolfRange.location != NSNotFound) {
        foundWorf = YES;
    }
    
    return foundWorf;
}



@end
