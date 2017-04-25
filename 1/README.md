Задание
=======
Реализовать функции ```(@NTHCDR n list )``` и ```(@NTH n list)``` , возвращающие соответственно n-й CDR и CAR от списка list. Некорректное задание параметра n должно контролироваться.

Примеры
=======
```
(@NTHCDR 0 '(А В С)) => (А В С)

(@NTHCDR 2 '(А В С D)) => (С D)

(@NTH 0 '(А В)) => А

(@NTH 1 '((АВ)(ВС)(CD)К)) => (ВС)
```