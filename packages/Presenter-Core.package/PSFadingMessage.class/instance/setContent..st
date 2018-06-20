accessing
setContent: aString

	self content contents: aString.		"here no cascade because it fixes a presentation bug"
	self bounds: (self content position corner: self content bottomRight + self defaultPadding).
	self content center: self center.