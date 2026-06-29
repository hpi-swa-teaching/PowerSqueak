A PSSlideRangeParser converts a user-entered slide selection such as '2-5' or '1,8,9' into the matching slide indices, validated against the presentation's slide count. Malformed, reversed and out-of-range selections raise an error.

Instance Variables
	slideCount:		<Integer>
	
slideCount
	- the number of slides a selection is validated against
