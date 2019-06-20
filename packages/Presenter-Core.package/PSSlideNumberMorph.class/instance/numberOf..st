accessing
numberOf: aSlide

	^ (Text string: aSlide slideNumber asString runs: self text runs)