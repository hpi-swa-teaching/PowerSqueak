instance variable test
testSlideColorIsSavedCorrectly

	| dictionary color |
	color := Color red.
	self slides first color: color.
	dictionary := self saver createInstanceVarDictionaryOf: self slides first.
	self assert: (dictionary at: #color) equals: color