move resize undo tests
testRedoResizeContentRestoresResizedLayoutFrame

	| container before after |
	container := self tool contentCreationController newTextField.
	before := PSContentLocation of: container.

	container layoutFrame
		rightFraction: 0.9;
		bottomFraction: 0.9.
	container layoutChanged.
	after := PSContentLocation of: container.

	self tool doCommand:
		(PSResizeContentCommand
			on: container
			from: before
			to: after).

	self tool undo.
	self tool redo.

	self assert: container layoutFrame rightFraction equals: after layoutFrame rightFraction.
	self assert: container layoutFrame bottomFraction equals: after layoutFrame bottomFraction