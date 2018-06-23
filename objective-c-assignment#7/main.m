//
//  main.m
//  doctorpatient
//
//  Created by Celal Aslan on 2018-06-23.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    
Doctor *doctor = [[Doctor alloc] init];
Patient *patient = [[Patient alloc] init];
  
  while (YES) {
    
    NSString *menuString = @"Would you like to visit a doctor?\nyes/no";
    

    InputCollector *inputCollector = [[InputCollector alloc] init];
    
    NSString *userSelection = [inputCollector inputForPrompt:menuString];
    
    if ([userSelection isEqual:@"no"]) {
      NSLog(@"We're glad that you're healthy!");
      return 0;
    }
    
    else if ([userSelection isEqual:@"yes"]) {
      
      NSString *haveHealthcard = @"Do you have a valid health card?\nyes/no";
      NSString *userSelection = [inputCollector inputForPrompt:haveHealthcard];
        if ([userSelection isEqual:@"no"]) {
          NSLog(@"Thank you come again!");
          return 0;
        }
        else if ([userSelection isEqual:@"yes"]) {
            NSString *name = @"Enter your name and lastname please:\n";
            NSString *age = @"Enter your age please:\n";
            NSString *weight = @"Enter current weight please:\n";
            NSString *sex = @"Enter your gender please:\n";
            NSString *patientName = [inputCollector inputForPrompt:name];
            NSString *patientAge = [inputCollector inputForPrompt:age];
            NSString *patientWeight = [inputCollector inputForPrompt:weight];
            NSString *patientSex = [inputCollector inputForPrompt:sex];
            patient.name = patientName;
            patient.age = patientAge.intValue;
            patient.weight = patientWeight.intValue;
            patient.sex = patientSex;
            
            printf("%s", patient);
        }
    
    } else {
        NSLog(@"Wrong entry, try again please.");
        return 0;
    }
    
    }
}
