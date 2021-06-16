Class {
	#name : #Infectious,
	#superclass : #Infected,
	#category : #'StatePattern-Covid19FSM-Core-Model'
}

{ #category : #testing }
Infectious >> isInfectious [

	^ true
]

{ #category : #'private - infection' }
Infectious >> meetingBetween: myself and: anotherCitizen [

	anotherCitizen imInfectious: myself
]

{ #category : #'private - infection' }
Infectious >> meetingBetween: myself andInfectious: aCitizen [
]

{ #category : #'private - infection' }
Infectious >> meetingBetween: myself andSusceptible: aCitizen [

	aCitizen asExposed
]
