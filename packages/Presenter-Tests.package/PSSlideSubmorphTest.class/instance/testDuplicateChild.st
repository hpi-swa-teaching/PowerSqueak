container tests
testDuplicateChild

	| copy |
	copy := self container copyChildToHand.
	self assert: (self hand submorphs includes: copy)