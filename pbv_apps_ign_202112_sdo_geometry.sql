create or replace view pbsy_apps_ign_202112 as
Select a."ID",a."CVIA",a."I_TVIA",a."TIPVIA",a."NOMVIA",a."SECU_FISICA",a."NUMERO",a."TP",a."CALIF",a."BLOQUE",a."PORTAL",a."ESCAL",a."NOMLOC",a."CODPOSTAL",a."CCA",a."DCA",a."CPRO",a."PROVINCIA",a."CCOM",a."ISLACOMARC",a."CMUN",a."MUNICIPIO",a."CENTCO",a."DENTCO",a."CENTSI",a."DENTSI",a."CNUCLE",a."DNUCLE",a."DIST",a."NSECC",a."INETRA",a."LENGUA",a."TIPDATO",a."ESTADO",a."PROVEEDOR",a."COORD_X",a."COORD_Y",
      SDO_GEOMETRY(2001,  25830, SDO_POINT_TYPE(a.COORd_X, 1, a.COORd_Y),
                                     Null,
                                     Null)   geometria_app
  From  PBSY_APPS_IGN_202112@pbdbd14 a

