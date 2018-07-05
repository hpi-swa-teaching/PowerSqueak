running
setUp 

	super setUp.
	self container: PSSlideContainer new.
	self slide: PSSlide new.
	self slide setModel: PSPresentationTool new.
	self container showSlide: self slide.
	self container extent: self world extent / 2.
	self container openInWorld: self world