running
setUp 

	super setUp.
	self container: PSSlideContainer new.
	self container setModel: PSPresentationTool new.
	self slide: PSSlide new.
	self slide setModel: self container model.
	self container showSlide: self slide.
	self container extent: self world extent / 2.
	self container openInWorld: self world