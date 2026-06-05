A PSSlideSection is a named group of consecutive slides in a PSPresentation. A section begins at its first slide and runs until the next section begins.

Instance Variables
	name		the name shown to the user (a String)
	firstSlide	the slide where the section begins (a PSSlide)
	level		the nesting depth, 1 = top level (an Integer)
	collapsed	whether the section is collapsed in the sidebar (a Boolean)
