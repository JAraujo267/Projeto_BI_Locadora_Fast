CREATE TABLE public.dim_data (
                sk_data INTEGER NOT NULL,
                nk_data DATE NOT NULL,
                desc_data_completa VARCHAR(60) NOT NULL,
                nr_ano INTEGER NOT NULL,
                nm_trimestre VARCHAR(20) NOT NULL,
                nr_ano_trimestre VARCHAR(20) NOT NULL,
                nr_mes INTEGER NOT NULL,
                nm_mes VARCHAR(20) NOT NULL,
                ano_mes VARCHAR(20) NOT NULL,
                nr_semana INTEGER NOT NULL,
                ano_semana VARCHAR(20) NOT NULL,
                nr_dia INTEGER NOT NULL,
                nr_dia_ano INTEGER NOT NULL,
                nm_dia_semana VARCHAR(20) NOT NULL,
                flag_final_semana CHAR(3) NOT NULL,
                flag_feriado CHAR(3) NOT NULL,
                nm_feriado VARCHAR(60) NOT NULL,
                etl_dt_inicio TIMESTAMP NOT NULL,
                etl_dt_fim TIMESTAMP NOT NULL,
                CONSTRAINT sk_data_pk PRIMARY KEY (sk_data)
);


CREATE SEQUENCE public.dim_cliente_sk_cliente_seq;

CREATE TABLE public.dim_cliente (
                sk_cliente INTEGER NOT NULL DEFAULT nextval('public.dim_cliente_sk_cliente_seq'),
                nk_cliente INTEGER NOT NULL,
                nm_cliente VARCHAR(50) NOT NULL,
                sexo VARCHAR(10) NOT NULL,
                dt_nascimento DATE NOT NULL,
                bairro VARCHAR(50) NOT NULL,
                etl_versao INTEGER NOT NULL,
                dt_etl_inicio DATE NOT NULL,
                etl_dt_fim DATE NOT NULL,
                CONSTRAINT sk_cliente PRIMARY KEY (sk_cliente)
);


ALTER SEQUENCE public.dim_cliente_sk_cliente_seq OWNED BY public.dim_cliente.sk_cliente;

CREATE SEQUENCE public.dim_dvd_sk_dvd_seq;

CREATE TABLE public.dim_dvd (
                sk_dvd INTEGER NOT NULL DEFAULT nextval('public.dim_dvd_sk_dvd_seq'),
                nk_dvd INTEGER NOT NULL,
                genero VARCHAR(50) NOT NULL,
                preco REAL NOT NULL,
                etl_versao INTEGER NOT NULL,
                dt_etl_inicio DATE NOT NULL,
                etl_dt_fim DATE NOT NULL,
                CONSTRAINT sk_dvd PRIMARY KEY (sk_dvd)
);


ALTER SEQUENCE public.dim_dvd_sk_dvd_seq OWNED BY public.dim_dvd.sk_dvd;

CREATE TABLE public.dim_avaliacao (
                sk_avaliacao INTEGER NOT NULL,
                nk_avaliacao INTEGER NOT NULL,
                nota INTEGER NOT NULL,
                etl_versao INTEGER NOT NULL,
                dt_etl_inicio DATE NOT NULL,
                etl_dt_fim DATE NOT NULL,
                CONSTRAINT sk_avaliacao PRIMARY KEY (sk_avaliacao)
);


CREATE TABLE public.ft_aluguel (
                sk_dvd INTEGER NOT NULL,
                sk_cliente INTEGER NOT NULL,
                sk_data INTEGER NOT NULL,
                sk_avaliacao INTEGER NOT NULL,
                dd_hora_aluguel VARCHAR(50) NOT NULL,
                dd_codpedido INTEGER NOT NULL
);


ALTER TABLE public.ft_aluguel ADD CONSTRAINT dim_data_ft_aluguel_fk
FOREIGN KEY (sk_data)
REFERENCES public.dim_data (sk_data)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_aluguel ADD CONSTRAINT dim_cliente_ft_aluguel_fk
FOREIGN KEY (sk_cliente)
REFERENCES public.dim_cliente (sk_cliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_aluguel ADD CONSTRAINT dim_dvd_ft_aluguel_fk
FOREIGN KEY (sk_dvd)
REFERENCES public.dim_dvd (sk_dvd)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_aluguel ADD CONSTRAINT dim_avaliacao_ft_aluguel_fk
FOREIGN KEY (sk_avaliacao)
REFERENCES public.dim_avaliacao (sk_avaliacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;