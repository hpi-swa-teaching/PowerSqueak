updating
updateSlideMiniaturesCompletely

	| previousSelection |
	previousSelection := self tool currentSlideNumber.
	self updateSlideMiniatures.
	1 to: self tool slideCount do:
		[:index | self updateSlideMiniatureCompletelyAt: index].
	self tool selectSlideAt: previousSelection