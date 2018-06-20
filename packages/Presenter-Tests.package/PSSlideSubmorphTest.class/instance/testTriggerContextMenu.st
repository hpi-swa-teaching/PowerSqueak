context menu tests
testTriggerContextMenu

	| container |
	container := (PSMockContentContainer for: self morph).

	self slide addMorph: container fullFrame: (self slide layoutFrameFor: container).			
	self hand handleEvent: (self yellowMouseDownAt: container center).
	self assert: container menuCreated equals: true