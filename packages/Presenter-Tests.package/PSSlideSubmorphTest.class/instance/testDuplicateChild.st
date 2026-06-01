container tests
testDuplicateChild
	"Mostly tests that copying a Morph does not throw an error, as it is difficult to test, whether two morphs are equal"
	| copy |
	"copyChildToHand grabs into the global active hand, which Morphic otherwise leaves
	pointed at the main project hand. Point it at the test hand so the copy lands here."
	ActiveHand := self hand.
	copy := self container copyChildToHand.
	self assert: (self hand submorphs includes: copy).