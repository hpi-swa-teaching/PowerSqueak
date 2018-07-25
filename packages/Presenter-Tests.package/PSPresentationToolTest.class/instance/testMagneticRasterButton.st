button tests
testMagneticRasterButton

	| button modeBefore |
	button := self window allMorphs detect: 
		[:m | m externalName = (self tool magneticRasterButtonData at: #name)].
	modeBefore := self magneticRasterActive.
	
	self click: MouseEvent redButton at: button boundsInWorld center.
	self assert: self magneticRasterActive equals: modeBefore not.
	
	self click: MouseEvent redButton at: button boundsInWorld center.
	self assert: self magneticRasterActive equals: modeBefore
	