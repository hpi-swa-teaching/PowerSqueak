presentation loading tests
testRecoveryValueUsesMessageArgument

	| rectangle unaryError keywordError |
	rectangle := 0 @ 0 corner: 10 @ 10.
	unaryError := [nil localBounds] on: MessageNotUnderstood do: [:error | error].
	keywordError := [nil localBoundsToGlobal: rectangle] on: MessageNotUnderstood do: [:error | error].
	self
		assert: (self loader recoveryValueFor: unaryError) isNil;
		assert: (self loader recoveryValueFor: keywordError) equals: rectangle