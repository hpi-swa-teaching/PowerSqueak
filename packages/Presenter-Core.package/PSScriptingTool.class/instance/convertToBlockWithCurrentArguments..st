as yet unclassified
convertToBlockWithCurrentArguments: aText

	^ self class
		convert: aText
		toBlockWithArguments: self currentMethodArguments.