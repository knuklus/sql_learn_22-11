create table public.requisites
(
    id               integer not null
        constraint requisites_pk
            primary key,
    name             varchar(50),
    inn              varchar(10),
    ogrn             varchar(15),
    address          varchar(200),
    bank             varchar(45),
    checking_account varchar(20),
    cor_account      varchar(20),
    bik              varchar(10)
);

comment on column public.requisites.name is 'Название компании или ФИО ИП';

comment on column public.requisites.inn is 'ИНН компании или ИП';

comment on column public.requisites.ogrn is 'ОГРН компании или ОГРНИП ИП';

comment on column public.requisites.address is 'Адресс компании или ИП';

comment on column public.requisites.bank is 'Банк компании или ИП';

comment on column public.requisites.checking_account is 'Р/С компании или ИП';

comment on column public.requisites.cor_account is 'К/С компании или ИП';

comment on column public.requisites.bik is 'БИК банка компании или ИП';

alter table public.requisites
    owner to knuklus;

