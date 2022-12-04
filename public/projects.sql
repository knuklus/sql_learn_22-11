create table public.projects
(
    id          integer not null
        constraint projects_pk
            primary key,
    name        varchar(100),
    rate        money,
    is_deal     boolean,
    link_kanban varchar(45)
);

comment on column public.projects.name is 'Название проекта';

comment on column public.projects.rate is 'Ставка или стоимость проекта (если is_deal true)';

comment on column public.projects.is_deal is 'Оценка работа по часовая или проектная';

comment on column public.projects.link_kanban is 'Ссылка на внешний канбан (кайтен, трелло и тд), нужно для формирования ссылок на карточки задач';

alter table public.projects
    owner to knuklus;

