tests
testGetPackagesShouldReturnAllPackageNamesInRepository
	
	self 
		assertCollection: greaseRepository packageNames
		hasSameElements: #(#myproject #goferbar #'grease-core' #'grease-pharo30-core' #'grease-pharo30-slime' #'grease-pharo40-slime')