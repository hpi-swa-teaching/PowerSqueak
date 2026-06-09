slide loading
loadMetadataFrom: aDirectory for: aSlide

	[self fileErrors at: aDirectory localName put: 0.
	self update: aSlide with: (self loadMetadataDictionaryFrom: aDirectory)]
		on: Error
		do: [self fileErrors at: aDirectory localName put: 1].
	 	