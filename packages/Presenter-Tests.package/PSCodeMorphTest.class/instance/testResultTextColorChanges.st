code morph tests
testResultTextColorChanges
 	| firstColor secondColor|
	self codeMorph color: Color white.
	firstColor := self codeMorph color.
	self codeMorph color: Color black.
	secondColor := self codeMorph color.
	self assert: firstColor ~= secondColor.