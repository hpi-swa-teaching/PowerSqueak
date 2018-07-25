context menu tests
testTriggerContextMenu

	| container |
	container := (PSMockContentContainer for: self morph).
	self slide addMorph: container fullFrame: (self slide layoutFrameFor: container).			
	
	self click: MouseEvent yellowButton at: container center.	
	self assert: container menuCreated equals: true