undo-redo
recordMoveFromRememberedLocation

	| before after |
	before := self undoStartLocation.
	before ifNil: [^ self].
	after := PSContentLocation of: self.
	self clearUndoStartLocation.
	self slideContainer ifNil: [^ self].
	self slideContainer model ifNil: [^ self].
	self slideContainer model doCommand:
		(PSMoveContentCommand
			on: self
			from: before
			to: after)