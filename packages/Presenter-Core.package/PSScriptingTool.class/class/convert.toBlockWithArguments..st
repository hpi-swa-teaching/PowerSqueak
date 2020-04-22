convenience
convert: aString toBlockWithArguments: aCollection

	^ '[' , (self blockArgumentsStringFrom: aCollection) , '|', aString, ']' 