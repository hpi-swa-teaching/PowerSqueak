A PSSlideSection is a named group of slides that follow each other in a PSPresentation. Each section begins at one slide, its first slide. A slide belongs to a section when that section begins at the same slide or an earlier one, and no other section begins in between.

Instance Variables
	name		the name shown to the user (a String)
	firstSlide	the slide where the section begins (a PSSlide)
	level		the nesting depth of the section (an Integer, 1 = top level)
	collapsed	whether the section is collapsed in the sidebar (a Boolean)
