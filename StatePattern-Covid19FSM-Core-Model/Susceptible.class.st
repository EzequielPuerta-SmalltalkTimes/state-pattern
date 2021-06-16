Class {
	#name : #Susceptible,
	#superclass : #Covid19State,
	#category : #'StatePattern-Covid19FSM-Core-Model'
}

{ #category : #testing }
Susceptible >> isSusceptible [

	^ true
]

{ #category : #infection }
Susceptible >> meetingBetween: myself and: anotherCitizen [

	anotherCitizen imSusceptible: myself
]

{ #category : #'private - infection' }
Susceptible >> meetingBetween: myself andInfectious: aCitizen [

	myself asExposed
]

{ #category : #'private - infection' }
Susceptible >> meetingBetween: myself andSusceptible: aCitizen [
]
