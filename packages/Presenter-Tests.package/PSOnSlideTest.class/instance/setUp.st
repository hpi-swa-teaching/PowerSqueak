running
setUp 

	| tool |
	super setUp.
	tool := PSPresentationTool openIn: self world.
	tool model warnBeforeClosing: false.
	self slideContainer: tool model slideContainer.
	self slide: self tool currentSlide.