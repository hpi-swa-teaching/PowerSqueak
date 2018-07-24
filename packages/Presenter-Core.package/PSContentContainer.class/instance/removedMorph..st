submorphs-add/remove
removedMorph: aMorph

	aMorph = self content 
		ifTrue: [self abandon]