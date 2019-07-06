//
//  main.m
//  BoxOfficePlus
//
//  Created by Austin on 6/26/19.
//  Copyright © 2019 Austin. All rights reserved.
//

#import <Foundation/Foundation.h>


 NSString *empMessage;

void printTicket(){
    empMessage = @"Printed Message";
    NSLog(@"%@", empMessage);
}

int main(int argc, const char * argv[]) {

    
    //AND &&
    //OR ||
    //NOT !
    
    //is the customer either 13 years old or younger or over the age of 65
    //is the movie a matinee as in the fist movie of the day?
    //is the customer also a theater employee
    
    bool ageDiscount;
    bool isMatinee = YES;
    bool isEmployee;
    
    
    //full price tickets cost $10
    //for a non-employee with an age discount AND attending a matinee = $6.50
    //for a non-employee with an age discount OR attending a matinee = $8.00
    //for an employee attending a non-matinee = $4.50
     //for an employee attending a matinee = $0.00 (free)
    
    float isRegularPrice = 10;
    float ageOrMatineePrice = 8.50;
    float ageAndMatineePrice = 6.50;
    float employeeRegularPrice = 4.0;
    float employeeMatineePrice = 0;
    
    
    
    int customerAge;
    float customerPrice;
    int youthAge = 13;
    int seniorAge = 65;
    float subtotal = 0;
    float taxRate = 0.05;
    float grandTotal = 0;
    
    NSArray *agesArray = @[@5, @5, @14, @42, @77];
    
for (NSNumber *age in agesArray) {
        
    customerAge = [age intValue];
    
    if ((customerAge < youthAge) || (customerAge >= seniorAge)) {
        ageDiscount = TRUE;
    }
    else{
        ageDiscount = FALSE;
    }
    
    ageDiscount = ((customerAge < youthAge) || (customerAge >= seniorAge)) ? TRUE:FALSE;
    
    if (ageDiscount && isMatinee && !isEmployee) {
        customerPrice = ageAndMatineePrice;
    }
    else if ((ageDiscount || isMatinee) && !isEmployee) {
        customerPrice = ageOrMatineePrice;
    }
     else if (isEmployee && !isMatinee){
        customerPrice = employeeRegularPrice;
         empMessage = @"Thanks for being part of the team! Enjoy your movie!";
         NSLog(@"%@", empMessage);
    }
    
    else if (isEmployee && isMatinee)
    {
        customerPrice = employeeMatineePrice;
        empMessage = @"Thanks for being part of the team! Enjoy your FREE movie!";
        NSLog(@"%@", empMessage);
    }
    
    else{
    customerPrice = isRegularPrice;
    }
    
    subtotal = subtotal + customerPrice;
    NSLog(@"age: %i customer price: %f current subtotal: %f /n", customerAge, customerPrice, subtotal);
}
    
    grandTotal = subtotal + (subtotal * taxRate);
    
    
    printTicket();
    
    
    
    
    return 0;
}
