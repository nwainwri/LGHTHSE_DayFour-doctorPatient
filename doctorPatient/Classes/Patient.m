//
//  Patient.m
//  doctorPatient
//
//  Created by Nathan Wainwright on 2018-08-02.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"
//class Doctor.h

@implementation Patient

- (instancetype)initWithName: (NSString *)name age: (int)howOld
{
    self = [super init];
    if (self) {
        _name = name;
        _age = howOld;
        _medicalHistory = @[];
    }
    return self;
}

- (void)visitDoctor: (Doctor *)doc hasValidHealthCard: (BOOL)hasCard{
//- (void) visitDoctor: (Doctor *)doc{
//NSLog(@"Doctor Seen");
    if (hasCard == YES){
        NSLog(@"Can See Doctor");
        // this is where patient name will be added to an array for doctor to track patients
        // call method for doctor seeing patient
        
        [doc seePatient: self];
        
    } //YES
    
    if (hasCard == NO){
        NSLog(@"Can't See Doctor");
    }//NO

}


@end
