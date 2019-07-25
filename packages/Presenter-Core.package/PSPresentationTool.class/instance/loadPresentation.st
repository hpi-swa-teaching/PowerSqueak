presentation serialization
loadPresentation
	
	| presentation |
	self warn: self class riskyOperationMessage trueChoice: [] falseChoice: [^ self].
	presentation := PSPresentationLoader load.
	presentation
		ifNotNil:  [:aPresentation | self updatePresentation: aPresentation]