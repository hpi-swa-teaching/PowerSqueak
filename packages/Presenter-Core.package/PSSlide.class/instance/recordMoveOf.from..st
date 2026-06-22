undo-redo
recordMoveOf: aPSContentContainer from: aPSContentLocation

	self slideContainer ifNil: [^ self].
	self slideContainer model ifNil: [^ self].
	self slideContainer model doCommand:
		(PSMoveContentCommand
			on: aPSContentContainer
			from: aPSContentLocation
			to: (PSContentLocation of: aPSContentContainer))