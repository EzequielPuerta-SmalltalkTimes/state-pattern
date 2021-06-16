Class {
	#name : #Hospital,
	#superclass : #Object,
	#instVars : [
		'patient'
	],
	#category : #'StatePattern-Covid19FSM-Core-Model'
}

{ #category : #'as yet unclassified' }
Hospital class >> onTreatment: aCitizen [

	^ self new initializeOnTreatment: aCitizen
]

{ #category : #initialization }
Hospital >> initializeOnTreatment: aCitizen [

	patient := aCitizen.
	patient asRecovered
]
