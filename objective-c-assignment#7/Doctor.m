//
//  Doctor.m
//  doctorpatient
//
//  Created by Celal Aslan on 2018-06-23.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//


#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

-(instancetype)initWith:(NSString *)name andSpecialization:(NSString *)specialization;

{
  self = [super init];
  if (self) {
    _name = name;
    _specialization = specialization;
    _patientList = [[NSMutableArray alloc]init];
    _prescriptionArray = [[NSMutableArray alloc]init];
  }
  return self;
}

-(BOOL)visitWithPatient:(Patient*)aPatient {
  if (!aPatient.hasHealthCard) {
    return NO;
  }
  
  [self.patientList addObject:aPatient];
  return YES;
  
}

-(BOOL)previouslyTreated:(Patient*)aPatient {
  return [self.patientList containsObject:aPatient];
}

-(NSString *)requestMedication:(Patient*)aPatient forSymptoms:(NSString*)symptoms {
  if (![self previouslyTreated:aPatient]) {
    return nil; // if patient has not been treated, we won't prescribe anything as per user story
  }
  if ([symptoms isEqualToString:@"headache"]) {
    return @"advil";
  }
  return @"We need further analyze to diagnose the sickness!";
}


@end
