convenience
createSlideAfterIndex: aNumber
	
	self tool addSlide: PSSlide new afterIndex: aNumber.
	self tool selectSlide: self slide.
	self step