slide miniatures
updateSlideMiniaturesCompletely

	| previousSelection |
	previousSelection := self currentSlideNumber.
	self updateSlideMiniatures.
	1 to: self slideCount do: [:index |
		self selectSlideNumber: index.
		self currentSlide redrawLater.
		self currentSlide world displayWorldSafely.
		self updateCurrentMiniature].
	self selectSlideNumber: previousSelection