accessing
snapSize

	^ snapSize ifNil: [snapSize := self class defaultSnapSize]