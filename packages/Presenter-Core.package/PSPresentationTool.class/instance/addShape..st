shapes
addShape: aMorph

	^ self currentSlide addContentUndoably: (aMorph
		borderWidth: self class defaultShapeBorderWidth;
		center: self currentSlide center;
		yourself)