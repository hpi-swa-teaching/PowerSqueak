undo-redo
recordResizeFromRememberedLocation

	| before after |
	before := self undoStartLocation.
	before ifNil: [^ self].
	after := PSContentLocation of: self.
	self clearUndoStartLocation.
	self slideContainer ifNil: [^ self].
	self slideContainer model ifNil: [^ self].
	self slideContainer model doCommand:
		(PSResizeContentCommand
			on: self
			from: before
			to: after)