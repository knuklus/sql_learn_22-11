create table public.type_clients
(
    id   integer not null
        constraint type_clients_pk
            primary key,
    name varchar(10)
);

alter table public.type_clients
    owner to knuklus;

