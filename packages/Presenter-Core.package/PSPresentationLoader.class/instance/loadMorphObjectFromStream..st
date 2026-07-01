morph loading
loadMorphObjectFromStream: aStream

	^ [aStream fileInObjectAndCode]
		on: MessageNotUnderstood
		do: [:error |
			(self isRecoverableMorphicInvalidationError: error)
				ifTrue: [error resume: nil]
				ifFalse: [error pass]]