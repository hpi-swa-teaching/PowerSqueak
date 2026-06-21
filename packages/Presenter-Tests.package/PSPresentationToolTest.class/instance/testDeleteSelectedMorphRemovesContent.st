content tests
testDeleteSelectedMorphRemovesContent

	| container |
	container := self currentSlide addContent: Morph new.
	self assert: (self currentSlide submorphs includes: container).
	self slideContainer deleteSelectedMorph.
	self deny: (self currentSlide submorphs includes: container).
	self assert: self slideContainer selection class equals: PSNullContentContainer
