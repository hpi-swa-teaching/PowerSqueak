move resize undo tests
testUndoMoveThenUndoInsertRemovesSameContainer

	| container before after |
	container := self tool contentCreationController newTextField.
	before := PSContentLocation of: container.

	container layoutFrame
		leftFraction: 0.2;
		topFraction: 0.2;
		rightFraction: 0.5;
		bottomFraction: 0.5.
	container layoutChanged.
	after := PSContentLocation of: container.

	self tool doCommand:
		(PSMoveContentCommand
			on: container
			from: before
			to: after).

	self tool undo.
	self assert: (self currentSlide submorphs includes: container).

	self tool undo.
	self deny: (self currentSlide submorphs includes: container)