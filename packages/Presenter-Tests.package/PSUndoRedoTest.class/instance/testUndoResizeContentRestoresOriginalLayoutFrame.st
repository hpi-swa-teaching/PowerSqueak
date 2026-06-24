move resize undo tests
testUndoResizeContentRestoresOriginalLayoutFrame

	| container before after |
	container := self tool newTextField.
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

	self assert: container layoutFrame rightFraction equals: before layoutFrame rightFraction.
	self assert: container layoutFrame bottomFraction equals: before layoutFrame bottomFraction