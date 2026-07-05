A PSPresentationTool is a tool to create and edit PSPresentations. 

Instance Variables
	currentSlideNumber:		<Number>
	isInteractive:		<Boolean>
	magneticRasterActive:		<Boolean>
	presentation:		<PSPresentation>
	presentationMode:		<Boolean>
	slideContainer:		<PSSlideContainer>
	snapActive: 	<Boolean>	
	toolBuilder:	<ToolBuilder>
	advancedMenuBarButtons: <Collection>
	commandHistory:		<PSCommandHistory>
	warnBeforeClosing:	<Boolean>
	miniatureController:	<PSMiniatureController>

isInteractive
	- Shows whether the presentation is in interactive or noninteractive mode

magneticRasterActive
	- Shows whether the magnetic raster is activated or not

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

commandHistory
	- Stores undoable and redoable PowerSqueak commands for the current presentation editing session
	
warnBeforeClosing
	- Indicates whether the tool should warn before closing with unsaved changes
	
miniatureController
	- Manages the miniature sidebar, including miniature creation, highlighting, preview updates, and miniature dragging