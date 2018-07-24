toolbuilder
buildWith: builder

	| windowSpec miniatureViewSpec slideViewportSpec buttonBarTopSpec menuBarSpec window |
	windowSpec := self createWindowSpec: builder.
	
	miniatureViewSpec := self createMiniatureViewSpec: builder. 
	windowSpec children add: miniatureViewSpec.
			
	slideViewportSpec := self createSlideViewportSpec: builder. 
	windowSpec children add: slideViewportSpec.
	
	buttonBarTopSpec := self createButtonBarTopSpec: builder.
	windowSpec children add: buttonBarTopSpec.
	
	menuBarSpec := self createMenuBarSpec: builder.
	windowSpec children add: menuBarSpec.
	
	window := builder build: windowSpec.
	self createSlideContainerIn: (builder widgetAt: #SlideViewport).
	
	self selectSlideNumber: 1.
	
	self afterBuildWith: builder.
	
	^ window