string manipulation
convertToBlockWithCurrentArguments: aText

	^ self class
		convert: aText
		toBlockWithArguments: self currentMethodArguments.