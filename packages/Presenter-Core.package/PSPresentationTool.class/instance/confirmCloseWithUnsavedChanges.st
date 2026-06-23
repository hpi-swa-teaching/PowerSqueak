window closing
confirmCloseWithUnsavedChanges

	| choice |
	self hasUnsavedChanges ifFalse: [^ true].
	choice := self askForUnsavedChangesCloseAction.
	choice = #save ifTrue: [^ self savePresentation].
	choice = #discard ifTrue: [^ true].
	^ false 