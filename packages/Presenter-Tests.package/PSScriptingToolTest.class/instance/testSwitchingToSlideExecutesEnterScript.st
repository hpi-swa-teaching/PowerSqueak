script execution tests
testSwitchingToSlideExecutesEnterScript

	self selectSlideEnterScript.
	self setInteractScript.
	self tool createSlide.
	self tool selectSlide: self slide.
	self assert: self interacted.