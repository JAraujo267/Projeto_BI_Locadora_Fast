CREATE SEQUENCE public.dim_cliente_sk_cliente_seq;

CREATE TABLE public.dim_cliente (
                sk_cliente INTEGER NOT NULL DEFAULT nextval('public.dim_cliente_sk_cliente_seq'),
                nk_cliente INTEGER NOT NULL,
                nm_cliente VARCHAR(50) NOT NULL,
                sexo VARCHAR(10) NOT NULL,
                dt_nascimento DATE NOT NULL,
                bairro VARCHAR(50) NOT NULL,
                CONSTRAINT sk_cliente PRIMARY KEY (sk_cliente)
);


ALTER SEQUENCE public.dim_cliente_sk_cliente_seq OWNED BY public.dim_cliente.sk_cliente;

CREATE SEQUENCE public.dim_dvd_sk_dvd_seq;

CREATE TABLE public.dim_dvd (
                sk_dvd INTEGER NOT NULL DEFAULT nextval('public.dim_dvd_sk_dvd_seq'),
                nk_dvd INTEGER NOT NULL,
                genero VARCHAR(20) NOT NULL,
                preco REAL NOT NULL,
                CONSTRAINT sk_dvd PRIMARY KEY (sk_dvd)
);


ALTER SEQUENCE public.dim_dvd_sk_dvd_seq OWNED BY public.dim_dvd.sk_dvd;

CREATE TABLE public.dim_avaliacao (
                sk_avaliacao VARCHAR NOT NULL,
                nk_avaliacao INTEGER NOT NULL,
                nota INTEGER NOT NULL,
                CONSTRAINT sk_avaliacao PRIMARY KEY (sk_avaliacao)
);


CREATE SEQUENCE public.dim_data_sk_data_seq;

CREATE TABLE public.dim_data (
                sk_data INTEGER NOT NULL DEFAULT nextval('public.dim_data_sk_data_seq'),
                nk_data DATE NOT NULL,
                dia INTEGER NOT NULL,
                semana VARCHAR(10) NOT NULL,
                mes INTEGER NOT NULL,
                ano INTEGER NOT NULL,
                CONSTRAINT sk_data PRIMARY KEY (sk_data)
);


ALTER SEQUENCE public.dim_data_sk_data_seq OWNED BY public.dim_data.sk_data;

CREATE TABLE public.ft_aluguel (
                sk_dvd INTEGER NOT NULL,
                sk_cliente INTEGER NOT NULL,
                sk_avaliacao VARCHAR NOT NULL,
                sk_data INTEGER NOT NULL,
                dd_hora_aluguel TIME NOT NULL,
                dd_codpedido INTEGER NOT NULL
);


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

ALTER TABLE public.ft_aluguel ADD CONSTRAINT dim_data_ft_aluguel_fk
FOREIGN KEY (sk_data)
REFERENCES public.dim_data (sk_data)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;