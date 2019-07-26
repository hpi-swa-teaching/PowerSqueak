script execution tests
testEnteringSlideExecutesScript
	
	self selectSlideEnterScript.
	self setInteractScript.
	self slide enter.
	self assert: self interacted.