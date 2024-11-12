# Define the Erlang compiler
ERLC = erlc

# Find all .erl files in the current directory
SRCS = $(wildcard *.erl)

# Define the object files (replace .erl with .beam)
BEAMS = $(SRCS:.erl=.beam)

# Default target
all: $(BEAMS)

# Compile each .erl file
%.beam: %.erl
	$(ERLC) $<

# Problemas individuales
run_problema01:
	@echo "Ejecutando..."
	erl -noshell -s problema01 bucle_hw -s init stop

run_problema02:
	@echo "Ejecutando..."
	@read -p "Ingrese un número para calcular su factorial: " num; \
	if [ -z "$$num" ] || ! [ "$$num" -eq "$$num" ] 2>/dev/null; then \
		echo "Por favor, ingrese un número válido."; \
	else \
		erl -noshell -eval "io:format('El factorial de ~p es: ~p~n', [$$num, problema02:fact($$num)]), init:stop().";\
	fi

run_problema03:
	@echo "Ejecutando..."
	erl -noshell -s problema03 fecha -s init stop

run_problema04:
	@echo "Ejecutando..."
	@read -p "Ingrese una cadena a invertir: " cadena; \
	erl -noshell -s problema04 main "$$cadena" -s init stop

run_problema05:
	@echo "Ejecutando..."
	erl -noshell -s problema05 momazo -s init stop

run_problema06:
	@echo "Ejecutando..."
	@read -p "Ingrese la base: " base; \
	read -p "Ingrese el exponente: " exponent; \
	erl -noshell -s problema06 main $$base $$exponent -s init stop

# Clean up the compiled files
clean:
	rm -f *.beam