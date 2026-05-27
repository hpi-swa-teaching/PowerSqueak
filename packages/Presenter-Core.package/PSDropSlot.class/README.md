A PSDropSlot is a value object describing one valid drop position in the slide sidebar. It records the insertion index a dropped slide would land at, the indent level (section nesting depth) it would sit at, and the section it would belong to.

Instance Variables
	insertionIndex	the 1-based slide-index a dropped slide would occupy (an Integer)
	indent			the nesting depth (number of enclosing sections, 0 = un-sectioned) (an Integer)
	targetSection	the section the dropped slide would belong to (a PSSlideSection or nil)
