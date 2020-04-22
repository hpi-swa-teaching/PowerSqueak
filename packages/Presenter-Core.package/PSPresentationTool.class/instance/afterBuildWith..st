toolbuilder
afterBuildWith: aBuilder
	
	self createSlideContainerIn: (aBuilder widgetAt: #SlideViewport).
	self selectSlideAt: 1.
	self toolBuilder: aBuilder.
	aBuilder class = MorphicToolBuilder
		ifTrue: [self styleDropDownButtons: aBuilder]