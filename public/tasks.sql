create table public.tasks
(
    id         integer not null
        constraint tasks_pk
            primary key,
    start      timestamp,
    stop       timestamp,
    is_payment boolean,
    clients_id integer
        constraint tasks_clients_id_fk
            references public.clients,
    project_id integer
        constraint tasks_projects_id_fk
            references public.projects
);

comment on column public.tasks.start is 'Время начала выполнения задачи';

comment on column public.tasks.stop is 'Время завершения задачи';

comment on column public.tasks.is_payment is 'Задача оплачена?';

comment on column public.tasks.clients_id is 'ID клиента из таблицы (clients)';

comment on column public.tasks.project_id is 'ID проекта из таблицы (projects)';

alter table public.tasks
    owner to knuklus;

