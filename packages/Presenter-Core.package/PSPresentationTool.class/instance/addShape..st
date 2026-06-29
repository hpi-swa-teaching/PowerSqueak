shapes
addShape: aMorph

	^ self currentSlide addContentUndoably: (aMorph
		center: self currentSlide center;
		yourself)