slide miniatures
updateSlideMiniaturesCompletely

	| previousSelection |
	previousSelection := self currentSlideNumber.
	self updateSlideMiniatures.
	1 to: self slideCount do:
		[:index | self updateSlideMiniatureCompletelyAt: index].
	self selectSlideAt: previousSelection