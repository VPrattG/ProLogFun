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
run_programa01:
	@echo "Ejecutando..."
	erl -noshell -s programa01 hello_world -s init stop

run_programa02:
	@echo "Ejecutando..."
	erl -noshell -s programa02 diez_hw -s init stop

run_programa03:
	@echo "Ejecutando..."
	erl -noshell -s programa03 procedure -s init stop

run_programa04:
	@echo "Ejecutando..."
	@read -p "Ingrese un número para calcular su potencia: " pot; \
	erl -noshell -s programa04 main $$pot -s init stop

run_programa05:
	@echo "Ejecutando..."
	@read -p "Ingrese el punto x: " x; \
	read -p "Ingrese el punto y: " y; \
	erl -noshell -s programa05 main $$x $$y -s init stop

run_programa06:
	@echo "Ejecutando..."
	@read -p "Ingrese la lista, separando valores con espacios: " lista; \
	erl -noshell -s programa06 thing $$lista -s init stop

run_programa07:
	@echo "Ejecutando..."
	@read -p "Ingrese la lista, separando valores con espacios: " lista; \
	erl -noshell -s programa07 crear_tuplas $$lista -s init stop

run_programa08:
	@echo "Ejecutando..."
	erl -noshell -s programa08 cosa -s init stop

run_programa09:
	@echo "Ejecutando..."
	erl -noshell -eval 'T = programa09:example_tree(), programa09:print_tree(T).' -s init stop

run_programa10:
	@echo "Ejecutando..."
	@read -p "Ingrese la lista, separando valores con espacios: " lista; \
	erl -noshell -s programa10 lista_aleatoria $$lista -s init stop

run_programa11:
	@echo "Ejecutando..."
	@read -p "Ingrese la lista, separando valores con espacios: " lista; \
	erl -noshell -s programa11 valor_aleatorio $$lista -s init stop

run_programa12:
	@echo "Ejecutando..."
	@read -p "Ingrese la lista, separando valores con espacios (sin comillas): " lista; \
	read -p "Ingrese el elemento en la lista a buscar: " buscar; \
	erl -noshell -eval "Lista = string:tokens(\"$$lista\", \" \"), programa12:rev_lista(\"$$buscar\", Lista), init:stop()."

run_programa13:
	@echo "Ejecutando..."
	erl -noshell -s programa13 iterar_mapas -s init stop

run_programa14:
	@echo "Ejecutando..."
	@read -p "Ingrese el primer valor: " a; \
	read -p "Ingrese el segundo valor: " b; \
	erl -noshell -s programa14 main $$a $$b -s init stop

run_programa15:
	@echo "Ejecutando..."
	@read -p "Ingrese el primer valor: " a; \
	read -p "Ingrese el segundo valor: " b; \
	erl -noshell -s programa15 main $$a $$b -s init stop

run_programa16:
	@echo "Este programa no estaba en la lista, se despliega algo predeterminado"
	erl -noshell -s programa16 bucle_hw -s init stop

run_programa17:
	@echo "Ejecutando..."
	erl -noshell -s programa17 super_arbol -s init stop

run_programa18:
	@echo "Este programa no estaba en la lista, se despliega algo predeterminado"
	erl -noshell -s programa18 bucle_hw -s init stop

run_programa19:
	@echo "Ejecutando..."
	@read -p "Ingrese la lista, separando valores con espacios: " lista; \
	erl -noshell -s programa19 inv_lista $$lista -s init stop

run_programa20:
	@echo "Ejecutando..."
	@read -p "Ingrese la matriz de valores (ej. [[1,2,3],[4,5,6]]): " mtx; \
	read -p "Ingrese el valor a buscar: " x; \
	erl -noshell -eval "Mtx = $$mtx, X = list_to_integer(\"$$x\"), case programa20:search(X, Mtx) of {Row, Col} -> io:format(\"Elemento encontrado en: ~p, ~p~n\", [Row, Col]); _ -> io:format(\"Elemento no encontrado~n\") end, init:stop()."

run_programa21:
	@echo "Ejecutando..."
	@read -p "Ingrese el primer valor: " a; \
	read -p "Ingrese el segundo valor: " b; \
	erl -noshell -s programa21 main $$a $$b -s init stop

run_programa22:
	@echo "Ejecutando..."
	@read -p "Ingrese un string a convertir a int: " string; \
	erl -noshell -eval "programa22:str_to_int(\"$$string\"), init:stop()."

run_programa23:
	@echo "Ejecutando..."
	@read -p "Ingrese un int a convertir a string: " int; \
	erl -noshell -eval "programa23:int_to_str(list_to_integer(\"$$int\")), init:stop()."

run_programa24:
	@echo "Ejecutando..."
	erl -noshell -s programa24 neko -s init stop

run_programa25:
	@echo "Este programa no estaba en la lista, se despliega algo predeterminado"
	erl -noshell -s programa25 bucle_hw -s init stop

# Clean up the compiled files
clean:
	rm -f *.beam