//
//  Patient.m
//  doctorpatient
//
//  Created by Celal Aslan on 2018-06-23.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

-(instancetype)initWith:(NSString *)name age:(int)age weight:(int)weight sex:(NSString *)sex visit:(BOOL)visit andHasHealthCard:(BOOL)hasHealthCard;
{
  self = [super init];
  if (self) {
    _name = name;
    _age = age;
    _weight = weight;
    _sex = sex;
    _visit = visit;
    _hasHealthCard = hasHealthCard;
    
  }
  return self;
}

-(NSMutableArray *)prescriptionArray:(Patient*)aPatientPrescription {
  [self.prescriptionArray addObject:aPatientPrescription];
    return 0;
}

@end
