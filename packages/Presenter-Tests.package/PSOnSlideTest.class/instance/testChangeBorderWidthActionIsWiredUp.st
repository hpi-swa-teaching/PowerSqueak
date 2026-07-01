tests boarder
testChangeBorderWidthActionIsWiredUp

	| data |
	data := self aContainerOnSlide changeBorderWidthData.
	self assert: (data at: #action) equals: #changeBorderWidth.
	self assert: (data at: #label) equals: 'Border width'.
	self assert: (data at: #size) equals: #bigButtonSize