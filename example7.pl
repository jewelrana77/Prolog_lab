% Define diseases
disease(cold).
disease(flu).
disease(covid_19).

% Define symptoms
symptom(fever).
symptom(cough).
symptom(sore_throat).
symptom(fatigue).
symptom(shortness_of_breath).
symptom(body_aches).

% Disease diagnosis rules based on symptoms

% Cold: cough, sore_throat, no fever
has_disease(cold) :-
    symptom(cough),
    symptom(sore_throat),
    \+ symptom(fever).

% Flu: fever, cough, body_aches, fatigue
has_disease(flu) :-
    symptom(fever),
    symptom(cough),
    symptom(body_aches),
    symptom(fatigue).

% COVID-19: fever, cough, fatigue, shortness_of_breath
has_disease(covid_19) :-
    symptom(fever),
    symptom(cough),
    symptom(fatigue),
    symptom(shortness_of_breath).

% Rule to diagnose disease based on symptoms list
diagnose(Disease) :-
    has_disease(Disease),
    write('You may have: '), write(Disease), nl.

% To specify symptoms for testing, use fact definitions like symptom(fever). or symptom(cough).
