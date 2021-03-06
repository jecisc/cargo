actions
editPlatformRequirements
	| requirementsString |
	requirementsString := UIManager default
		request: 'Platform requirements for this package (or empty if no constraint)'
		initialAnswer: (ongoingPackageUnit platformRequirements
			ifEmpty: [ '' ]
			ifNotEmpty: [ :string | Character space join: string ])
		title: 'Platform requirements of ' , ongoingPackageUnit packageName , ' package'.
	requirementsString ifNil: [ ^ self ].
	ongoingPackageUnit platformRequirements: 
		((Character space split: requirementsString)
			collect: #asSymbol
			as: Array).
	
	self updatePlatformRequirementsMorph