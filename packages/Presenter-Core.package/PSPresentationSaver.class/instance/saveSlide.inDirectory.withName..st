saving
saveSlide: aSlide inDirectory: parentDirectory withName: aString

	| aDirectory |
	aDirectory := self createDirectory: aString in: parentDirectory.
	self saveSubmorphsOf: aSlide in: aDirectory.
	self saveInstanceVarsOf: aSlide in: aDirectory