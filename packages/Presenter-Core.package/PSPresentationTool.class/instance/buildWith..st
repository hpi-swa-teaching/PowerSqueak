toolbuilder
buildWith: builder

	| windowSpec slideViewportSpec buttonBarTopSpec menuBarSpec window |
	windowSpec := self createWindowSpec: builder.
		
	slideViewportSpec := self createSlideViewportSpec: builder. 
	windowSpec children add: slideViewportSpec.
	
	buttonBarTopSpec := self createButtonBarTopSpec: builder.
	windowSpec children add: buttonBarTopSpec.
	
	menuBarSpec := self createMenuBarSpec: builder.
	windowSpec children add: menuBarSpec.
	
	window := builder build: windowSpec.
	self createSlideContainerIn: (builder widgetAt: #SlideViewport).
	
	self createSlide.
	self window: window.
	
	^ window