Class {
	#name : #BaselineOfStatePattern,
	#superclass : #BaselineOf,
	#category : #BaselineOfStatePattern
}

{ #category : #accessing }
BaselineOfStatePattern >> baseline: spec [

	<baseline>
	spec
		for: #pharo
		do: [ 
			spec
				package: 'StatePattern-Covid19FSM-Core-Model';
				package: 'StatePattern-Covid19FSM-Core-Tests' with: [ spec requires: 'StatePattern-Covid19FSM-Core-Model' ] ]
]

{ #category : #accessing }
BaselineOfStatePattern >> projectClass [

	^ MetacelloCypressBaselineProject
]
