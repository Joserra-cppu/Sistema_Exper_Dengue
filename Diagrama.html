:- use_module(library(pce)).
:- pce_image_directory('./').

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

% Interfaz gráfica
:- pce_begin_class(dengue_diagnosis, frame).

initialise(F) :->
    send_super(F, initialise, 'Diagnóstico de Dengue'),
    send(F, append, new(D, dialog)),
    send(D, append, new(Lbl, label(title, 'Ingrese los síntomas (separados por comas):'))),
    send(D, append, new(Symptoms, text_item(sintomas))),
    send(D, append, button(diagnosticar, message(F, diagnosticar, Symptoms))),
    send(D, append, new(Result, label(result, 'Resultado:'))),
    send(F, slot, result, Result).

diagnosticar(F, Symptoms) :->
    get(Symptoms, selection, SintomasTexto),
    split_string(SintomasTexto, ", ", "", SintomasList),
    maplist(atom_string, Sintomas, SintomasList),
    (   diagnosticar(Sintomas, Diagnostico)
    ->  format(atom(Resultado), 'El diagnóstico es: ~w', [Diagnostico])
    ;   Resultado = 'No se puede determinar el diagnóstico con los síntomas proporcionados.'),
    get(F, slot, result, ResultLabel),
    send(ResultLabel, selection, Resultado).

:- pce_end_class.

% Iniciar el programa
:- new(Diag, dengue_diagnosis),
   send(Diag, open).
