slide loading
loadMetadataFrom: aDirectory for: aSlide

	| metadata |
	[self fileErrors at: aDirectory localName put: 0.
	metadata := self loadMetadataDictionaryFrom: aDirectory.
	self recordMissingMorphFilesIn: aDirectory fromMetadata: metadata.
	self update: aSlide with: metadata]
		on: Error
		do: [self fileErrors at: aDirectory localName put: 1]