instance variable test
testIsHiddenIsSavedCorreclty

	| aDictionary |
	self slides first hideSlide.
	aDictionary := self saver createInstanceVarDictionaryOf: self slides first.
	self assert: (aDictionary at: #isHidden) equals: true