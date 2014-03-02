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
        email(blank: true, nullable: true, maxSize: 100, email: true)
        gender(blank: true, nullable: true, inList: ["Female", "Male"])
        dob(blank: true, nullable: true)
        martialStatus(blank: true, nullable: true, inList: ["Mrs", "Ms", "Miss", "Mr"])
        firstname(blank: true, nullable: true, maxSize: 50)
        middlename(blank: true, nullable: true, maxSize: 50)
        lastname(blank: true, nullable: true, maxSize: 50)
        weight(blank: true, nullable: true, min: 0)
        height(blank: true, nullable: true, min: 0)
        eyeColour(blank: true, nullable: true, maxSize: 15)
        bloodType(blank: true, nullable: true, inList: ['A', 'B', 'AB', 'O'])
        country(blank: true, nullable: true, maxSize: 75)
        state(blank: true, nullable: true, maxSize: 75)
        city(blank: true, nullable: true, maxSize: 75)
        address(blank: true, nullable: true, maxSize: 100)
        postalCode(blank: true, nullable: true, maxSize: 10)
    }
}
