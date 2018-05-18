as yet unclassified
isImageFileName: aString

	^ ImageReadWriter allTypicalFileExtensions anySatisfy: 
		[:ending | aString endsWith: ending]