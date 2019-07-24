running
setUp 

	| tool |
	super setUp.
	tool := PSPresentationTool openIn: self world.
	self slideContainer: tool model slideContainer.
	self slide: self tool currentSlide.