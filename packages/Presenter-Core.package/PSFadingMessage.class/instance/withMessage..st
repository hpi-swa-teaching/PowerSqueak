accessing
withMessage: aString

	self content contents: aString.		"here no cascade because it fixes a presentation bug"
	self bounds: (self content position corner: self content bottomRight + self class defaultPadding).
	self content center: self center