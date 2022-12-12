.PHONY:all listen visitor
all:listen visitor
listen:
	antlr4 -Dlanguage=Go -o listenparser Calc.g4
	go build -o listener_example listen/main.go 
visitor:
	antlr4 -Dlanguage=Go -no-listener -visitor -o visitorparser Calc.g4
	go build  -o visitor_example visitor/main.go
