morph loading
loadMorphObjectFromStream: aStream

	^ [aStream fileInObjectAndCode]
		on: MessageNotUnderstood
		do: [:error |
			(self isRecoverableMorphicInvalidationError: error)
				ifTrue: [error resume: (self recoveryValueFor: error)]
				ifFalse: [error pass]]