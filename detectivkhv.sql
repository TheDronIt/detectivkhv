PGDMP                          z            detectivkhv    14.1    14.1     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    25373    detectivkhv    DATABASE     h   CREATE DATABASE detectivkhv WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE detectivkhv;
                postgres    false            ?            1259    25400 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap 	   thedronit    false            ?            1259    25399    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       	   thedronit    false    216            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public       	   thedronit    false    215            ?            1259    25409    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap 	   thedronit    false            ?            1259    25408    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       	   thedronit    false    218            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public       	   thedronit    false    217            ?            1259    25393    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap 	   thedronit    false            ?            1259    25392    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       	   thedronit    false    214            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public       	   thedronit    false    213            ?            1259    25416 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap 	   thedronit    false            ?            1259    25425    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap 	   thedronit    false            ?            1259    25424    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       	   thedronit    false    222            ?           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public       	   thedronit    false    221            ?            1259    25415    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       	   thedronit    false    220            ?           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public       	   thedronit    false    219            ?            1259    25432    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap 	   thedronit    false            ?            1259    25431 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       	   thedronit    false    224            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public       	   thedronit    false    223            ?            1259    25491    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap 	   thedronit    false            ?            1259    25490    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       	   thedronit    false    226            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public       	   thedronit    false    225            ?            1259    25384    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap 	   thedronit    false            ?            1259    25383    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       	   thedronit    false    212            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public       	   thedronit    false    211            ?            1259    25375    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap 	   thedronit    false            ?            1259    25374    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       	   thedronit    false    210            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public       	   thedronit    false    209            ?            1259    25520    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap 	   thedronit    false            ?            1259    33584    web_contactus    TABLE     ?   CREATE TABLE public.web_contactus (
    id bigint NOT NULL,
    "Name" character varying(120) NOT NULL,
    "Email" character varying(120) NOT NULL,
    "Phone" character varying(120) NOT NULL,
    "Message" text NOT NULL
);
 !   DROP TABLE public.web_contactus;
       public         heap 	   thedronit    false            ?            1259    33583    web_contactus_id_seq    SEQUENCE     }   CREATE SEQUENCE public.web_contactus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.web_contactus_id_seq;
       public       	   thedronit    false    233            ?           0    0    web_contactus_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.web_contactus_id_seq OWNED BY public.web_contactus.id;
          public       	   thedronit    false    232            ?            1259    33575    web_doc    TABLE     ?   CREATE TABLE public.web_doc (
    id bigint NOT NULL,
    "Title" character varying(120) NOT NULL,
    "Description" text NOT NULL,
    "File" character varying(100) NOT NULL
);
    DROP TABLE public.web_doc;
       public         heap 	   thedronit    false            ?            1259    33574    web_doc_id_seq    SEQUENCE     w   CREATE SEQUENCE public.web_doc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.web_doc_id_seq;
       public       	   thedronit    false    231            ?           0    0    web_doc_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.web_doc_id_seq OWNED BY public.web_doc.id;
          public       	   thedronit    false    230            ?            1259    33593 	   web_order    TABLE       CREATE TABLE public.web_order (
    id bigint NOT NULL,
    "Service" character varying(120) NOT NULL,
    "Name" character varying(120) NOT NULL,
    "Email" character varying(120) NOT NULL,
    "Phone" character varying(120) NOT NULL,
    "Message" text NOT NULL
);
    DROP TABLE public.web_order;
       public         heap 	   thedronit    false            ?            1259    33592    web_order_id_seq    SEQUENCE     y   CREATE SEQUENCE public.web_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.web_order_id_seq;
       public       	   thedronit    false    235            ?           0    0    web_order_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.web_order_id_seq OWNED BY public.web_order.id;
          public       	   thedronit    false    234            ?            1259    33566    web_service    TABLE     ?   CREATE TABLE public.web_service (
    id bigint NOT NULL,
    "Name" character varying(120) NOT NULL,
    "Icon" character varying(100) NOT NULL,
    "Image" character varying(100) NOT NULL,
    "About" text NOT NULL,
    "Price" integer NOT NULL
);
    DROP TABLE public.web_service;
       public         heap 	   thedronit    false            ?            1259    33565    web_service_id_seq    SEQUENCE     {   CREATE SEQUENCE public.web_service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_service_id_seq;
       public       	   thedronit    false    229            ?           0    0    web_service_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.web_service_id_seq OWNED BY public.web_service.id;
          public       	   thedronit    false    228            ?           2604    25403    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    215    216    216            ?           2604    25412    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    217    218    218            ?           2604    25396    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    213    214    214            ?           2604    25419    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    219    220    220            ?           2604    25428    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    222    221    222            ?           2604    25435    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    223    224    224            ?           2604    25494    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    225    226    226            ?           2604    25387    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    211    212    212            ?           2604    25378    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    209    210    210            ?           2604    33587    web_contactus id    DEFAULT     t   ALTER TABLE ONLY public.web_contactus ALTER COLUMN id SET DEFAULT nextval('public.web_contactus_id_seq'::regclass);
 ?   ALTER TABLE public.web_contactus ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    233    232    233            ?           2604    33578 
   web_doc id    DEFAULT     h   ALTER TABLE ONLY public.web_doc ALTER COLUMN id SET DEFAULT nextval('public.web_doc_id_seq'::regclass);
 9   ALTER TABLE public.web_doc ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    230    231    231            ?           2604    33596    web_order id    DEFAULT     l   ALTER TABLE ONLY public.web_order ALTER COLUMN id SET DEFAULT nextval('public.web_order_id_seq'::regclass);
 ;   ALTER TABLE public.web_order ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    235    234    235            ?           2604    33569    web_service id    DEFAULT     p   ALTER TABLE ONLY public.web_service ALTER COLUMN id SET DEFAULT nextval('public.web_service_id_seq'::regclass);
 =   ALTER TABLE public.web_service ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    228    229    229            |          0    25400 
   auth_group 
   TABLE DATA                 public       	   thedronit    false    216   c?       ~          0    25409    auth_group_permissions 
   TABLE DATA                 public       	   thedronit    false    218   }?       z          0    25393    auth_permission 
   TABLE DATA                 public       	   thedronit    false    214   ??       ?          0    25416 	   auth_user 
   TABLE DATA                 public       	   thedronit    false    220   ?       ?          0    25425    auth_user_groups 
   TABLE DATA                 public       	   thedronit    false    222   ;?       ?          0    25432    auth_user_user_permissions 
   TABLE DATA                 public       	   thedronit    false    224   U?       ?          0    25491    django_admin_log 
   TABLE DATA                 public       	   thedronit    false    226   o?       x          0    25384    django_content_type 
   TABLE DATA                 public       	   thedronit    false    212   ??       v          0    25375    django_migrations 
   TABLE DATA                 public       	   thedronit    false    210   ??       ?          0    25520    django_session 
   TABLE DATA                 public       	   thedronit    false    227   ?       ?          0    33584    web_contactus 
   TABLE DATA                 public       	   thedronit    false    233   ??       ?          0    33575    web_doc 
   TABLE DATA                 public       	   thedronit    false    231   C?       ?          0    33593 	   web_order 
   TABLE DATA                 public       	   thedronit    false    235   C?       ?          0    33566    web_service 
   TABLE DATA                 public       	   thedronit    false    229   d?       ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public       	   thedronit    false    215            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public       	   thedronit    false    217            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
          public       	   thedronit    false    213            ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public       	   thedronit    false    221            ?           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public       	   thedronit    false    219            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public       	   thedronit    false    223            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 7, true);
          public       	   thedronit    false    225            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
          public       	   thedronit    false    211            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);
          public       	   thedronit    false    209            ?           0    0    web_contactus_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.web_contactus_id_seq', 4, true);
          public       	   thedronit    false    232            ?           0    0    web_doc_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.web_doc_id_seq', 1, true);
          public       	   thedronit    false    230            ?           0    0    web_order_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.web_order_id_seq', 4, true);
          public       	   thedronit    false    234            ?           0    0    web_service_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.web_service_id_seq', 1, true);
          public       	   thedronit    false    228            ?           2606    25518    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         	   thedronit    false    216            ?           2606    25448 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         	   thedronit    false    218    218            ?           2606    25414 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         	   thedronit    false    218            ?           2606    25405    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         	   thedronit    false    216            ?           2606    25439 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         	   thedronit    false    214    214            ?           2606    25398 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         	   thedronit    false    214            ?           2606    25430 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         	   thedronit    false    222            ?           2606    25463 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         	   thedronit    false    222    222            ?           2606    25421    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         	   thedronit    false    220            ?           2606    25437 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         	   thedronit    false    224            ?           2606    25477 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         	   thedronit    false    224    224            ?           2606    25513     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         	   thedronit    false    220            ?           2606    25499 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         	   thedronit    false    226            ?           2606    25391 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         	   thedronit    false    212    212            ?           2606    25389 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         	   thedronit    false    212            ?           2606    25382 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         	   thedronit    false    210            ?           2606    25526 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         	   thedronit    false    227            ?           2606    33591     web_contactus web_contactus_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.web_contactus
    ADD CONSTRAINT web_contactus_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.web_contactus DROP CONSTRAINT web_contactus_pkey;
       public         	   thedronit    false    233            ?           2606    33582    web_doc web_doc_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.web_doc
    ADD CONSTRAINT web_doc_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.web_doc DROP CONSTRAINT web_doc_pkey;
       public         	   thedronit    false    231            ?           2606    33600    web_order web_order_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.web_order
    ADD CONSTRAINT web_order_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.web_order DROP CONSTRAINT web_order_pkey;
       public         	   thedronit    false    235            ?           2606    33573    web_service web_service_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.web_service
    ADD CONSTRAINT web_service_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.web_service DROP CONSTRAINT web_service_pkey;
       public         	   thedronit    false    229            ?           1259    25519    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         	   thedronit    false    216            ?           1259    25459 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         	   thedronit    false    218            ?           1259    25460 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         	   thedronit    false    218            ?           1259    25445 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         	   thedronit    false    214            ?           1259    25475 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         	   thedronit    false    222            ?           1259    25474 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         	   thedronit    false    222            ?           1259    25489 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         	   thedronit    false    224            ?           1259    25488 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         	   thedronit    false    224            ?           1259    25514     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         	   thedronit    false    220            ?           1259    25510 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         	   thedronit    false    226            ?           1259    25511 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         	   thedronit    false    226            ?           1259    25528 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         	   thedronit    false    227            ?           1259    25527 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         	   thedronit    false    227            ?           2606    25454 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       	   thedronit    false    214    218    3252            ?           2606    25449 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       	   thedronit    false    216    3257    218            ?           2606    25440 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       	   thedronit    false    214    3247    212            ?           2606    25469 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       	   thedronit    false    216    222    3257            ?           2606    25464 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       	   thedronit    false    222    3265    220            ?           2606    25483 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       	   thedronit    false    214    224    3252            ?           2606    25478 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       	   thedronit    false    3265    224    220            ?           2606    25500 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       	   thedronit    false    226    3247    212            ?           2606    25505 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       	   thedronit    false    220    3265    226            |   
   x???          ~   
   x???          z   f  x????j?@??~??%S??CW?da	4i?F?G?HF?	Y?]??M??0)?!m??7?h|????E?????????fǧ???????D?????????|%??0M?8?a??w!??LF?<?^?yy??@?_?o?????n[???"??X??O??ڢ???\?6??׭?K??(???????o?X?>!r)?:???E?e(?j ??d???#????%?!?`???A??D SL?
5??`?lX$q???}a??????d?޵???T;0??+?Ѧm`p?5??2ѱ*?|????Y.Ռ??-?h*=??`S1.v???E??NR?t6W??.?????L??H?4I??uh?0Z?)??K???̈?x?@???g??P g?? ???|v?i???U|R?/귺? ????2?A?9???r H?,??J ???? _|??zT????U????Ƙ?A?c^???????q8;p+y??&?V
c???C?S????Fݫ;??ZhMo??O?M?Lٖ??,O1D?t??- ??+w?b;?e?????d;Vi??F(?6???Fq?qRW?% g?Ӻ/.	??t\9\cC?j=??(?      ?     x?5??n?0??}?^???-S?%ӅeD????H?2ʀ??h?ӯ?lړ?=??r????؃`?߂?>????Z?Q??C[??J]?4)?JG??????T]1?phjIf??Ku????
??nJ?$i=k~1??je??,???????Z`P???E*??x}????3?߾??? ?????U?g?????psd????u???????`x????M??????????B?? ?ss1v&?<<?????j?l??k????ܛ??a?І?F??pN????kģ?^??Y?p?      ?   
   x???          ?   
   x???          ?   (  x?͕?n?@??y??/mEb???bNz???D?RYn??'J?*?$??7nJ?Ҵ	??~#f?D??J???ֳ3k??{?????w?z??vҴ??(mu?(?$i???`;??5????YґU???f??rؗ?????vԪB?9?#Î?5?i&?,?^??)d;????'???M????5?j? u??a3?cܿG?&P#???]-??G?RM??s5Uנ~???????9??p?L??nq}??3+?c[???a?É???F?а?Z#(????;>[E?>???Z?9X??o?8???B?A?x1Q3?)r[???(_b????&?&??f̼??\?4n??|+ނ^%?SS럌?2?k???yulWԙ箷????h?`H?j????Ć/N?ؾˉ?K_?H??2^rKΦ%p????tc????{?m9Q???K??]???=A????Ȋ??xR?}Z'?l?ZφD0W+w??F?uTޝ?[C??	8???????R?`??J?T? N????*gv??\?n      x   ?   x???=?0ཿ"[-?~???CA*Xu-ij$MB>??{S??mwp??GH^?????????'czǲQQ?1?*?i?F??k]	\3??VQ&t?.???Ř?\ơ?	{???m???Ӟ???뚙?[˕??g?~c??p?????8y??|?n??.h`??O???p??>Y??̓??׃M?s7?ۯa⼅ӳ??+C??&?^?#1?      v   o  x????o?0?{?
ni??=???=T?:i?v???RO??????g?l????`)B!$??{_???????}rs{?%駇ڮ???n?N5?rz?];$綼Lt?_&?n??mmMy?|?????]r??jݵ?i?qӛa??	!?lkG???	??b? PP?????.>??D????Ƨ???Y?dT?	ec?S???G%????|w?F9?t?F?uJ???I ??~??o(Qz=?G=ֺR??ή_stG9r??0???/??K6	E?0Өt=?z?;s???F??ڴ????QШ?<?ѝm??4??'?$??@?,?Ϛۂu??1?#&??& !???j=??z???S?8*$???? de>??'??f~???e??:?bW?g]?R???C?8?9՘a?????P??@C_~4a?eRB3??i,??rv??KJ??Y????V?n?Ove???k3]????̨?u/??Q??1??9????????G?N?$??B?NΓ0oEy???j?Ȍy??2?P? /P,OY?7?qw?$?????}?AE????J??.??L.Xܹ?h?v????4ߓ??Y?X?y?w!??C?(?) w????_A?9      ?   ?  x???K??P ཿ??3?????PDA?Ά?p???)??oM?I?@M??????U?fX??5cT??m??UR=?{TW??W	r?l??#?p???A|????ᢺ?ۺ?f?	?Y?v9?Rw?H?p?C~f;????[o?~?3U?'$9g(d#;?L@GT?4/??)?ȇz<??????V????g???8v`?4?cs?5???71s?@??rL?K?L???~???u??????@g$OJ??ih?%}T?ܶ????i??9???7l?"??o,???!?)?w?3???U?9s#vG(nr?p?VǱoYt{?$I?????H[??8??F????????1mK4<?We???e?Pߙ??????O??1?R?O?P?kN???lT?Fň??Y???0??A>	??۟/?ߡ?-E?#|??V? ???O      ?   t   x???v
Q???W((M??L?+OM?O??+IL.)-V??L?QP?K?MUҮ???9 F@F~X?7??81=UIS!??'?5XA?HGA?PD8??ù???\?ԷϘ???೏? ??Zc      ?   ?   x?u?Ak?@????\? ??=? ??{}`aA4???Zh{)x?z?H0???????ۈ??zy???_??k?????w?F*??E'UTX#?W?Q?ʣ͂???j2??V?]???N?գ?u?<??A?=
r??y??,?
?v?-2r???ք?y5??-~G?e??|X?ܑdJ?,?B&vr?ca-Q[??&_??,P?ohI?i??zC???!e$???eh>?K???t]?áWm8?s ?~ҕ      ?     x???v
Q???W((M??L?+OM??/JI-R??L?QP
N-*?LNU2?s??knbf?????M-.NLOU?Ts?	uV?0?QP??????.6(\l?????[?x??v*\?a??.l??(???^??]@?=
`e??B{?AfL j?T???N?1/?(?2;1???!????\????????????1?khd??i??I3?P˃?.??)?s??b+H,75?;1;?쿢Rde
@?.??0D??I
@?@???`?/v?l ??? ?yݱ      ?   ?   x???v
Q???W((M??L?+OM?/N-*?LNU??L?QP?K?MUҞ??y`:71,???_ZbU+i*?9???+h?(?_Xxa??}.6^?ta??-@??;.쿰O????6\??pa/P?.?????@?=?@3?????&?-t/6^l??hƮt/l??|aP??;t?
??Q4??
ә?X^?Z?????HhZsqq ??si     