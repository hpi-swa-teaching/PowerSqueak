slide loading
loadMetadataFrom: aDirectory for: aSlide

	| instanceVarDict |	
	(aDirectory /'metadata.dict') exists ifTrue: 
		[[ self fileErrors at: aDirectory localName put: 0.
			instanceVarDict := Dictionary readFrom: 
			(aDirectory readOnlyFileNamed: 'metadata.dict').
		self update: aSlide with: instanceVarDict]
			on: Error
			do: [self fileErrors at: aDirectory localName put: 1]].
	 	