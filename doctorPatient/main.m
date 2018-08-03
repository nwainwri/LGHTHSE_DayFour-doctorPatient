//
//  main.m
//  doctorPatient
//
//  Created by Nathan Wainwright on 2018-08-02.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //old doctor setup
        Doctor *alf = [[Doctor alloc] init];
        alf.name = @"Alfus Doe";
        alf.specialization = @"Physio";
        NSLog(@"Doctor Name: %@ Specialization: %@", alf.name, alf.specialization);
        
        //new condenesed doctor setup
        Doctor *elvis = [[Doctor alloc] initWithName:@"Elvis Presley" specialization:@"Pediatrician"];
        NSLog(@"Doctor Name: %@ Specialization: %@", elvis.name, elvis.specialization);
        
        // old patient setup
        Patient *dianna = [[Patient alloc] init];
        dianna.name = @"Dianna Smith";
        dianna.age = 26;
        NSLog(@"Patient Name: %@ Age: %i", dianna.name, dianna.age);
        
        //patient test case: no valid med
        [dianna visitDoctor:alf hasValidHealthCard:NO];
        NSLog(@"Doctor %@, Current Patient List: %@", alf.name, alf.patientList[0]);
        [alf requestMedication:dianna patientSymptoms:PatientSymptomSoreThroat];

        //new patient setup
        Patient *dave = [[Patient alloc] initWithName:@"Dave Holmes" age:42];
        NSLog(@"Patient Name: %@ Age %i", dave.name, dave.age);
        
        //patient test case: yes valid med
        [dave visitDoctor:elvis hasValidHealthCard:YES];
        NSLog(@"Doctor %@, Current Patient List: %@", elvis.name, elvis.patientList[0]);
        [elvis requestMedication:dave patientSymptoms:PatientSymptomHeadache];
        
        NSLog(@"\n\nTEST: %@", [dave.medicalHistory componentsJoinedByString:@", "]);
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
