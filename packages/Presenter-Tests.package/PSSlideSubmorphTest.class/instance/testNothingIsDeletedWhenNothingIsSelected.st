selection tests
testNothingIsDeletedWhenNothingIsSelected

	| submorphs |
	submorphs := self slide submorphs.
	self slideContainer selection deleteContent.
	self assert: self slide submorphs equals: submorphs