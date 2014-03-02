package com.ohh.security

class User implements Serializable {
    private static final long serialVersionUID = 1L
    static final enum Status {
        ACTIVE, PENDING, INACTIVE
    }

    String firstname
    String lastname
	String username // which is an email
	String password
    Status status = Status.PENDING
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked = false
	boolean passwordExpired
    Date dateCreated
    Date lastUpdated

	static constraints = {
        firstname(blank: false, nullable: false)
        lastname(blank: false, nullable: false)
		username(blank: false, nullable: false, unique: true, email: true)
		password(blank: false, nullable: false)
        status(blank: false, nullable: false)
        enabled(blank: false, nullable: false)
        accountExpired(blank: false, nullable: false)
        accountLocked(blank: false, nullable: false)
        passwordExpired(blank: false, nullable: false)
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}
}
