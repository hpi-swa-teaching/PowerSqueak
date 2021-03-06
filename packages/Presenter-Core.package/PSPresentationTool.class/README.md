A PSPresentationTool is a tool to create and edit PSPresentations. 

Instance Variables
	currentSlideNumber:		<Number>
	isInteractive:		<Boolean>
	magneticRasterActive:		<Boolean>
	miniatures:		<Dictionary>
	presentation:		<PSPresentation>
	presentationMode:		<Boolean>
	slideContainer:		<PSSlideContainer>
	snapActive: 	<Boolean>	
	toolBuilder:	<ToolBuilder>
	advancedMenuBarButtons: <Collection>

isInteractive
	- Shows whether the presentation is in interactive or noninteractive mode

magneticRasterActive
	- Shows whether the magnetic raster is activated or not

miniatures
	- Dictionary containing a PSMiniature for every slide of the current PSPresentation

presentation
	- The current PSPresentation

presentationMode
	- Shows whether the tool is in presentation mode

slideContainer
	- The PSSlideContainer that contains and displays the currently selected slide

snapActive
	- Indicates whether snap is active

toolBuilder
	- The toolBuilder that was used to create this PowerSqueak, needed to create
		the advancedMenuBarButtons
	
advancedMenuBarButtons
	- All buttons currently in the advancedMenuBar