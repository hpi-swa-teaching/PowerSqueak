as yet unclassified
testWhenAddingContentDuringPresentationItHasHandles
	"We want to be able to reposition a morph during a presentation if necessary"
	| content |
	self tool enablePresentationMode.
	content := self currentSlide addContent: Morph new.
	self assert: content hasHandles.