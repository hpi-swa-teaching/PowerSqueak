button tests
testSnapButton

	| button modeBefore |
	button := self window allMorphs detect: 
		[:m | m externalName = (self tool snapButtonData at: #name)].
	modeBefore := self snapActive.
	
	self 
		click: MouseEvent redButton at: button boundsInWorld center;
		assert: self snapActive equals: modeBefore not.
	
	self 
		click: MouseEvent redButton at: button boundsInWorld center;
		assert: self snapActive equals: modeBefore
	