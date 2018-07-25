running
setUp 

	super setUp.
	self slideContainer: PSSlideContainer new.
	self slideContainer setModel: PSPresentationTool new.
	self slide: PSSlide new.
	self slide setModel: self slideContainer model.
	self slideContainer 
		showSlide: self slide;
		extent: self world extent / 2;
		openInWorld: self world