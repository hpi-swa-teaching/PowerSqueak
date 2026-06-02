accessing
mockMissingMetadataPresentationDirectory

	| directory slideDirectory |
	directory := PSMockFileDirectory from: 'Presentation' -> {
		PSPresentationLoader slidesDirectoryName -> {
			'slide1' -> {'1.morph'}}.
		PSPresentationLoader layoutsDirectoryName -> {}}.
	slideDirectory := directory / PSPresentationLoader slidesDirectoryName / 'slide1'.
	slideDirectory / '1.morph' contents: PSMockMorph new.
	^ directory