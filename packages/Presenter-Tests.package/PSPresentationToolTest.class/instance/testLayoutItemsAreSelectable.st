slide creation tests
testLayoutItemsAreSelectable

	"regressionTest for #95"
	self tool createSlideFromLayout: self presentation slideLayouts values first.
	self world doOneCycle.
	self tool slideContainer currentSlide submorphsDo: 
		[:aContentContainer | 
		self click: MouseEvent redButton at: aContentContainer center.
		self assert: self tool slideContainer selection equals: aContentContainer].