morph loading
isRecoverableMorphicInvalidationError: anError

	^ anError receiver isNil
		and: [#(#localBounds #localBoundsToGlobal:) includes: anError message selector]