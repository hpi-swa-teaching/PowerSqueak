building
cancelMorph

	| cancel |
	cancel := StringMorph contents: 'Cancel'.
	cancel on: #mouseDown send: #close to: self.
	^ cancel