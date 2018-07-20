slide miniatures
updateSlideMiniaturesCompletely

	| previousSelection |
	previousSelection := self currentSlideNumber.
	self updateSlideMiniatures.
	1 to: self slideCount do: [:index |
		self selectSlideNumber: index.
		World doOneCycle.
		self updateCurrentMiniature].
	self selectSlideNumber: previousSelection