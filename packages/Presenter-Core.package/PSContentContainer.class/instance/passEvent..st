event handling
passEvent: anEvent

		(self content handlesMouseDown: anEvent)
		ifTrue: [^self content mouseDown: anEvent]
		ifFalse: [^self grabChild]