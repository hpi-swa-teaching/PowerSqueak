as yet unclassified
testCustomStepExecutesOnStep

	self selectStepScript.
	self setInteractScript.
	self container step.
	self assert: self interacted.