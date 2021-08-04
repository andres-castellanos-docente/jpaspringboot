

CREATE TABLE public.cb_address (
    idaddress integer NOT NULL,
    idaddresses integer,
    address character varying(255),
    postalnumber character varying(20),
    mainphone character varying(100),
    movilephone character varying(100),
    phone2 character varying(100),
    phone3 character varying(100),
    carrier character varying(200),
    addresstype character varying(100),
    locality character varying(250),
    state character varying(250),
    idcountry integer,
    notes1 character varying(500)
);


ALTER TABLE public.cb_address OWNER TO usrprueba;

--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 210
-- Name: TABLE cb_address; Type: COMMENT; Schema: public; Owner: usrprueba
--

COMMENT ON TABLE public.cb_address IS 'Direcciones para: Clientes, Empresas,... ';


--
-- TOC entry 209 (class 1259 OID 24807)
-- Name: cb_address_idaddress_seq; Type: SEQUENCE; Schema: public; Owner: usrprueba
--

CREATE SEQUENCE public.cb_address_idaddress_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cb_address_idaddress_seq OWNER TO usrprueba;

--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 209
-- Name: cb_address_idaddress_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usrprueba
--

ALTER SEQUENCE public.cb_address_idaddress_seq OWNED BY public.cb_address.idaddress;


--
-- TOC entry 208 (class 1259 OID 24801)
-- Name: cb_addresses; Type: TABLE; Schema: public; Owner: usrprueba
--

CREATE TABLE public.cb_addresses (
    idaddresses integer NOT NULL,
    addressesentity character varying(100) NOT NULL
);


ALTER TABLE public.cb_addresses OWNER TO usrprueba;

--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 208
-- Name: TABLE cb_addresses; Type: COMMENT; Schema: public; Owner: usrprueba
--

COMMENT ON TABLE public.cb_addresses IS 'Agrupación de las direcciones asignadas a una entidad.';


--
-- TOC entry 207 (class 1259 OID 24799)
-- Name: cb_addresses_idaddresses_seq; Type: SEQUENCE; Schema: public; Owner: usrprueba
--

CREATE SEQUENCE public.cb_addresses_idaddresses_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cb_addresses_idaddresses_seq OWNER TO usrprueba;

--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 207
-- Name: cb_addresses_idaddresses_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usrprueba
--

ALTER SEQUENCE public.cb_addresses_idaddresses_seq OWNED BY public.cb_addresses.idaddresses;


--
-- TOC entry 204 (class 1259 OID 24760)
-- Name: cb_country; Type: TABLE; Schema: public; Owner: usrprueba
--

CREATE TABLE public.cb_country (
    idcountry integer NOT NULL,
    country character varying(100) NOT NULL,
    description character varying(255),
    countrycode character(2) NOT NULL,
    hasregion boolean DEFAULT true NOT NULL,
    regionname character varying(60),
    expressionphone character varying(20),
    displaysequence character varying(20) NOT NULL,
    isdefault boolean DEFAULT true,
    ibannodigits numeric,
    ibancountry character(2),
    isactive boolean DEFAULT true NOT NULL,
    idlanguage character(6),
    idcurrency integer
);


ALTER TABLE public.cb_country OWNER TO usrprueba;

--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 204
-- Name: TABLE cb_country; Type: COMMENT; Schema: public; Owner: usrprueba
--

COMMENT ON TABLE public.cb_country IS 'Tabla donde se definen todos los países con sus características principales: idioma, nombre, ..., y diferentes datos íntrinsecos a cada país.';


--
-- TOC entry 203 (class 1259 OID 24758)
-- Name: cb_country_idcountry_seq; Type: SEQUENCE; Schema: public; Owner: usrprueba
--

CREATE SEQUENCE public.cb_country_idcountry_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cb_country_idcountry_seq OWNER TO usrprueba;

--
-- TOC entry 3370 (class 0 OID 0)
-- Dependencies: 203
-- Name: cb_country_idcountry_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usrprueba
--

ALTER SEQUENCE public.cb_country_idcountry_seq OWNED BY public.cb_country.idcountry;


--
-- TOC entry 201 (class 1259 OID 24714)
-- Name: cb_currency; Type: TABLE; Schema: public; Owner: usrprueba
--

CREATE TABLE public.cb_currency (
    idcurrency integer NOT NULL,
    currency character varying(60) NOT NULL,
    description character varying(255) NOT NULL,
    isactive boolean DEFAULT true NOT NULL,
    isocode character(3) NOT NULL,
    cursymbol character varying(10),
    precisionstd numeric(15,2) NOT NULL,
    precisioncost numeric(15,2) NOT NULL,
    precisionprize numeric(15,2) NOT NULL
);


ALTER TABLE public.cb_currency OWNER TO usrprueba;

--
-- TOC entry 200 (class 1259 OID 24712)
-- Name: cb_currency_idcurrency_seq; Type: SEQUENCE; Schema: public; Owner: usrprueba
--

CREATE SEQUENCE public.cb_currency_idcurrency_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cb_currency_idcurrency_seq OWNER TO usrprueba;

--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 200
-- Name: cb_currency_idcurrency_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usrprueba
--

ALTER SEQUENCE public.cb_currency_idcurrency_seq OWNED BY public.cb_currency.idcurrency;


--
-- TOC entry 214 (class 1259 OID 24856)
-- Name: cb_customer; Type: TABLE; Schema: public; Owner: usrprueba
--

CREATE TABLE public.cb_customer (
    idcustomer integer NOT NULL,
    identerprise integer,
    customer character varying(15) NOT NULL,
    customername character varying(150),
    customeralias character varying(100),
    contact character varying(250),
    customerstate character varying(30),
    sale numeric(15,4),
    identitynumber character varying(100),
    customerpayer character varying(20),
    idpaymentmethod integer,
    idcountry integer,
    idcurrency integer,
    idlanguage character varying(6),
    idaddresses integer
);


ALTER TABLE public.cb_customer OWNER TO usrprueba;

--
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 214
-- Name: TABLE cb_customer; Type: COMMENT; Schema: public; Owner: usrprueba
--

COMMENT ON TABLE public.cb_customer IS 'Tabla donde se almacenarán los clientes de las diferentes empresas, se entiende cliente como aquel que compra a una empresa.';


--
-- TOC entry 213 (class 1259 OID 24854)
-- Name: cb_customer_idcustomer_seq; Type: SEQUENCE; Schema: public; Owner: usrprueba
--

CREATE SEQUENCE public.cb_customer_idcustomer_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cb_customer_idcustomer_seq OWNER TO usrprueba;

--
-- TOC entry 3373 (class 0 OID 0)
-- Dependencies: 213
-- Name: cb_customer_idcustomer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usrprueba
--

ALTER SEQUENCE public.cb_customer_idcustomer_seq OWNED BY public.cb_customer.idcustomer;


--
-- TOC entry 212 (class 1259 OID 24830)
-- Name: cb_enterprise; Type: TABLE; Schema: public; Owner: usrprueba
--

CREATE TABLE public.cb_enterprise (
    identerprise integer NOT NULL,
    enterprise character varying(150),
    description character varying(250),
    enterprisealias character varying(100),
    contact character varying(250),
    status character varying(30),
    balance numeric(15,4),
    ei character varying(100),
    enterprisepayer character varying(20),
    idcountry integer,
    idcurrency integer,
    idlanguage character varying(6)
);


ALTER TABLE public.cb_enterprise OWNER TO usrprueba;

--
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 212
-- Name: TABLE cb_enterprise; Type: COMMENT; Schema: public; Owner: usrprueba
--

COMMENT ON TABLE public.cb_enterprise IS 'Tabla para controlar las empresas que se usan en la aplicación, la aplicación se desarrolla en función de estos parámetros ya que habrá algunas tablas que serán comunes a las empresa y otras que no.';


--
-- TOC entry 211 (class 1259 OID 24828)
-- Name: cb_enterprise_identerprise_seq; Type: SEQUENCE; Schema: public; Owner: usrprueba
--

CREATE SEQUENCE public.cb_enterprise_identerprise_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cb_enterprise_identerprise_seq OWNER TO usrprueba;

--
-- TOC entry 3375 (class 0 OID 0)
-- Dependencies: 211
-- Name: cb_enterprise_identerprise_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usrprueba
--

ALTER SEQUENCE public.cb_enterprise_identerprise_seq OWNED BY public.cb_enterprise.identerprise;


--
-- TOC entry 202 (class 1259 OID 24748)
-- Name: cb_language; Type: TABLE; Schema: public; Owner: usrprueba
--

CREATE TABLE public.cb_language (
    idlanguage character varying(6) NOT NULL,
    namelanguage character varying(60) NOT NULL,
    isactive boolean DEFAULT true NOT NULL,
    languageiso character(2),
    countrycode character(2),
    isbaselanguage boolean DEFAULT false NOT NULL,
    issystemlanguage boolean DEFAULT false NOT NULL
);


ALTER TABLE public.cb_language OWNER TO usrprueba;

--
-- TOC entry 3376 (class 0 OID 0)
-- Dependencies: 202
-- Name: TABLE cb_language; Type: COMMENT; Schema: public; Owner: usrprueba
--

COMMENT ON TABLE public.cb_language IS 'Como clave primaria usamos la codificación del idioma i18n e i10n, las principales: es_ES y en_EN, que serán las que se usarán por defecto.';


--
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN cb_language.idlanguage; Type: COMMENT; Schema: public; Owner: usrprueba
--

COMMENT ON COLUMN public.cb_language.idlanguage IS 'Como clave primaria usamos la codificación del idioma i18n e i10n, las principales: es_ES y en_EN, que serán las que se usarán por defecto.';


--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN cb_language.namelanguage; Type: COMMENT; Schema: public; Owner: usrprueba
--

COMMENT ON COLUMN public.cb_language.namelanguage IS 'Nombre del idioma en el idioma por defecto del sistema (castellano).';


--
-- TOC entry 206 (class 1259 OID 24786)
-- Name: cb_paymentmethod; Type: TABLE; Schema: public; Owner: usrprueba
--

CREATE TABLE public.cb_paymentmethod (
    idpaymentmethod integer NOT NULL,
    paymentmethod character varying(100) NOT NULL,
    description character varying(150),
    paymentterms character varying(250),
    paymententity character varying(50)
);


ALTER TABLE public.cb_paymentmethod OWNER TO usrprueba;

--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 206
-- Name: TABLE cb_paymentmethod; Type: COMMENT; Schema: public; Owner: usrprueba
--

COMMENT ON TABLE public.cb_paymentmethod IS 'Métodos de pago definidos para el cliente u otras entidades.';


--
-- TOC entry 205 (class 1259 OID 24784)
-- Name: cb_paymentmethod_idpaymentmethod_seq; Type: SEQUENCE; Schema: public; Owner: usrprueba
--

CREATE SEQUENCE public.cb_paymentmethod_idpaymentmethod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cb_paymentmethod_idpaymentmethod_seq OWNER TO usrprueba;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 205
-- Name: cb_paymentmethod_idpaymentmethod_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usrprueba
--

ALTER SEQUENCE public.cb_paymentmethod_idpaymentmethod_seq OWNED BY public.cb_paymentmethod.idpaymentmethod;


--
-- TOC entry 3171 (class 2604 OID 24812)
-- Name: cb_address idaddress; Type: DEFAULT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_address ALTER COLUMN idaddress SET DEFAULT nextval('public.cb_address_idaddress_seq'::regclass);


--
-- TOC entry 3170 (class 2604 OID 24804)
-- Name: cb_addresses idaddresses; Type: DEFAULT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_addresses ALTER COLUMN idaddresses SET DEFAULT nextval('public.cb_addresses_idaddresses_seq'::regclass);


--
-- TOC entry 3165 (class 2604 OID 24763)
-- Name: cb_country idcountry; Type: DEFAULT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_country ALTER COLUMN idcountry SET DEFAULT nextval('public.cb_country_idcountry_seq'::regclass);


--
-- TOC entry 3160 (class 2604 OID 24717)
-- Name: cb_currency idcurrency; Type: DEFAULT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_currency ALTER COLUMN idcurrency SET DEFAULT nextval('public.cb_currency_idcurrency_seq'::regclass);


--
-- TOC entry 3173 (class 2604 OID 24859)
-- Name: cb_customer idcustomer; Type: DEFAULT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_customer ALTER COLUMN idcustomer SET DEFAULT nextval('public.cb_customer_idcustomer_seq'::regclass);


--
-- TOC entry 3172 (class 2604 OID 24833)
-- Name: cb_enterprise identerprise; Type: DEFAULT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_enterprise ALTER COLUMN identerprise SET DEFAULT nextval('public.cb_enterprise_identerprise_seq'::regclass);


--
-- TOC entry 3169 (class 2604 OID 24789)
-- Name: cb_paymentmethod idpaymentmethod; Type: DEFAULT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_paymentmethod ALTER COLUMN idpaymentmethod SET DEFAULT nextval('public.cb_paymentmethod_idpaymentmethod_seq'::regclass);


--
-- TOC entry 3355 (class 0 OID 24809)
-- Dependencies: 210
-- Data for Name: cb_address; Type: TABLE DATA; Schema: public; Owner: usrprueba
--



--
-- TOC entry 3353 (class 0 OID 24801)
-- Dependencies: 208
-- Data for Name: cb_addresses; Type: TABLE DATA; Schema: public; Owner: usrprueba
--



--
-- TOC entry 3349 (class 0 OID 24760)
-- Dependencies: 204
-- Data for Name: cb_country; Type: TABLE DATA; Schema: public; Owner: usrprueba
--

INSERT INTO public.cb_country (idcountry, country, description, countrycode, hasregion, regionname, expressionphone, displaysequence, isdefault, ibannodigits, ibancountry, isactive, idlanguage, idcurrency) VALUES (9, 'Colombia
', 'colombia', 'CO', false, 'n/a', '57', '1', true, NULL, NULL, true, NULL, NULL);


--
-- TOC entry 3346 (class 0 OID 24714)
-- Dependencies: 201
-- Data for Name: cb_currency; Type: TABLE DATA; Schema: public; Owner: usrprueba
--

INSERT INTO public.cb_currency (idcurrency, currency, description, isactive, isocode, cursymbol, precisionstd, precisioncost, precisionprize) VALUES (1, 'PESO COLOMBIANO', 'Moneda de colombia', true, '57 ', 'aasdasd', 10.00, 10.00, 10.00);


--
-- TOC entry 3359 (class 0 OID 24856)
-- Dependencies: 214
-- Data for Name: cb_customer; Type: TABLE DATA; Schema: public; Owner: usrprueba
--



--
-- TOC entry 3357 (class 0 OID 24830)
-- Dependencies: 212
-- Data for Name: cb_enterprise; Type: TABLE DATA; Schema: public; Owner: usrprueba
--



--
-- TOC entry 3347 (class 0 OID 24748)
-- Dependencies: 202
-- Data for Name: cb_language; Type: TABLE DATA; Schema: public; Owner: usrprueba
--

INSERT INTO public.cb_language (idlanguage, namelanguage, isactive, languageiso, countrycode, isbaselanguage, issystemlanguage) VALUES ('1', 'español', true, '57', '57', true, false);


--
-- TOC entry 3351 (class 0 OID 24786)
-- Dependencies: 206
-- Data for Name: cb_paymentmethod; Type: TABLE DATA; Schema: public; Owner: usrprueba
--



--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 209
-- Name: cb_address_idaddress_seq; Type: SEQUENCE SET; Schema: public; Owner: usrprueba
--

SELECT pg_catalog.setval('public.cb_address_idaddress_seq', 1, false);


--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 207
-- Name: cb_addresses_idaddresses_seq; Type: SEQUENCE SET; Schema: public; Owner: usrprueba
--

SELECT pg_catalog.setval('public.cb_addresses_idaddresses_seq', 1, false);


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 203
-- Name: cb_country_idcountry_seq; Type: SEQUENCE SET; Schema: public; Owner: usrprueba
--

SELECT pg_catalog.setval('public.cb_country_idcountry_seq', 9, true);


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 200
-- Name: cb_currency_idcurrency_seq; Type: SEQUENCE SET; Schema: public; Owner: usrprueba
--

SELECT pg_catalog.setval('public.cb_currency_idcurrency_seq', 1, true);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 213
-- Name: cb_customer_idcustomer_seq; Type: SEQUENCE SET; Schema: public; Owner: usrprueba
--

SELECT pg_catalog.setval('public.cb_customer_idcustomer_seq', 1, false);


--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 211
-- Name: cb_enterprise_identerprise_seq; Type: SEQUENCE SET; Schema: public; Owner: usrprueba
--

SELECT pg_catalog.setval('public.cb_enterprise_identerprise_seq', 1, false);


--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 205
-- Name: cb_paymentmethod_idpaymentmethod_seq; Type: SEQUENCE SET; Schema: public; Owner: usrprueba
--

SELECT pg_catalog.setval('public.cb_paymentmethod_idpaymentmethod_seq', 1, false);


--
-- TOC entry 3175 (class 2606 OID 24720)
-- Name: cb_currency cb_currency_pkey; Type: CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_currency
    ADD CONSTRAINT cb_currency_pkey PRIMARY KEY (idcurrency);


--
-- TOC entry 3195 (class 2606 OID 24817)
-- Name: cb_address pk_cb_address; Type: CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_address
    ADD CONSTRAINT pk_cb_address PRIMARY KEY (idaddress);


--
-- TOC entry 3193 (class 2606 OID 24806)
-- Name: cb_addresses pk_cb_addresses; Type: CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_addresses
    ADD CONSTRAINT pk_cb_addresses PRIMARY KEY (idaddresses);


--
-- TOC entry 3185 (class 2606 OID 24771)
-- Name: cb_country pk_cb_country; Type: CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_country
    ADD CONSTRAINT pk_cb_country PRIMARY KEY (idcountry);


--
-- TOC entry 3199 (class 2606 OID 24864)
-- Name: cb_customer pk_cb_customer; Type: CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_customer
    ADD CONSTRAINT pk_cb_customer PRIMARY KEY (idcustomer);


--
-- TOC entry 3181 (class 2606 OID 24755)
-- Name: cb_language pk_cb_language; Type: CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_language
    ADD CONSTRAINT pk_cb_language PRIMARY KEY (idlanguage);


--
-- TOC entry 3189 (class 2606 OID 24794)
-- Name: cb_paymentmethod pk_cb_paymentmethod; Type: CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_paymentmethod
    ADD CONSTRAINT pk_cb_paymentmethod PRIMARY KEY (idpaymentmethod);


--
-- TOC entry 3197 (class 2606 OID 24838)
-- Name: cb_enterprise pk_enterprise; Type: CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_enterprise
    ADD CONSTRAINT pk_enterprise PRIMARY KEY (identerprise);


--
-- TOC entry 3177 (class 2606 OID 24722)
-- Name: cb_currency u_cb_currency_currency; Type: CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_currency
    ADD CONSTRAINT u_cb_currency_currency UNIQUE (currency);


--
-- TOC entry 3179 (class 2606 OID 24724)
-- Name: cb_currency u_cb_currency_isocode; Type: CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_currency
    ADD CONSTRAINT u_cb_currency_isocode UNIQUE (isocode);


--
-- TOC entry 3183 (class 2606 OID 24757)
-- Name: cb_language u_cb_language_namelanguage; Type: CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_language
    ADD CONSTRAINT u_cb_language_namelanguage UNIQUE (namelanguage);


--
-- TOC entry 3187 (class 2606 OID 24773)
-- Name: cb_country un_cb_country_countrycode; Type: CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_country
    ADD CONSTRAINT un_cb_country_countrycode UNIQUE (countrycode);


--
-- TOC entry 3201 (class 2606 OID 24866)
-- Name: cb_customer un_cb_customer_cb_enterprise; Type: CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_customer
    ADD CONSTRAINT un_cb_customer_cb_enterprise UNIQUE (identerprise, customer);


--
-- TOC entry 3191 (class 2606 OID 24796)
-- Name: cb_paymentmethod un_cb_paymentmethod_paymentmethod; Type: CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_paymentmethod
    ADD CONSTRAINT un_cb_paymentmethod_paymentmethod UNIQUE (paymentmethod);


--
-- TOC entry 3206 (class 2606 OID 24839)
-- Name: cb_enterprise cb_enterprise_idlanguage; Type: FK CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_enterprise
    ADD CONSTRAINT cb_enterprise_idlanguage FOREIGN KEY (idlanguage) REFERENCES public.cb_language(idlanguage);


--
-- TOC entry 3204 (class 2606 OID 24818)
-- Name: cb_address fk_cb_address_idaddresses; Type: FK CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_address
    ADD CONSTRAINT fk_cb_address_idaddresses FOREIGN KEY (idaddresses) REFERENCES public.cb_addresses(idaddresses);


--
-- TOC entry 3205 (class 2606 OID 24823)
-- Name: cb_address fk_cb_address_idcountry; Type: FK CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_address
    ADD CONSTRAINT fk_cb_address_idcountry FOREIGN KEY (idcountry) REFERENCES public.cb_country(idcountry);


--
-- TOC entry 3202 (class 2606 OID 24774)
-- Name: cb_country fk_cb_country_idcurrency; Type: FK CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_country
    ADD CONSTRAINT fk_cb_country_idcurrency FOREIGN KEY (idcurrency) REFERENCES public.cb_currency(idcurrency);


--
-- TOC entry 3203 (class 2606 OID 24779)
-- Name: cb_country fk_cb_country_idlanguage; Type: FK CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_country
    ADD CONSTRAINT fk_cb_country_idlanguage FOREIGN KEY (idlanguage) REFERENCES public.cb_language(idlanguage);


--
-- TOC entry 3209 (class 2606 OID 24867)
-- Name: cb_customer fk_cb_customer_idaddresses; Type: FK CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_customer
    ADD CONSTRAINT fk_cb_customer_idaddresses FOREIGN KEY (idaddresses) REFERENCES public.cb_addresses(idaddresses);


--
-- TOC entry 3210 (class 2606 OID 24872)
-- Name: cb_customer fk_cb_customer_idcountry; Type: FK CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_customer
    ADD CONSTRAINT fk_cb_customer_idcountry FOREIGN KEY (idcountry) REFERENCES public.cb_country(idcountry);


--
-- TOC entry 3211 (class 2606 OID 24877)
-- Name: cb_customer fk_cb_customer_idcurrency; Type: FK CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_customer
    ADD CONSTRAINT fk_cb_customer_idcurrency FOREIGN KEY (idcurrency) REFERENCES public.cb_currency(idcurrency);


--
-- TOC entry 3212 (class 2606 OID 24882)
-- Name: cb_customer fk_cb_customer_identerprise; Type: FK CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_customer
    ADD CONSTRAINT fk_cb_customer_identerprise FOREIGN KEY (identerprise) REFERENCES public.cb_enterprise(identerprise);


--
-- TOC entry 3213 (class 2606 OID 24887)
-- Name: cb_customer fk_cb_customer_idlanguage; Type: FK CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_customer
    ADD CONSTRAINT fk_cb_customer_idlanguage FOREIGN KEY (idlanguage) REFERENCES public.cb_language(idlanguage);


--
-- TOC entry 3214 (class 2606 OID 24892)
-- Name: cb_customer fk_cb_customer_idpaymentmethod; Type: FK CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_customer
    ADD CONSTRAINT fk_cb_customer_idpaymentmethod FOREIGN KEY (idpaymentmethod) REFERENCES public.cb_paymentmethod(idpaymentmethod);


--
-- TOC entry 3207 (class 2606 OID 24844)
-- Name: cb_enterprise fk_cb_enterprise_idcountry; Type: FK CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_enterprise
    ADD CONSTRAINT fk_cb_enterprise_idcountry FOREIGN KEY (idcountry) REFERENCES public.cb_country(idcountry);


--
-- TOC entry 3208 (class 2606 OID 24849)
-- Name: cb_enterprise fk_cb_enterprise_idcurrency; Type: FK CONSTRAINT; Schema: public; Owner: usrprueba
--

ALTER TABLE ONLY public.cb_enterprise
    ADD CONSTRAINT fk_cb_enterprise_idcurrency FOREIGN KEY (idcurrency) REFERENCES public.cb_currency(idcurrency);


-- Completed on 2021-08-04 18:31:12 -05

--
-- PostgreSQL database dump complete
--
