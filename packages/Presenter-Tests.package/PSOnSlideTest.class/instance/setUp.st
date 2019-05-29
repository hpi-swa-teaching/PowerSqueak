running
setUp 

	| tool |
	super setUp.
	tool := PSPresentationTool openIn: self world.
	self slideContainer: tool model slideContainer.
	self slide: PSSlide new.
	self slide setModel: self slideContainer model.
	self slideContainer 
		showSlide: self slide;
		extent: self world extent / 2;
		openInWorld: self world