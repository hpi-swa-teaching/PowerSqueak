convenience
convert: aString toBlockWithArguments: aCollection

	^ '[:' , (String streamContents: [:s | aCollection asStringOn: s delimiter: ' :']), '|', aString, ']' 