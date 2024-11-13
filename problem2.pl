studies(charlie,cse135).
studies(olivia,cse135).
studies(jack,cse131).
studies(arthur,cse134).
teaches(kirke,cse135).
teaches(collins,cse131).
teaches(collins,cse171).
teaches(juniper,cse134).

professor(X,Y):-teaches(X,C),studies(Y,C).


