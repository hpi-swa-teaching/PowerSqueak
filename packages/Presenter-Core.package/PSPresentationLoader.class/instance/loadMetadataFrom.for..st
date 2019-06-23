slide loading
loadMetadataFrom: aDirectory for: aSlide

	| instanceVarDict |	
	(aDirectory /'metadata.dict') exists ifTrue: 
		[[instanceVarDict := Dictionary readFrom: (aDirectory readOnlyFileNamed: 'metadata.dict').
		self update: aSlide with: instanceVarDict]
			on: Error
			do: [self filesErrorReport at: aDirectory/ 'metadata' asString put: 'file corrupted']]
	 	