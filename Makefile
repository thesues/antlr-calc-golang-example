.PHONY:all listen visitor
antlr4=java -Xmx500M -cp "/usr/local/lib/antlr-4.7.1-complete.jar:$CLASSPATH" org.antlr.v4.Tool
all:listen visitor
listen:
	$(antlr4) -Dlanguage=Go -o listen/parser Calc.g4
	go build -o listener_example listen/main.go 
visitor:
	$(antlr4) -Dlanguage=Go -no-listener -visitor -o visitor/parser Calc.g4
	go build  -o visitor_example visitor/main.go
