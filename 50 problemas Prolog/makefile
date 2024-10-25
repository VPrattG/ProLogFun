PROLOG = swipl

SRC_DIR = src

BUILD_DIR = build

SOURCES = $(wildcard *.pl)

-include $(SRC_DIR)/dependencies.mk

all: runall

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)

test: all
	@echo "Running tests..."
	@for file in $(wildcard *_test.pl); do \
		$(PROLOG) -q -t halt -s $$file || exit 1; \
	done

run-programa01: $(SRC_DIR)/programa01.pl
	$(PROLOG) -q -s $< -g "my_last(X, [a, b, c, d]), format('El valor es ~w', [X]), nl" -t halt

run-programa02: $(SRC_DIR)/programa02.pl
	$(PROLOG) -q -s $< -g "penultimate(X, [a, b, c, d]), format('El valor es ~w', [X]), nl" -t halt

run-programa03: $(SRC_DIR)/programa03.pl
	$(PROLOG) -q -s $< -g "element_at(X, [a, b, c, d], 2), format('El valor en el lugar 2 es ~w', [X]), nl" -t halt

run-programa04: $(SRC_DIR)/programa04.pl
	$(PROLOG) -q -s $< -g "list_length([a, b, c, d], X), format('La longitud es ~w', [X]), nl" -t halt

run-programa05: $(SRC_DIR)/programa05.pl
	$(PROLOG) -q -s $< -g "reverse_list([a, b, c, d], X), format('La nueva lista es ~w', [X]), nl" -t halt

run-programa06: $(SRC_DIR)/programa06.pl
	$(PROLOG) -q -s $(SRC_DIR)/programa05.pl -s $< -g "(palindrome([1, 2, 2]) -> write('La lista es un palíndromo'); \
	write('La lista no es un palíndromo')), nl, halt." -t halt

run-programa07: $(SRC_DIR)/programa07.pl
	$(PROLOG) -q -s $< -g "my_flatten([1, [2, 3], [4, [5, 6]], 7], Flat), format('Lista plana: ~w', [Flat]), nl" -t halt

run-programa08: $(SRC_DIR)/programa08.pl
	$(PROLOG) -q -s $< -g "compress([1, 1, 1, 2, 2, 3, 3, 3], X), write('Lista sin duplicados: '), write(X), nl" -t halt

run-programa09: $(SRC_DIR)/programa09.pl
	$(PROLOG) -q -s $< -g "pack([1, 1, 1, 2, 2, 3, 3, 3], X), write('Lista agrupada: '), write(X), nl" -t halt

run-programa10: $(SRC_DIR)/programa10.pl
	$(PROLOG) -q -s $(SRC_DIR)/programa09.pl -s $< -g "encode([1, 1, 1, 2, 2, 3, 3, 3], X), write('Lista agrupada (RLE): '), \
	write(X), nl" -t halt

run-programa11: $(SRC_DIR)/programa11.pl
	$(PROLOG) -q -s $(SRC_DIR)/programa09.pl -s $(SRC_DIR)/programa10.pl -s $< -g "encode_modified([1, 1, 1, 2, 2, 3, 3, 3], X), \
	write('Lista agrupada (RLE modificado): '), write(X), nl" -t halt

run-programa12: $(SRC_DIR)/programa12.pl
	$(PROLOG) -q -s $< -g "decode([[3,1],[2,2],[3,3]], X), format('Lista decodificada: ~w', [X]), nl" -t halt

run-programa13: $(SRC_DIR)/programa13.pl
	$(PROLOG) -q -s $< -g "encode_direct([1, 1, 1, 1, 2, 2, 3, 3, 3, 3, 3], X), write(X), nl" -t halt

run-programa14: $(SRC_DIR)/programa14.pl
	$(PROLOG) -q -s $< -g "dupli([1, 2, 3, 4, 5], X), write(X), nl" -t halt

run-programa15: $(SRC_DIR)/programa15.pl
	$(PROLOG) -q -s $< -g "duplicate([1, 2, 3, 4, 5], 3, X), write(X), nl" -t halt

run-programa16: $(SRC_DIR)/programa16.pl
	$(PROLOG) -q -s $< -g "drop([a, b, c, d, e, f, g, h], 3, R), writeln(R), halt."

run-programa17: $(SRC_DIR)/programa17.pl
	$(PROLOG) -q -s $< -g "split([a, b, c, d, e, f, g], 3, L1, L2), writeln(L1), writeln(L2), halt."

run-programa18: $(SRC_DIR)/programa18.pl
	$(PROLOG) -q -s $< -g "slice([a, b, c, d, e, f, g], 2, 4, R), writeln(R), halt."

run-programa19: $(SRC_DIR)/programa19.pl
	$(PROLOG) -q -s $(SRC_DIR)/programa17.pl -s $< -g "rotate([a, b, c, d, e, f, g], 2, R), writeln(R), halt."

run-programa20: $(SRC_DIR)/programa20.pl
	$(PROLOG) -q -s $< -g "remove_at(X, [a, b, c, d, e], 3, R), writeln(X), writeln(R), halt."

run-programa21: $(SRC_DIR)/programa21.pl
	$(PROLOG) -q -s $< -g "insert_at(a, [b, c, d], 2, R), writeln(R), halt."

run-programa22: $(SRC_DIR)/programa22.pl
	$(PROLOG) -q -s $< -g "range(3, 7, R), writeln(R), halt."

run-programa23: $(SRC_DIR)/programa23.pl
	$(PROLOG) -q -s $(SRC_DIR)/programa03.pl -s $< -g "rnd_select([a, b, c, d, e, f], 3, R), writeln(R), halt."

run-programa24: $(SRC_DIR)/programa24.pl
	$(PROLOG) -q -s $(SRC_DIR)/programa03.pl -s $(SRC_DIR)/programa22.pl -s $(SRC_DIR)/programa23.pl -s $< -g \
	"lotto(6, 49, L), writeln(L), halt."

run-programa25: $(SRC_DIR)/programa25.pl
	$(PROLOG) -q -s $(SRC_DIR)/programa03.pl -s $(SRC_DIR)/programa23.pl -s $< -g "rnd_permu([a, b, c, d, e], P), writeln(P), halt." -t halt

run-programa26: $(SRC_DIR)/programa26.pl
	$(PROLOG) -q -s $< -g "combination(2, [a, b, c, d], Comb), writeln(Comb), halt."

run-programa27: $(SRC_DIR)/programa27.pl
	$(PROLOG) -q -s $(SRC_DIR)/programa26.pl -s $< -g "group([2, 2], [a, b, c, d], G), writeln(G), halt."

run-programa28: $(SRC_DIR)/programa28.pl
	$(PROLOG) -q -s $< -g "lsort([[a], [b, c], [d, e, f]], S), writeln(S), halt."

run-programa29: $(SRC_DIR)/programa29.pl
	$(PROLOG) -q -s $(SRC_DIR)/programa09.pl -s $(SRC_DIR)/programa10.pl -s $< -g "length_frequency([[a], [b, c], [d, e, f], [g, h, i, j]], F), writeln(F), halt."

run-programa30: $(SRC_DIR)/programa30.pl
	$(PROLOG) -q -s $< -g "(is_prime(25) -> write('Es primo'); write('No es primo')), nl, halt." -t halt

run-programa31: $(SRC_DIR)/programa31.pl
	$(PROLOG) -q -s $< -g "gcd(25, 30, X), format('El máximo común divisor es: ~w', [X]), nl." -t halt

run-programa32: $(SRC_DIR)/programa32.pl
	$(PROLOG) -q -s $(SRC_DIR)/programa31.pl -s $< -g "(coprime(25, 30) -> ('25 y 30 son coprimos'); write('25 y 30 no son coprimos')), nl." -t halt

run-programa33: $(SRC_DIR)/programa33.pl
	$(PROLOG) -q -s $(SRC_DIR)/programa31.pl -s $(SRC_DIR)/programa32.pl -s $< -g \
	"totient(100, X), format('100 tiene ~w valores coprimos menores que este', [X]), nl" -t halt

run-programa34: $(SRC_DIR)/programa34.pl
	$(PROLOG) -q -s $< -g "prime_factors(100, X), write('Factores primos de 100: '), write(X), nl" -t halt

run-programa35: $(SRC_DIR)/programa35.pl
	$(PROLOG) -q -s $(SRC_DIR)/programa09.pl -s $(SRC_DIR)/programa10.pl -s $(SRC_DIR)/programa34.pl -s $< -g \
	"prime_factors_mult(100, X), write('Factores primos de 100 (Ahora con RLE): '), write(X), nl" -t halt

run-programa36: $(SRC_DIR)/programa36.pl
	$(PROLOG) -q -s $(SRC_DIR)/programa09.pl -s $(SRC_DIR)/programa10.pl -s $(SRC_DIR)/programa34.pl -s $(SRC_DIR)/programa35.pl -s $< -g \
	"totient_improved(100, X), format('100 tiene ~w valores coprimos menores que este (ahora con totiente mejorado)', [X]), nl" -t halt

run-programa37: $(SRC_DIR)/programa37.pl
	$(PROLOG) -q -s $(SRC_DIR)/programa09.pl -s $(SRC_DIR)/programa10.pl -s $(SRC_DIR)/programa31.pl -s $(SRC_DIR)/programa32.pl -s $(SRC_DIR)/programa33.pl \
	-s $(SRC_DIR)/programa34.pl -s $(SRC_DIR)/programa35.pl -s $(SRC_DIR)/programa36.pl -s $< -g "writeln('Para el número 100'), compare_totient(100)." -t halt

run-programa38: $(SRC_DIR)/programa38.pl
	$(PROLOG) -q -s $(SRC_DIR)/programa30.pl -s $< -g "prime_list(1, 100, X), format('Los primos entre 1 y 100 son ~w', [X]), nl" -t halt

run-programa39: $(SRC_DIR)/programa39.pl
	$(PROLOG) -q -s $(SRC_DIR)/programa30.pl -s $(SRC_DIR)/programa38.pl -s $< -g \
	"goldbach(10, [X, Y]), format('Los primos ~w y ~w sumados son igual a 10', [X, Y]), nl" -t halt

run-programa40: $(SRC_DIR)/programa40.pl
	$(PROLOG) -q -s $(SRC_DIR)/programa30.pl -s $(SRC_DIR)/programa38.pl -s $(SRC_DIR)/programa39.pl -s $< -g \
	"goldbach_list(4, 12, L), writeln('Composición goldbach para cada número par entre 4 y 12:'), write(L), nl" -t halt

run-programa41: $(SRC_DIR)/programa41.pl
	$(PROLOG) -q -s $< -g "problema41($(ARGS))" -t halt

run-programa42: $(SRC_DIR)/programa42.pl
	$(PROLOG) -q -s $< -g "problema42($(ARGS))" -t halt

run-programa43: $(SRC_DIR)/programa43.pl
	$(PROLOG) -q -s $< -g "problema43($(ARGS))" -t halt

run-programa44: $(SRC_DIR)/programa44.pl
	$(PROLOG) -q -s $< -g "problema44($(ARGS))" -t halt

run-programa45: $(SRC_DIR)/programa45.pl
	$(PROLOG) -q -s $< -g "problema45($(ARGS))" -t halt

run-programa46: $(SRC_DIR)/programa46.pl
	$(PROLOG) -q -s $< -g "problema46($(ARGS))" -t halt

run-programa47: $(SRC_DIR)/programa47.pl
	$(PROLOG) -q -s $< -g "problema47($(ARGS))" -t halt

run-programa48: $(SRC_DIR)/programa48.pl
	$(PROLOG) -q -s $< -g "problema48($(ARGS))" -t halt

run-programa49: $(SRC_DIR)/programa49.pl
	$(PROLOG) -q -s $< -g "problema49($(ARGS))" -t halt

run-programa50: $(SRC_DIR)/programa50.pl
	$(PROLOG) -q -s $< -g "problema50($(ARGS))" -t halt


runall: run-programa01 run-programa02 run-programa03 run-programa04 run-programa05 \
        run-programa06 run-programa07 run-programa08 run-programa09 run-programa10 \
        run-programa11 run-programa12 run-programa13 run-programa14 run-programa15 \
        run-programa16 run-programa17 run-programa18 run-programa19 run-programa20 \
        run-programa21 run-programa22 run-programa23 run-programa24 run-programa25 \
        run-programa26 run-programa27 run-programa28 run-programa29 run-programa30 \
        run-programa31 run-programa32 run-programa33 run-programa34 run-programa35 \
        run-programa36 run-programa37 run-programa38 run-programa39 run-programa40 \
        run-programa41 run-programa42 run-programa43 run-programa44 run-programa45 \
        run-programa46 run-programa47 run-programa48 run-programa49 run-programa50

.PHONY: all clean runall run-programa01 run-programa02 run-programa03 run-programa04 run-programa05 \
        run-programa06 run-programa07 run-programa08 run-programa09 run-programa10 \
        run-programa11 run-programa12 run-programa13 run-programa14 run-programa15 \
        run-programa16 run-programa17 run-programa18 run-programa19 run-programa20 \
        run-programa21 run-programa22 run-programa23 run-programa24 run-programa25 \
        run-programa26 run-programa27 run-programa28 run-programa29 run-programa30 \
        run-programa31 run-programa32 run-programa33 run-programa34 run-programa35 \
        run-programa36 run-programa37 run-programa38 run-programa39 run-programa40 \
        run-programa41 run-programa42 run-programa43 run-programa44 run-programa45 \
        run-programa46 run-programa47 run-programa48 run-programa49 run-programa50