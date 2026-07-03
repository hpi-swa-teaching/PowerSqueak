initialize-release
setContent: aMorph

	self
		content: aMorph;
		position: aMorph position - (self class borderWidth * 2);
		extent: aMorph extent + (self class borderWidth * 4);
		addMorph: aMorph;
		addMouseCaptureFilter: self