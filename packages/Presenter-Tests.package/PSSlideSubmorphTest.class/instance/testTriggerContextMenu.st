context menu tests
testTriggerContextMenu

	| container |
	container := (PSMockContentContainer for: self morph).

	self slide addMorph: container.			
	self hand handleEvent: (self yellowMouseDownAt: container center).
	self assert: container menuCreated equals: true