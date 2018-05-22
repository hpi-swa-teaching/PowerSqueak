running
setUp

	super setUp.

	self world: ((PasteUpMorph newWorldForProject: nil)
		extent: 300@200;
		viewBox: (0@0 extent: 300@200);
		yourself).
		
	(self world instVarNamed: #worldState)
		instVarNamed: #canvas
		put: (Form extent: 300@200 depth: 32) getCanvas. 
		
	self hand: HandMorphForEventTests new.
	
	self world
		removeHand: self world firstHand; "the default hand"
		addHand: self hand