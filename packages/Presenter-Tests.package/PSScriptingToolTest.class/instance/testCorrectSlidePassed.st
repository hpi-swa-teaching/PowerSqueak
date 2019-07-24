as yet unclassified
testCorrectSlidePassed

	| slideHash |
	slideHash := self slide hash.
	self selectStepScript.
	self scriptingTool accept: '(aSlide hash = ', slideHash, ')ifTrue: [self doButtonAction]'.
	self container step.
	self assert: self interacted.