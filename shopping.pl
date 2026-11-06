
start :-
    Items = [coffee, milk, chocolate, apple, juice],
    menu(Items).

menu(Items) :-
    nl,
    writeln('** SHOPPING LIST **'),
    writeln('d. display all items.'),
    writeln('a. Add an item to the list.'),
    writeln('e. exit.'),
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    action(Choice, Items).

action(d, Items) :-
    show_items(Items),
    menu(Items).

action(a, Items) :-
    write('Enter item to add: '),
    read(Item),
    append(Items, [Item], NewItems),
    writeln('The item has been added.'),
    menu(NewItems).

action(e, _) :-
    writeln('Goodbye!').

action(_, Items) :-
    writeln('Invalid choice.'),
    menu(Items).

show_items([]).
show_items([H|T]) :-
    writeln(H),
    show_items(T).
