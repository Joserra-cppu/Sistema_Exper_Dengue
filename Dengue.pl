% Definición de síntomas
sintoma(dengue_clasico, fiebre_alta).
sintoma(dengue_clasico, dolor_de_cabeza).
sintoma(dengue_clasico, dolor_muscular).

sintoma(dengue_hemorragico, fiebre_alta).
sintoma(dengue_hemorragico, dolor_de_cabeza).
sintoma(dengue_hemorragico, dolor_muscular).
sintoma(dengue_hemorragico, sangrado).

% Reglas de diagnóstico
diagnosticar(Sintomas, dengue_clasico) :-
    member(fiebre_alta, Sintomas),
    member(dolor_de_cabeza, Sintomas),
    member(dolor_muscular, Sintomas),
    \+ member(sangrado, Sintomas).

diagnosticar(Sintomas, dengue_hemorragico) :-
    member(fiebre_alta, Sintomas),
    member(dolor_de_cabeza, Sintomas),
    member(dolor_muscular, Sintomas),
    member(sangrado, Sintomas).

% Predicado principal
diagnostico :-
    write('Ingrese los síntomas separados por comas: '),
    read_line_to_string(user_input, S),
    split_string(S, ", ", "", SintomasAtomicas),
    maplist(atom_string, Sintomas, SintomasAtomicas),
    ( diagnosticar(Sintomas, Diagnostico) -> 
        format('El diagnóstico es: ~w~n', [Diagnostico])
    ; 
        write('No se puede determinar el diagnóstico con los síntomas proporcionados.'), nl
    ).
