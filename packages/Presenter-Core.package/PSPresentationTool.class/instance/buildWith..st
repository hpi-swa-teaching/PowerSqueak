toolbuilder
buildWith: aBuilder

	| window windowSpec |
	windowSpec := self createWindowSpec: aBuilder.
	(self createAllSpecsWith: aBuilder) do: [:each | windowSpec children add: each].
	
	window := aBuilder build: windowSpec.
	self createSlideContainerIn: (aBuilder widgetAt: #SlideViewport).	
	self createAdvancedMenuBarIn: (aBuilder widgetAt: #AdvancedMenuBar).	
	self selectSlideNumber: 1.	
	self afterBuildWith: aBuilder.	
	self 	toolBuilder: aBuilder.
	^ window