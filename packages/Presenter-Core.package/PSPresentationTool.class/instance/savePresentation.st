presentation serialization
savePresentation

	self slideContainer removeSelection.
	^ self
		warn: self class riskyOperationMessage
		trueChoice: [
			(PSPresentationSaver save: self presentation)
				ifTrue: [
					self markSaved.
					true]
				ifFalse: [false]]
		falseChoice: [false]