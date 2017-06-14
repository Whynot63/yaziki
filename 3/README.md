Задание
=======
Реализовать функцию (WAY p1 p2), осуществляющую поиск на заданном неориентированном графе любого пути между двумя вершинами p1 и p2.
Проверить работу функции WAY на примере фрагмента схемы Московского метополитена (2 - 3 линии, 8 - 10 станций).

Пример
======
Реализованная схема метро:
<pre>
Царицыно              Марьино
Орехово               Борисово
Домодедовская         Шипиловская
Красногвардейская <-> Зяблиоково
Алма-Атинская
</pre>

ФРЛ
```lisp
(WAY 'DOMODEDOVSKAYA 'BORISOVO)
```
(DOMODEDOVSKAYA KRASNOGVARDEYSKAYA ZYABLIKOVO SHIPILOVSKAYA BORISOVO)
***
Пролог
```prolog
WAY("DOMODEDOVSKAYA" "BORISOVO", [])
```
DOMODEDOVSKAYA
KRASNOGVARDEYSKAYA
ZYABLIKOVO
SHIPILOVSKAYA
BORISOVO

