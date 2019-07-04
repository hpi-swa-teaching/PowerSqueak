initialize-release
setContent: aMorph
	
	self 
		content: aMorph;
		position: aMorph position - (self class borderWidth*2);
		extent: aMorph extent + (self class borderWidth * 4);
		"bounds: (aMorph bounds expandBy: self class borderWidth);"
		addMorph: aMorph;
		addMouseCaptureFilter: self