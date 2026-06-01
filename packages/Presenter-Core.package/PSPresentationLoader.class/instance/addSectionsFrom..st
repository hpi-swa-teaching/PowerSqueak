slide loading
addSectionsFrom: aDirectory

	| data |
	data := [(aDirectory readOnlyFileNamed: self class sectionsFileName) fileInObjectAndCode]
		on: Error
		do: [:anError | ^ self].
	self addSectionsFromData: data