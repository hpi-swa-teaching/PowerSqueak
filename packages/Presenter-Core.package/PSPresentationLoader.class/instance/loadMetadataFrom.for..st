slide loading
loadMetadataFrom: aDirectory for: aSlide

	| instanceVarDict |	
	(aDirectory /'metadata.dict') exists ifTrue: 
		[[ self fileErrors at: aDirectory localName put: 0.
			instanceVarDict := 
				(aDirectory readOnlyFileNamed: 'metadata.dict') fileInObjectAndCode.
		self update: aSlide with: instanceVarDict]
			on: Error
			do: [self fileErrors at: aDirectory localName incrementBy: 1]].
	 	