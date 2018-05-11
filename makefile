MAIN_FILE=HelloWorld
CLASS_DIR=./out

all: compile run

compile:
	@echo "Compiling..."
	@docker run -it --rm -v $(PWD):/usr/src -w /usr/src java:8-jdk javac -d $(CLASS_DIR) $(MAIN_FILE).java

run:
	@echo "Running..."
	@echo "------------------"
	@docker run -it --rm -v $(PWD):/usr/src -w /usr/src java:8-jdk java -cp $(CLASS_DIR) $(MAIN_FILE)
