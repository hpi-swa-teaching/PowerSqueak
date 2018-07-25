container tests
testDuplicateChild
	"Mostly tests that copying a Morph does not throw an error, as it is difficult to test, whether two morphs are equal"
	| copy |
	copy := self container copyChildToHand.
	self assert: (self hand submorphs includes: copy).