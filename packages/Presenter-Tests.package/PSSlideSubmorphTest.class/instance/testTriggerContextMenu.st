context menu tests
testTriggerContextMenu

	| container |
	container := (PSContentContainerForTests for: Morph new)
		center: self slide center;
		yourself.
		
	self slide addMorph: container.			
	self hand handleEvent: (self yellowMouseDownAt: self slide center).
	self assert: container menuCreated equals: true