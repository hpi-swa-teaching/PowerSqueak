A PSContentContainer is a container for a single morph put on a slide.
It manages resizing and the context menu for its morph aswell as executing the morph's scripts.
Resizing is done with "handles", small rectangles, which can be dragged to resize the child morph.

Instance Variables
	content:		<Morph>
	resizeHandles:		<Dictionary>

content
	- The morph the container contains

resizeHandles
	- Dictionary containing the resizeHandles at the container's corners
