extra coverage tests
testInvokeContextMenuOnContainer
	| container |
	container := self tool newTextField.
	container invokeContextMenu.
	self assert: (self currentSlide submorphs includes: container)
