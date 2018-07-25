running
createWorld

	self world: ((PasteUpMorph newWorldForProject: nil)
		extent: Display extent;
		viewBox: (0@0 extent: Display extent);
		yourself).
		
	(self world instVarNamed: #worldState)
		instVarNamed: #canvas
		put: (Form extent: Display extent depth: 32) getCanvas.
	