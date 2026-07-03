toolbuilder
afterBuildWith: aBuilder

	self
		createSlideContainerIn: (aBuilder widgetAt: #SlideViewport);
		selectSlideAt: 1;
		toolBuilder: aBuilder.
	aBuilder class = MorphicToolBuilder
		ifTrue: [self styleDropDownButtons: aBuilder]