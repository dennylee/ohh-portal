package com.ohh

import com.ohh.security.User

class Patient extends User {
    // account details
    String phoneNumber
    String email

    // description
    String gender
    Date dob
    String martialStatus
    String firstname
    String middlename
    String lastname
    int weight  // lbs
    int height  // in cm
    String eyeColour
    String bloodType

    // address
    String country
    String state
    String city
    String address
    String postalCode

    static constraints = {
        phoneNumber(blank: true, nullable: true, matches: "[0-9]+", minSize: 10, maxSize: 10)
        email(blank: true, nullable: true, maxSize: 100)
        gender(blank: false, nullable: false, inList: ['Female', 'Male'])
        dob(blank: false, nullable: false)
        martialStatus(blank: false, nullable: false, inList: ['Mrs', 'Ms', 'Miss', 'Mr'])
        firstname(blank: false, nullable: false, maxSize: 50)
        middlename(blank: true, nullable: false, maxSize: 50)
        lastname(blank: false, nullable: false, maxSize: 50)
        weight(blank: false, nullable: false, min: 0)
        height(blank: false, nullable: false, min: 0)
        eyeColour(blank: false, nullable: false, maxSize: 15)
        bloodType(blank: false, nullable: false, inList: ['A', 'B', 'AB', 'O'])
        country(blank: false, nullable: false, maxSize: 75)
        state(blank: false, nullable: false, maxSize: 75)
        city(blank: false, nullable: false, maxSize: 75)
        address(blank: false, nullable: false, maxSize: 100)
        postalCode(blank: false, nullable: false, maxSize: 10)
    }
}
