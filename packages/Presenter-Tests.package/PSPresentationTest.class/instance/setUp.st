accessing
setUp

	super setUp.
	self tool: (PSPresentationTool  openIn: self world) model.
	self presentation: self tool presentation.