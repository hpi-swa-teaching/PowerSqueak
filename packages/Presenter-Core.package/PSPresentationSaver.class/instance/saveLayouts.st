saving
saveLayouts

	| aDirectory |
	aDirectory := self createDirectory: self class layoutsDirectoryName in: self presentationDirectory.
	self presentation slideLayouts keysAndValuesDo: [:key :value |
		self saveSlide: value inDirectory: aDirectory withName: (self layoutDirectoryNameOf: key)]