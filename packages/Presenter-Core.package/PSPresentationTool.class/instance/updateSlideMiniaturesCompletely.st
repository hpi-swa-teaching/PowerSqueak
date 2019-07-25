slide miniatures
updateSlideMiniaturesCompletely

	| previousSelection |
	previousSelection := self currentSlideNumber.
	self updateSlideMiniatures.
	1 to: self slideCount do: [:index |
		self selectSlideAt: index.
		self currentSlide redrawLater.
		self currentSlide world displayWorldSafely.
		self updateCurrentMiniature].
	self selectSlideAt: previousSelection