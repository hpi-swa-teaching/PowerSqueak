as yet unclassified
testNoHandlesWhenEnteringPresentationMode

	| amount |
	self tool enablePresentationMode.
	amount := self currentSlide submorphs count: [:each | each hasHandles equals: false].
	self assert: amount equals: 0.