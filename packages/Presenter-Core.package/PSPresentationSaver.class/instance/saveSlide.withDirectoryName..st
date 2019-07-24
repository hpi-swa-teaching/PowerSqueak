as yet unclassified
saveSlide: aSlide withDirectoryName: aString

	| aDirectory |
	aDirectory := self presentationDirectory createDirectory: aString.
	self saveSubmorphsOf: aSlide in: aDirectory.
	self saveInstanceVarsOf: aSlide in: aDirectory