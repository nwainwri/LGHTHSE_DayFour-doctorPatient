//
//  PatientRecord.m
//  doctorPatient
//
//  Created by Nathan Wainwright on 2018-08-02.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "PatientRecord.h"
#import "Patient.h"

@implementation PatientRecord

- (instancetype)init
{
    self = [super init];
    if (self) {
        _doctorName = @"";
        _patientSymptom = 0;
        _medicationGiven = @"";
    }
    return self;
}

-(NSArray *) makeMedicalHistory{
    
    
    
    return 0;
}

@end
