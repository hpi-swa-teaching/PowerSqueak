as yet unclassified
testUnselectedElementsDoNotReceiveEvents

	| morph |
	morph := RectangleMorph new.
	self slide addContent: morph.
	self assert: (self slideContainer selection equals: morph not).
	"TODO"