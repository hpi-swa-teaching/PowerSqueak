scaling font tests
testTextEditedEnsuresScalingFontAttribute

	| attributes |
	self textField textEdited: self textField textMorph text.
	attributes := self textField textMorph text attributesAt: 1.
	self assert: (attributes anySatisfy: [:each | each class = PSScalingFontAttribute])
