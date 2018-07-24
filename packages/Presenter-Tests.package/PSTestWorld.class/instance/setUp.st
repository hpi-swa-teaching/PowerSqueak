running
setUp
	"Inspired of UserInputEventTest"
	super setUp.

	self world: ((PasteUpMorph newWorldForProject: nil)
		extent: Display extent;
		viewBox: (0@0 extent: Display extent);
		yourself);
		name: 'TestWorld'.
		
	(self world instVarNamed: #worldState)
		instVarNamed: #canvas
		put: (Form extent: Display extent depth: 32) getCanvas.
		
	self hand: HandMorph new.
	
	self world
		removeHand: self world firstHand; "the default hand"
		addHand: self hand;
		activeHand: self hand