//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    
    return @([number floatValue] * 2);
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSMutableArray *myReturnArray = [[NSMutableArray alloc]init];
    
    for (NSInteger n = number; n <= otherNumber; n++) {
        [myReturnArray addObject:[NSNumber numberWithInteger:n]];
    }
    
    return myReturnArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    
    // Create an mutable array so it can be sorted
    NSMutableArray *myReturnArray = [NSMutableArray arrayWithArray:arrayOfNumbers];
    
    // Define sort criteria
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:NO];
    
    // Sort array
    [myReturnArray sortUsingDescriptors:@[sortDescriptor]];
    
    // Get the last element in the array which contains the lowest number.
    NSInteger lowestNumber = [[myReturnArray lastObject]integerValue];
    
    return lowestNumber;
}

@end
