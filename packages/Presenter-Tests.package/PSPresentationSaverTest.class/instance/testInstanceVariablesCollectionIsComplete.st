instance variable test
testInstanceVariablesCollectionIsComplete

	| aDictionary |
	aDictionary := self saver createInstanceVarDictionaryOf: self slides first.
	self assert: aDictionary keys asBag equals: PSSlide instanceVarsToBeSaved asBag