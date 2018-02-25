dia_miente(leon,lunes).
dia_miente(leon,martes).
dia_miente(leon,miercoles).
dia_miente(unicornio,jueves).
dia_miente(unicornio,viernes).
dia_miente(unicornio,sabado).

dia_no_miente(unicornio,lunes).
dia_no_miente(unicornio,martes).
dia_no_miente(unicornio,miercoles).
dia_no_miente(unicornio,domingo).
dia_no_miente(leon,jueves).
dia_no_miente(leon,viernes).
dia_no_miente(leon,sabado).
dia_no_miente(leon,domingo).

ayer(lunes,domingo).
ayer(martes,lunes).
ayer(miercoles,martes).
ayer(jueves,miercoles).
ayer(viernes,jueves).
ayer(sabado,viernes).
ayer(domingo,sabado).

interpretar(Animal,Dia_que_habla,Dia_que_describe) :- dia_miente(Animal,Dia_que_habla), dia_no_miente(Animal,Dia_que_describe).
interpretar(Animal,Dia_que_habla,Dia_que_describe) :- dia_no_miente(Animal,Dia_que_habla), dia_miente(Animal,Dia_que_describe).

que_dia_es_hoy(Hoy) :- ayer(Hoy,Ayer), interpretar(leon,Hoy,Ayer), interpretar(unicornio,Hoy,Ayer).
