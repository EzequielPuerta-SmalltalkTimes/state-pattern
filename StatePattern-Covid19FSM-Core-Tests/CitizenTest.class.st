Class {
	#name : #CitizenTest,
	#superclass : #TestCase,
	#category : #'StatePattern-Covid19FSM-Core-Tests'
}

{ #category : #tests }
CitizenTest >> test_1_IsSusceptible [

	self assert: (Citizen called: 'Bob') isSusceptible
]

{ #category : #tests }
CitizenTest >> test_2_IsInfected [

	self assert: (Citizen called: 'Bob' startingAs: Exposed new) isInfected
]

{ #category : #tests }
CitizenTest >> test_3_IsInfectedAndNotSusceptible [

	| alice bob |
	
	alice := Citizen called: 'Alice'.
	bob := Citizen called: 'Bob' startingAs: Exposed new.
	
	self 
		assert: alice isSusceptible;
		deny: alice isInfected.

	self
		deny: bob isSusceptible;
		assert: bob isInfected.
]

{ #category : #tests }
CitizenTest >> test_4_IsSymptomatic [

	| alice bob carol |
	
	alice := Citizen called: 'Alice'.
	bob := Citizen called: 'Bob' startingAs: Exposed new.
	carol := Citizen called: 'Carol' startingAs: Symptomatic new.
	
	self 
		assert: alice isSusceptible;
		deny: alice isInfected;
		deny: alice isSymptomatic.
	
	self
		deny: bob isSusceptible;
		assert: bob isInfected;
		deny: bob isSymptomatic.
		
	self
		deny: carol isSusceptible;
		assert: carol isInfected;
		assert: carol isSymptomatic
]

{ #category : #tests }
CitizenTest >> test_5_Infections_SusceptibleVsExposed [

	| alice bob |
	
	alice := Citizen called: 'Alice'.
	bob := Citizen called: 'Bob' startingAs: Exposed new.
	
	self 
		assert: alice isSusceptible;
		deny: alice isInfected;
		deny: alice isSymptomatic.
	
	self
		deny: bob isSusceptible;
		assert: bob isInfected;
		deny: bob isSymptomatic.
		
	alice <> bob.
	
	self 
		assert: alice isSusceptible;
		deny: alice isInfected;
		deny: alice isSymptomatic.
		
	self
		deny: bob isSusceptible;
		assert: bob isInfected;
		deny: bob isSymptomatic
]

{ #category : #tests }
CitizenTest >> test_6_Infections_ExposedVsSymptomatic [

	| alice bob |
	
	alice := Citizen called: 'Alice' startingAs: Symptomatic new.
	bob := Citizen called: 'Bob' startingAs: Exposed new.
	
	self 
		deny: alice isSusceptible;
		assert: alice isInfected;
		assert: alice isSymptomatic.
	
	self
		deny: bob isSusceptible;
		assert: bob isInfected;
		deny: bob isSymptomatic.
		
	alice <> bob.
	
	self 
		deny: alice isSusceptible;
		assert: alice isInfected;
		assert: alice isSymptomatic.
	
	self
		deny: bob isSusceptible;
		assert: bob isInfected;
		deny: bob isSymptomatic
]

{ #category : #tests }
CitizenTest >> test_7_Infections_SusceptibleVsSymptomatic [

	| alice bob |
	
	alice := Citizen called: 'Alice'.
	bob := Citizen called: 'Bob' startingAs: Symptomatic new.
	
	self 
		assert: alice isSusceptible;
		deny: alice isInfected;
		deny: alice isSymptomatic.
	
	self
		deny: bob isSusceptible;
		assert: bob isInfected;
		assert: bob isSymptomatic.
		
	alice <> bob.
	
	self 
		deny: alice isSusceptible;
		assert: alice isInfected;
		deny: alice isSymptomatic.
	
	self
		deny: bob isSusceptible;
		assert: bob isInfected;
		assert: bob isSymptomatic
]

{ #category : #tests }
CitizenTest >> test_8_Infections_SusceptibleVsAsymptomatic [

	| alice bob |
	
	alice := Citizen called: 'Alice'.
	bob := Citizen called: 'Bob' startingAs: Asymptomatic new.
	
	self 
		assert: alice isSusceptible;
		deny: alice isInfected;
		deny: alice isSymptomatic;
		deny: alice isInfectious.
	
	self
		deny: bob isSusceptible;
		assert: bob isInfected;
		deny: bob isSymptomatic;
		assert: bob isInfectious.
		
	alice <> bob.
	
	self 
		deny: alice isSusceptible;
		assert: alice isInfected;
		deny: alice isSymptomatic;
		deny: alice isInfectious.
	
	self
		deny: bob isSusceptible;
		assert: bob isInfected;
		deny: bob isSymptomatic;
		assert: bob isInfectious
]

{ #category : #tests }
CitizenTest >> test_9_GetRecovered [

	| alice bob |
	
	alice := Citizen called: 'Alice'.
	bob := Citizen called: 'Bob' startingAs: Symptomatic new.
	
	self 
		assert: alice isSusceptible;
		deny: alice isInfected;
		deny: alice isSymptomatic;
		deny: alice isInfectious;
		deny: alice isRecovered.
				
	alice <> bob.
	
	self 
		deny: alice isSusceptible;
		assert: alice isInfected;
		deny: alice isSymptomatic;
		deny: alice isInfectious;
		deny: alice isRecovered.
	
	Hospital onTreatment: alice.
	
	self 
		deny: alice isSusceptible;
		deny: alice isInfected;
		deny: alice isSymptomatic;
		deny: alice isInfectious;
		assert: alice isRecovered
]
