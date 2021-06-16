Class {
	#name : #Citizen,
	#superclass : #Object,
	#instVars : [
		'name',
		'state'
	],
	#category : #'StatePattern-Covid19FSM-Core-Model'
}

{ #category : #'instance creation' }
Citizen class >> called: aName [

	^ self called: aName startingAs: self initialState
]

{ #category : #'instance creation' }
Citizen class >> called: aName startingAs: aCovid19State [
 
	^ self new initializeCalled: aName startingAs: aCovid19State
]

{ #category : #'private - default accessing' }
Citizen class >> initialState [

	^ Susceptible new
]

{ #category : #infection }
Citizen >> <> aCitizen [

	state meetingBetween: self and: aCitizen

]

{ #category : #'private - state transitions' }
Citizen >> asExposed [

	state := Exposed new
]

{ #category : #'private - state transitions' }
Citizen >> asRecovered [

	state := Recovered new
]

{ #category : #'private - infection' }
Citizen >> imInfectious: aCitizen [

	state meetingBetween: self andInfectious: aCitizen
]

{ #category : #'private - infection' }
Citizen >> imSusceptible: aCitizen [

	state meetingBetween: self andSusceptible: aCitizen
]

{ #category : #'private - initialization' }
Citizen >> initializeCalled: aName startingAs: aCovid19State [

	name := aName.
	state := aCovid19State
]

{ #category : #testing }
Citizen >> isInfected [

	^ state isInfected
]

{ #category : #testing }
Citizen >> isInfectious [

	^ state isInfectious
]

{ #category : #testing }
Citizen >> isRecovered [

	^ state isRecovered
]

{ #category : #testing }
Citizen >> isSusceptible [

	^ state isSusceptible
]

{ #category : #testing }
Citizen >> isSymptomatic [

	^ state isSymptomatic
]
