toolbuilder
buildWith: builder

	| windowSpec slideViewportSpec buttonBarTopSpec window |
	windowSpec := self createWindowSpec: builder.
		
	slideViewportSpec := self createSlideViewportSpec: builder. 
	windowSpec children add: slideViewportSpec.
	
	buttonBarTopSpec := self createButtonBarTopSpec: builder.
	windowSpec children add: buttonBarTopSpec.
	
	window := builder build: windowSpec.
	self createSlideContainerIn: (builder widgetAt: #SlideViewport).
	
	self createSlide.
	
	^ window