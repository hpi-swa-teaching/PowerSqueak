comparing
hash
	"hash is implemented because = is implemented"
	
	^ (self class hash bitXor: self style hash) bitXor: self scalingSource hash
	