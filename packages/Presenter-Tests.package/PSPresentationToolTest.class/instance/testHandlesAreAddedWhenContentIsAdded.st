as yet unclassified
testHandlesAreAddedWhenContentIsAdded

	| content |
	content := self currentSlide addContent: Morph new.
	self assert: content hasHandles.