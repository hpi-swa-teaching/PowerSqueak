slide deletion tests
testDeleteFirstSlide

	| deletedSlide slide |
	self setUpSlideDeletion.
	
	deletedSlide := self tool slides first.
	slide := self tool slides second.
	
	self tool deleteSlide: 1.
	self assert: self tool slides first = slide.