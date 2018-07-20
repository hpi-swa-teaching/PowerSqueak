saving
createDirectory: aString in: aFileDirectory

	aFileDirectory createDirectory: aString.
	^ aFileDirectory / aString