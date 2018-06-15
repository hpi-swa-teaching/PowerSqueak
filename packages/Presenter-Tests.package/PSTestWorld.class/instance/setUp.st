running
setUp

	super setUp.

	self world: ((PasteUpMorph newWorldForProject: nil)
		extent: Display extent;
		viewBox: (0@0 extent: Display extent);
		yourself).
		
	(self world instVarNamed: #worldState)
		instVarNamed: #canvas
		put: (Form extent: Display extent depth: 32) getCanvas. 
		
	self hand: HandMorphForEventTests new.
	
	self world
		removeHand: self world firstHand; "the default hand"
		addHand: self hand