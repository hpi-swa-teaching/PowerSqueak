A PSPresentation is a container for PSSlides.
It manages slide creation, deletion and related tasks.
PSPresentations are also responsible for saving themselves.
For loading a PSPresentation use a PSPresentationLoader.

Instance Variables
	name:			<String>
	slides:			<OrderedCollection>
	slideLayouts:	<Dictionary>
	sections: 		<OrderedCollection>

name
	- name of the presentation

slides
	- The list of slides to manage
	
slideLayouts
	- Keeps the name of a layout mapped to the layout's slide
	
sections
	- tracks all the sections
