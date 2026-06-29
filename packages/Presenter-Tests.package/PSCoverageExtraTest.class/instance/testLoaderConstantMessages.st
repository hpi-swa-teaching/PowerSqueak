extra coverage tests
testLoaderConstantMessages
	self assert: PSPresentationLoader loadCorruptionMessage isString.
	self assert: PSPresentationLoader loadQuestionMessage isString
