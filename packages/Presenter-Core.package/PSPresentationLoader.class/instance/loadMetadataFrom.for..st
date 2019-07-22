slide loading
loadMetadataFrom: aDirectory for: aSlide

	| instanceVarDict errors |	
	(aDirectory /'metadata.dict') exists ifTrue: 
		[[ self fileErrors at: aDirectory localName put: 0.
			instanceVarDict := 
				(aDirectory readOnlyFileNamed: 'metadata.dict') fileInObjectAndCode.
		self update: aSlide with: instanceVarDict]
			on: Error
			do: [errors := self fileErrors at: aDirectory localName.
				self fileErrors at: aDirectory localName put: errors + 1]].
	 	