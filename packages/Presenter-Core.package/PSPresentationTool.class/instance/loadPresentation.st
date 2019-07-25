presentation serialization
loadPresentation
	
	| presentations presentationName |
	self warn: self class riskyOperationMessage trueChoice: [] falseChoice: [ ^ self ].
	presentations := self defaultDirectory directoryNames.
	presentationName := UIManager default 
							chooseFrom: presentations 
							values: presentations 
							title: self loadQuestionMessage.
	presentationName ifNotNil: [ self loadPresentationFromDirectory: self defaultDirectory / presentationName ]	