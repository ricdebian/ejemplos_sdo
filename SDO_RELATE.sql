Select A.CPRO,
       A.CMUN,
       A.DIST,
       A.NSECC,
       S.CPRO,
       S.CMUN,
       S.CDIS,
       S.CSEC
  From PRUEBA_SECC_CE            S,
       PBSY_MARCO_APPS_VERSIONES A
 Where MDSYS.SDO_RELATE(SDO_GEOMETRY(2001, 25830, SDO_POINT_TYPE(A.COOR_X, A.COOR_Y, Null), Null, Null),
                        S.SHP_FILE,
                        'mask=INSIDE') = 'TRUE'
   And A.COOR_X Is Not Null;
Select A.CPRO,
       A.CMUN,
       A.DIST,
       A.NSECC,
       S.CPRO,
       S.CMUN,
       S.CDIS,
       S.CSEC
  From PRUEBA_SECC_CE            S,
       PBSY_MARCO_APPS_VERSIONES A
 Where MDSYS.SDO_RELATE(SDO_GEOMETRY(2001, 25830, SDO_POINT_TYPE(A.COOR_X, A.COOR_Y, Null), Null, Null),
                        S.SHP_FILE,
                        'mask=COVEREDBY') = 'TRUE'
   And A.COOR_X Is Not Null;

