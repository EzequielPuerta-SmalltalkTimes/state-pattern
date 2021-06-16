Class {
	#name : #Covid19State,
	#superclass : #Object,
	#category : #'StatePattern-Covid19FSM-Core-Model'
}

{ #category : #testing }
Covid19State >> isInfected [

	^ false
]

{ #category : #testing }
Covid19State >> isInfectious [

	^ false
]

{ #category : #testing }
Covid19State >> isRecovered [

	^ false
]

{ #category : #testing }
Covid19State >> isSusceptible [

	^ false
]

{ #category : #testing }
Covid19State >> isSymptomatic [

	^ false
]

{ #category : #infection }
Covid19State >> meetingBetween: myself and: anotherCitizen [

	self subclassResponsibility
]

{ #category : #'private - infection' }
Covid19State >> meetingBetween: myself andInfectious: aCitizen [

	self subclassResponsibility 
]

{ #category : #'private - infection' }
Covid19State >> meetingBetween: myself andSusceptible: aCitizen [

	self subclassResponsibility 
]
