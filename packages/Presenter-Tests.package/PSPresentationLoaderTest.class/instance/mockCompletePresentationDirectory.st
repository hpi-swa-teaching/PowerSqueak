accessing
mockCompletePresentationDirectory

	| directory slidesDirectory |
	directory := PSMockFileDirectory from: 'Presentation' -> {
		PSPresentationLoader slidesDirectoryName -> {
			'slide1' -> {'1.morph'}.
			'slide2' -> {}.
			'slide3' -> {'1.morph' . '2.morph' }
		}
	}.
	slidesDirectory := directory / PSPresentationLoader slidesDirectoryName.
	slidesDirectory / 'slide1' / '1.morph' contents: PSMorphForEventTests new.
	slidesDirectory / 'slide3' / '1.morph' contents: PSMorphForEventTests new.
	slidesDirectory / 'slide3' / '2.morph' contents: PSMorphForEventTests new.
	^ directory