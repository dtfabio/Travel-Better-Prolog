
	inizio :-
		nl,		
		stampa_formattato("CIAO! BENVENUTO IN:",green),nl,nl,nl,
		sleep(0.3),
		stampa_formattato("~~~~~~~~~~~~~~~~~~~~~~~~~~|_TRAVEL BETTER_|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",red),nl,nl,nl,
		sleep(0.6),
stampa_formattato("_____________________________________________________________________________________________________________________________________________________________________________________________", black),nl,
stampa_formattato("_____________________________________________________________________________________________________________________________________________________________________________________________", black),nl,
		descrizione.


	esigenza(Turista,riposo) :- verifica(Turista,"Hai bisogno di riposo [si|no] ?", riposo).
    	esigenza(Turista,divertimento) :- verifica(Turista,"Hai voglia di divertimento [si|no] ?", divertimento).
    	esigenza(Turista,conoscenze) :- verifica(Turista,"Hai voglia di conoscere nuove persone [si|no] ?", conoscenze).
    	esigenza(Turista,cultura) :- verifica(Turista,"Hai voglia di un viaggio basato sulla cultura [si|no] ?", cultura).
    	esigenza(Turista,fidanzamento) :- verifica(Turista,"Hai voglia di trovare un nuovo fidanzato/fidanzata [si|no] ?", fidanzamento).
    	esigenza(Turista,caldo) :- verifica(Turista,"Ti piacciono luoghi caldi [si|no] ?", caldo).
    	esigenza(Turista,freddo) :- verifica(Turista,"Ti piacciono luoghi freddi [si|no] ?", freddo).
    	esigenza(Turista,discoteca) :- verifica(Turista,"Ti piacciono luoghi con molte discoteche [si|no] ?", discoteca).
    	esigenza(Turista,esperienze) :- verifica(Turista,"Vuoi fare nuove esperienze di vita [si|no] ?", esperienze).
    	esigenza(Turista,economico) :- verifica(Turista,"Vuoi spendere poco [si|no] ?", economico).
    	esigenza(Turista,ricchezza) :- verifica(Turista,"Vuoi spendere molto [si|no] ?", ricchezza).
    	esigenza(Turista,famiglia) :- verifica(Turista, "Viaggerai con la tua famiglia [si|no] ?", famiglia).
    	esigenza(Turista,amici) :- verifica(Turista, "Viaggerai con i tuoi amici [si|no] ?", amici).
    	esigenza(Turista,partner) :- verifica(Turista, "Viaggerai con la tua ragazza/ragazzo [si|no] ?", partner).
    	esigenza(Turista,animale) :- verifica(Turista, "Viaggerai con uno o molti animali domestici [si|no] ?", animale).
    	esigenza(Turista,problemi_fisici) :- verifica(Turista, "Hai particolari problemi fisici [si|no] ?", problemi_fisici).
    	esigenza(Turista,lungo_viaggio) :- verifica(Turista, "Hai preferenza verso una destinazione lontana [si|no] ?", lungo_viaggio).
    	esigenza(Turista,breve_viaggio) :- verifica(Turista, "Hai preferenza verso una destinazione vicina [si|no] ?", breve_viaggio).
	
	agenzia(mirco_travel).
	agenzia(fabioviaggi).
	agenzia(vologianni).
	agenzia(carmeloholiday).
	agenzia(chiarasun).
	agenzia(alessiaworld).
	agenzia(tizianasea).
	agenzia(viaggarecomodi).
	agenzia(volofelice).
	agenzia(lowcostholiday).
	agenzia(seaandsun).
	agenzia(blusky_travel).

	assegnato_a(mirco_travel,parigi).
	assegnato_a(fabioviaggi,roma).
	assegnato_a(vologianni,cracovia).
	assegnato_a(carmeloholiday,shanghai).
	assegnato_a(alessiaworld,rosario). 
	assegnato_a(tizianasea,salvador). 
	assegnato_a(chiarasun,mosca). 
	assegnato_a(viaggarecomodi,amsterdam). 
	assegnato_a(lowcostholiday,casablanca). 
	assegnato_a(seaandsun,helsinki). 
	assegnato_a(blusky_travel,varadero). 
	assegnato_a(volofelice,chicago). 
	
	hotel(hotel_piazza,italia). 
	hotel(hotel_amour,francia).
	hotel(hotel_playa,argentina).
	hotel(hotel_freeze,polonia).
	hotel(hotel_cin,cina).
	hotel(hotel_brazio,brasile).
	hotel(hotel_raus,russia).
	hotel(hotel_navigli,olanda).
	hotel(hotel_salah,marocco).
	hotel(hotel_yankees,america).
	hotel(hotel_fish,finlandia).
	hotel(hotel_beleza,cuba).

	luogo(italia,roma).
	luogo(francia,parigi).
	luogo(polonia,cracovia).
	luogo(cina,shanghai).
	luogo(argentina,rosario).
	luogo(brasile,salvador).
	luogo(russia,mosca).
	luogo(olanda,amsterdam).
	luogo(marocco,casablanca).
	luogo(finlandia,helsinki).
	luogo(cuba,varadero).
	luogo(america,chicago).
	
    	nazione(Turista,italia) :-
        	esigenza(Turista,fidanzamento),
	    	esigenza(Turista,conoscenze),
		esigenza(Turista,animale),
		esigenza(Turista,economico),
		esigenza(Turista,breve_viaggio),
		esigenza(Turista,problemi_fisici), 
        	esigenza(Turista,divertimento),!.
    	nazione(Turista,francia) :-
        	esigenza(Turista,cultura),
        	esigenza(Turista,conoscenze),
		esigenza(Turista,breve_viaggio),
		esigenza(Turista,fidanzamento),
		esigenza(Turista,economico),
        	esigenza(Turista,divertimento),!.
	nazione(Turista,america) :-
        	esigenza(Turista,fidanzamento),
		esigenza(Turista,caldo),
		esigenza(Turista,lungo_viaggio),
		esigenza(Turista,fidanzamento),
		esigenza(Turista,ricchezza),!.
    	nazione(Turista,argentina) :-
        	esigenza(Turista,fidanzamento),
		esigenza(Turista,riposo),
         	esigenza(Turista,caldo),
		esigenza(Turista,amici),
		esigenza(Turista,partner),
		esigenza(Turista,ricchezza),
		esigenza(Turista,lungo_viaggio),!.
    	nazione(Turista,brasile) :-
        	esigenza(Turista,fidanzamento),
        	esigenza(Turista,conoscenze),
        	esigenza(Turista,esperienze),
        	esigenza(Turista,cultura),
		esigenza(Turista,famiglia),
        	esigenza(Turista,discoteca),
		esigenza(Turista,ricchezza),
		esigenza(Turista,lungo_viaggio),
		esigenza(Turista,caldo),
		esigenza(Turista,riposo),!.
	nazione(Turista,cina) :-
		esigenza(Turista,famiglia),
	       	esigenza(Turista,cultura),
		esigenza(Turista,lungo_viaggio),
        	esigenza(Turista,ricchezza),!.
	nazione(Turista,polonia) :-
		esigenza(Turista,amici),
		esigenza(Turista,famiglia),
        	esigenza(Turista,riposo),
        	esigenza(Turista,discoteca),
        	esigenza(Turista,freddo),
        	esigenza(Turista,divertimento),!.
    	nazione(Turista,russia) :-
		esigenza(Turista,famiglia),
 		esigenza(Turista,cultura),
		esigenza(Turista,lungo_viaggio),
        	esigenza(Turista,freddo),!.
    	nazione(Turista,olanda) :-
        	esigenza(Turista,fidanzamento),
        	esigenza(Turista,cultura),
         	esigenza(Turista,discoteca),
        	esigenza(Turista,freddo),
		esigenza(Turista,amici),
		esigenza(Turista,problemi_fisici), 
		esigenza(Turista,problemi_mentali),!.
    	nazione(Turista,marocco) :-
		esigenza(Turista,riposo),
		esigenza(Turista,amici),
		esigenza(Turista,famiglia),
         	esigenza(Turista,caldo),
		esigenza(Turista,conoscenze),!.
	nazione(Turista,finlandia) :-
		esigenza(Turista,amici),
		esigenza(Turista,famiglia),
		esigenza(Turista,economico),!.
	nazione(Turista,cuba) :-
		esigenza(Turista,riposo),
		esigenza(Turista,amici),
		esigenza(Turista,conoscenze),
		esigenza(Turista,fidanzamento),
		esigenza(Turista,caldo),
		esigenza(Turista,lungo_viaggio),
		esigenza(Turista,fidanzamento),
		esigenza(Turista,ricchezza),!.


	nazione(_,"Nessuna Nazione").


	ask(Turista,Question,Esigenza) :-
		stampa_formattato(Turista,blue),stampa_formattato(', ',blue),stampa_formattato(Question,blue),
		read(N),
		sleep(0.7),
		nl,
stampa_formattato('______________________________________________________________________________________________________________________________________________________________________________________________',black),nl,		
		((N == si)
		             -> assert(yes(Question)),assert(fact(Esigenza));
		                assert(no(Question)),fail).
	
	%predicati che vengono modificati volta per volta, cioè ogni volta che si asserisce una nuova cosa deve modificare il predicato nella base di conoscenza
	:- dynamic yes/1, no/1, fact/1.
	
	verifica(P,S,X) :-
	   (yes(S) -> true ;
			(no(S) -> fail ; ask(P,S,X))).
	
	
	%undo annulla una transazione e le eventuali transazioni nidificate in esso, toglie le scelte fatte dalla base di conoscenza
	undo :- retract(yes(_)),fail.
	undo :- retract(no(_)),fail.
	undo :- retract(fact(_)),fail.
	undo.
	
	%predicato universale per le stampe formattate
	stampa_formattato(P,C):-
		ansi_format([bold,fg(C)],P,[]).    %formatta il testo con attributi ansi
	
	stampa_formattato2(P,C):-
		write('\n'),write('     '),stampa_formattato('- ',C),stampa_formattato(P,C).
	
	
	stampa_esigenze(Nazione):-
	 	stampa_formattato('\nHo scelto: ',black),stampa_formattato(Nazione,blue),stampa_formattato(" perche' hai le seguenti esigenze: ",black),
	 	forall(fact(P),stampa_formattato2(P,blue)).   %fact(P) è il generatore e il seguito crea l'effetto
	
	stampa_luogo(Nazione) :-
		findall(X,luogo(Nazione,X),L),
		scorri_lista(L).
	
	stampa_hotel(Nazione) :-
		findall(X,hotel(X,Nazione),L),
		scorri_lista(L).

	
	ottieni_agenti_supporto([],_).
	ottieni_agenti_supporto([H|T],P):-
		findall(Agenzia,assegnato_a(Agenzia,H),L),
		append(L,P,Ris),
		ottieni_agenti_supporto(T,Ris).
	
	
	ottieni_agenti([H|T]):-
		findall(Agenzia,assegnato_a(Agenzia,H),L),
		ottieni_agenti_supporto(T,L), 
		filtra(L). 
		
	
	filtra(L):-
		rimuovi_duplicati(L,Ris),
		scorri_lista(Ris).
	
	
	stampa_agenzia_riferimento(Nazione) :-
		findall(X,luogo(Nazione,X),L), %specializzazioni che se conseguite da un agenzia consentono di consigliare un hotel di una certa nazione
		ottieni_agenti(L).
		
	
	stampa_conoscenza_nazioni:-
		findall(Nazione,hotel(_,Nazione),L),  %L è la lista delle istanze Nazione per cui la proprietà hotel(_,Nazione) è vera,se non esiste alcuna Nazione rest lista vuot
		rimuovi_duplicati(L,L1),              
		scorri_lista(L1).
	
	
	scorri_lista([]).
	scorri_lista([H|T]):-
		call(stampa_formattato2(H,blue)), %richiede l'invocazione dell'interprete all'interno dell'interprete stesso, viene richiesta la valutazione di stampa formattato2
		scorri_lista(T).
	
	
	rimuovi_duplicati([],[]).
	rimuovi_duplicati([H | T], L) :- 
		member(H, T),			%Se H è elemento della lista T
		rimuovi_duplicati(T, L).
	
	rimuovi_duplicati([H|T],[H|T1]) :- not(member(H,T)),
									   rimuovi_duplicati(T,T1).
	
	 
	 
	check_nazione(_,Nazione,[H|T]) :-
			(
	           (member(Nazione,[H|T]), not(Nazione=="Nessuna Nazione"))-> fail
			   ;true
			).
	
	
	
	pt(Turista):-
			nazione(Turista,Nazione), %il predicato nazione "ritornera'" sempre true, a quel punto per mezzo del predicato definito vedo se la nazione e' stata trovata 
			findall(X,nazione(Turista,X),L), %L viene avvolorata con findall
			(
				(not(check_nazione(Turista,Nazione,L))) -> 	
									stampa_formattato(Turista,black), 	
									stampa_formattato(', sulla base della mia seguente lista di Nazioni: ',black),
									stampa_conoscenza_nazioni,
									stampa_formattato('\n\nTi consiglio vivamente:  ',black),		                
			                       				stampa_formattato(Nazione,blue),
									stampa_formattato('.',black),
									stampa_formattato('\n\nPrecisamente a:',black),
									stampa_luogo(Nazione),
									stampa_formattato('.',blue),
									stampa_formattato('\n\nHotel consigliato: ',black),
									stampa_hotel(Nazione),
									stampa_formattato('.',black),
									stampa_formattato('\n\nL agenzia di viaggio specifica per questo viaggio al quale puoi rivolgerti:',black),
									stampa_agenzia_riferimento(Nazione),
									stampa_formattato('.',black)
								   ;stampa_formattato('Mi dispiace, non sono in grado di valutare la Nazione per te adatta!',black)
	
			),
			
			nl,nl,
			not(Nazione=="Nessuna Nazione") ->
					(
						stampa_formattato('______________________________________________________________________________________________________________________________________________________________________________________________',black),nl,
	
						stampa_formattato(Turista,blue),stampa_formattato(', ',blue),stampa_formattato('Ti interessa sapere la motivazione della mia scelta [si/no] ?  ',black),
						read(R),
						(
							(R==si) -> stampa_esigenze(Nazione),undo,end
			                ;sleep(1)
						)
					);true,
			undo, %dato che non cuttiamo gli undo vengono eseguiti tra virgolette con conseguente retract dalla base di dati dei precedenti fatti asseriti
			end.
	
	
	end :-
			nl,nl,nl,nl,
			sleep(0.6),
stampa_formattato('______________________________________________________________________________________________________________________________________________________________________________________________',black),nl,
			stampa_formattato("***************|_ GRAZIE E BUON VIAGGIO_|****************",red),nl,nl.
	
		
	descrizione :-
		write('Lo scopo di Travel Better consiste nel renderti la vita facile ma sopratutto felice! Rispondi alle nostre domande e scoprirai la destinazione piu'' adatta al tuo viaggio sulla base dei tuoi bisogni e piaceri! Benvenuto in Travel Better! '),nl,
		write('Qual''e'' il tuo nome ? '),
		read(N),nl,
stampa_formattato('______________________________________________________________________________________________________________________________________________________________________________________________',black),nl,
		(N == @(null) -> nl,stampa_formattato('Grazie per avermi usato!, Arrivederci',black),nl,
						 end,fail
						 ;pt(N)
		).
