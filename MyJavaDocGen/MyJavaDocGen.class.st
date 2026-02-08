Class {
	#name : 'MyJavaDocGen',
	#superclass : 'Object',
	#category : 'MyJavaDocGen',
	#package : 'MyJavaDocGen'
}

{ #category : 'accessing' }
MyJavaDocGen >> class: aClass [
	"create a html documentation for the class"
	^ '<html><body><h2>', aClass name, '</h2>',
		aClass comment, '</body></html>',
		[ aClass methods ] do: [ :m | '<h3>',m, '</h3><p>', m comment, '</p>'],
		'</body></html>'
]
