presentation serialization
loadPresentation
	
	self warn: self class riskyOperationMessage trueChoice: [] falseChoice: [^ self].
	PSPresentationLoader load
		ifNotNil:  [:aPresentation | self updatePresentation: aPresentation]