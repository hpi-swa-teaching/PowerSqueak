accessor tests
testAddContentCommandAccessors
	| command morph |
	morph := Morph new.
	command := PSAddContentCommand new.
	command slide: #aSlide; morph: morph; container: #aContainer; location: #aLocation.
	self assert: command slide equals: #aSlide.
	self assert: command morph == morph.
	self assert: command container equals: #aContainer.
	self assert: command location equals: #aLocation
