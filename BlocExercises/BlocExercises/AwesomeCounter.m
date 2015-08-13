//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSString *resultString = [[NSString alloc]init];
    
    // First number is less than second number.
    if (number < otherNumber) {
        
        for (NSInteger n = number ; n <= otherNumber; n++) {
            NSString* myNewString = [NSString stringWithFormat:@"%ld", (long)n];
            // NSLog(@"%@", myNewString);
            resultString = [NSString stringWithFormat:@"%@%@", resultString, myNewString];
        }
        
        // First number is greater than second number.
    } else if (number > otherNumber) {
        
        for (NSInteger n = otherNumber ; n <= number; n++) {
            NSString* myNewString = [NSString stringWithFormat:@"%ld", (long)n];
            resultString = [NSString stringWithFormat:@"%@%@", resultString, myNewString];
        }
        
        // First number is equal to second number.
    } else if (number == otherNumber) {
        
        resultString = [NSString stringWithFormat:@"%ld", (long)number];
    }
    
    return resultString;
}

@end
