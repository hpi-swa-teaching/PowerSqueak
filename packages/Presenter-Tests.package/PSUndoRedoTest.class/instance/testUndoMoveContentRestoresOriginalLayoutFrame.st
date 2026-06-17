move resize undo tests
testUndoMoveContentRestoresOriginalLayoutFrame

	| container before after |
	container := self tool newTextField.
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

	self deny: container layoutFrame leftFraction equals: before layoutFrame leftFraction.

	self tool undo.

	self assert: container layoutFrame leftFraction equals: before layoutFrame leftFraction.
	self assert: container layoutFrame topFraction equals: before layoutFrame topFraction