running
testOnlyOneContainerHasHandles
	
	| newContainer newMorph |
	newMorph := Morph new.
	self slide addContent: newMorph.
	newContainer := newMorph owner.
	
	self assert: ({self container . newContainer} select: [:aContainer | aContainer hasHandles]) size equals: 1.
	
	self click: MouseEvent redButton at: self morph center.
	
	self assert: ({self container . newContainer} select: [:aContainer | aContainer hasHandles]) size equals: 1.