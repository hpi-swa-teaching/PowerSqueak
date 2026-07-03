move resize undo tests
testRedoMoveContentRestoresMovedLayoutFrame

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
	self tool redo.

	self assert: container layoutFrame leftFraction equals: after layoutFrame leftFraction.
	self assert: container layoutFrame topFraction equals: after layoutFrame topFraction