Class {
	#name : 'MyJavaDocGen',
	#superclass : 'Object',
	#category : 'MyJavaDocGen',
	#package : 'MyJavaDocGen'
}

{ #category : 'accessing' }
MyJavaDocGen >> class: aClass [
	"create a html documentation for the class"
	|stream|.
	stream:= WriteStream on: String new.
	stream nextPutAll: '<html><body><h2>', aClass name, '</h2>';
	nextPutAll: '<p>', aClass comment, '</p>'.
	[ aClass methods ] do: [ :m | stream nextPutAll: '<h3>',m selectors asString , '</h3><p>', m comment, '</p>'].
	stream nextPutAll: '</body></html>'.
	^ stream contents.
]
