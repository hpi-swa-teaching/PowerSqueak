slide miniatures
updateSlideMiniatureCompletelyAt: aNumber
	"redrawLater seems to not be available in all Squeak versions used by our CI, therefore we use this guard."
 
	self selectSlideAt: aNumber.
	(self currentSlide respondsTo: #redrawLater)
		ifTrue: [self currentSlide redrawLater]
		ifFalse: [self currentSlide changed].
	self currentSlide world displayWorldSafely.
	self updateCurrentMiniature