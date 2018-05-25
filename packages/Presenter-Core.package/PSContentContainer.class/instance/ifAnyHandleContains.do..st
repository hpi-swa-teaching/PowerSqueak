event handling
ifAnyHandleContains: aPoint do: aBlock

	self resizeHandles do: [:each |
		(each containsPoint: aPoint)
			ifTrue: [^ aBlock value: each] ]