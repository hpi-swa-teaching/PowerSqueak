accessing
testLayoutItemsAreSelectable

	"regressionTest for #95 #TODO"
	"self tool createSlideFromLayout: self presentation slideLayouts values first.
	self tool slideContainer currentSlide fullBounds.
	self tool slideContainer currentSlide submorphsDo: 
		[:aContentContainer | self click: MouseEvent redButton at: aContentContainer center.
		self assert: self tool slideContainer selection equals: aContentContainer]."