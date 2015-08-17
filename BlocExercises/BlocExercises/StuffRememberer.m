//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer
{
    NSMutableArray *myArrayToRemember;
    NSMutableArray *myArrayToCopy;
    CGFloat myFloatToRemember;
    
}



- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    /* WORK HERE */
    
//    myArrayToRemember = [[NSMutableArray alloc]initWithArray:arrayToRemember];  // Copied an array
    myArrayToRemember = arrayToRemember;                                          // Save to the array so it points to the same memory location.
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    /* WORK HERE */
//    myArrayToCopy = [[[NSMutableArray alloc]initWithArray:arrayToCopy]mutableCopy];  // works but copies twice.  Alloc / init already copies...
    myArrayToCopy = [[NSMutableArray alloc]initWithArray:arrayToCopy];
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    /* WORK HERE */
    
    myFloatToRemember = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    /* WORK HERE */
    
    return myArrayToRemember;
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    
//    return [myArrayToCopy mutableCopy];  // myArrayTocopy is already a copy, no need to spicify mutableCopy again.
    return myArrayToCopy;
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */

    return myFloatToRemember;
}

@end