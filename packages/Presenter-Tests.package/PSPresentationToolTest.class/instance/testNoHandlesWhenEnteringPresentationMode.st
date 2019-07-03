presentation mode tests
testNoHandlesWhenEnteringPresentationMode

	| content |
	content := self currentSlide addContent: Morph new.
	self tool enablePresentationMode.
	self deny: content hasHandles.