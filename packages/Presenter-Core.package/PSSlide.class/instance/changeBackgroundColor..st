styling
changeBackgroundColor: aColor

	(self valueOfProperty: #ignoreNextBackgroundColorChange ifAbsent: [false])
		ifTrue: [
			self setProperty: #ignoreNextBackgroundColorChange toValue: false.
			^ self].

	self color = aColor ifTrue: [^ self].

	self slideContainer ifNil: [^ self basicColor: aColor].
	self slideContainer model ifNil: [^ self basicColor: aColor].
	self slideContainer model doCommand:
		(PSChangeSlideColorCommand on: self setColor: aColor)