slide management
addSlide: aPSSlide afterIndex: anIndex

	aPSSlide setModel: self.
	self slides add: aPSSlide afterIndex: anIndex.