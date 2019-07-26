snapping tests
testInvalidAnswerDoesntChangeSnapSize: aString

	| valueBefore |
	valueBefore := self slideContainer snapSize.
	self tryChangingSnapSizeTo: aString.
	self assert: self slideContainer snapSize equals: valueBefore