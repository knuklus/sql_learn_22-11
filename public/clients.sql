create table public.clients
(
    id              integer not null
        constraint clients_pk
            primary key,
    name            varchar(45),
    last_name       varchar(45),
    phone           varchar(10),
    email           varchar(25),
    type_clients_id integer
        constraint clients_type_clients_id_fk
            references public.type_clients,
    requisites_id   integer
        constraint clients_requisites_id_fk
            references public.requisites,
    projects_id     integer
        constraint clients_projects_id_fk
            references public.projects
);

comment on column public.clients.name is 'Имя клиента';

comment on column public.clients.last_name is 'Фамилия клиента';

comment on column public.clients.phone is 'Телефон клиента';

comment on column public.clients.email is 'Почта клиента';

comment on column public.clients.type_clients_id is 'Указывается ID записи (компания или ИП) в таблице (type_clients)';

comment on column public.clients.requisites_id is 'Указывается ID записи в таблице реквизитов (requisites)';

comment on column public.clients.projects_id is 'Указывается ID проекта в таблице проектов (projects)';

alter table public.clients
    owner to knuklus;

