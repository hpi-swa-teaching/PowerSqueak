as yet unclassified
enablePresentationMode 

	DisplayScreen fullScreenOn.
	self owner removeMorph: self.
	self 
		openInWorld;
		position: 0@0;
		extent: World extent;
		color: Color black