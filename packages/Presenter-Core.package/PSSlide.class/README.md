A PSSlide is a Morph to place content on.
Every morph put on a PSSlide is wrapped in a PSContentContainer. The slide also stores visibility and presentation ownership information. Whenever it is resized, all the contents are rescaled with a fixed width-to-height ratio.

Instance Variables
	isHidden: <Boolean>
	presentation: <PSPresentation>
	
isHidden
	- Indicates whether this slide should be skipped in presentation mode

presentation
	- The presentation this slide belongs to