dropping/grabbing
acceptDroppingMorph: aMorph event: anEvent

	self tool sectionController
		reanchorSection: self section
		withDroppedMorph: aMorph