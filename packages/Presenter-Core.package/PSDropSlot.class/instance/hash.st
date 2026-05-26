comparing
hash

	^ (self insertionIndex hash bitXor: self indent hash)
		bitXor: self targetSection identityHash
