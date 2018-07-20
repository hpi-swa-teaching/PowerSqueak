support
click: aMouseButton at: aPoint

	self hand handleEvent: (self mouse: aMouseButton downAt: aPoint).
	"(self hand instVarNamed: #mouseClickState put: nil)."
	self hand handleEvent: (self mouse: aMouseButton upAt: aPoint)