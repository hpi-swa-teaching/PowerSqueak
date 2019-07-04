accessing
mockBrokenMetadataPresentationDirectory

	| directory slidesDirectory |
	directory := PSMockFileDirectory from: 'Presentation' -> {
		PSPresentationLoader slidesDirectoryName -> {
			'slide1' -> {'1.morph' . 'metadata.dict'}}}.
	slidesDirectory := directory / PSPresentationLoader slidesDirectoryName.
	slidesDirectory / 'slide1' / '1.morph' contents: PSMockMorph new.
	slidesDirectory / 'slide1' / 'metadata.dict' contents: 'Test'.
	^ directory