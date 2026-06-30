tests boarder
testRecolorBorderActionIsWiredUp

	| data |
	data := self aContainerOnSlide recolorBorderData.
	self assert: (data at: #action) equals: #recolorBorder.
	self assert: (data at: #label) equals: 'Border'.
	self assert: (data at: #size) equals: #bigButtonSize