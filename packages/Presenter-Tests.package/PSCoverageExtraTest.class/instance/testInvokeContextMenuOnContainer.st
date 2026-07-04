extra coverage tests
testInvokeContextMenuOnContainer
	| container |
	container := self tool contentCreationController newTextField.
	container invokeContextMenu.
	self assert: (self currentSlide submorphs includes: container)
