initialize-release
initializeSlideNumberMorph

	self slideNumberMorph: PSTextMorph new.
	self setSlideNumberMorphContents: 6.
	self addContent: self slideNumberMorph.
	self slideNumberMorph owner 
		frameFractions: (0.9 @ 0.9 corner: 1 @ 1);
		removeResizeHandles
	