shapes
addShape: aMorph

	^ self tool currentSlide addContentUndoably: (aMorph
		borderWidth: PSPresentationTool defaultShapeBorderWidth;
		center: self tool currentSlide center;
		yourself)