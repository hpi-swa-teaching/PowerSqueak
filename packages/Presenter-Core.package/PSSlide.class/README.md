A PSSlide is a Morph to place content on.
Every morph put on a PSSlide is put into a PSContentContainer.
Whenever it is resized, all the contents are rescaled with a fixed width-to-height ratio.

Instance Variables
	isHidden: <Boolean>
	presentation: <PSPresentation>
	
presentation
	- the presentation the slide is currently on. Is set to nil if the slide was 
		moved out via its PSMiniature