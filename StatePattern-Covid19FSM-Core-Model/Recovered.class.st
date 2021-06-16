Class {
	#name : #Recovered,
	#superclass : #Covid19State,
	#category : #'StatePattern-Covid19FSM-Core-Model'
}

{ #category : #testing }
Recovered >> isRecovered [

	^ true
]

{ #category : #infection }
Recovered >> meetingBetween: myself and: anotherCitizen [
]

{ #category : #'private - infection' }
Recovered >> meetingBetween: myself andInfectious: aCitizen [
]

{ #category : #'private - infection' }
Recovered >> meetingBetween: myself andSusceptible: aCitizen [
]
