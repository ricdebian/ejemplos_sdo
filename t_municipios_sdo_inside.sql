  CREATE table t_MUNICIPIOS_SDO_INSIDE
  TABLESPACE PBTS_SML_F1
   AS      
  Select A.*,S.NAMEUNIT,
        --S.SHP_FILE LIMITE_MUN,
        SDO_GEOMETRY(2001, 25830, SDO_POINT_TYPE(A.COOR_X, A.COOR_Y, Null), Null, Null) PUNTO_APP
    From MUNICIPIOS_SDO            S,
         PBSY_MARCO_APPS_VERSIONES A
   Where MDSYS.SDO_RELATE(SDO_GEOMETRY(2001, 25830, SDO_POINT_TYPE(A.COOR_X, A.COOR_Y, Null), Null, Null),
                          S.SHP_FILE,
                          'mask=INSIDE') = 'TRUE'
     And A.CPRO = SUBSTR(S.NATCODE, -5, 2)
     And A.CMUN = SUBSTR(S.NATCODE, -3, 3)
     And A.COOR_X Is Not Null
     And A.ESTADO = '2'

     CREATE OR REPLACE VIEW V_MUNICIPIOS_INSIDE_01003 AS
     SELECT * FROM t_MUNICIPIOS_SDO_INSIDE
     WHERE CPRO =1 AND CMUN=3
SELECT * FROM MUNICIPIOS_SDO

SELECT * FROM V_MUNICIPIOS_INSIDE_01003


Select *
  From MUNICIPIOS_SDO S
 Where SUBSTR(S.NATCODE, -5, 2) = '01'
   And SUBSTR(S.NATCODE, -3, 3) = '003'

     
     select count(*) from t_MUNICIPIOS_SDO_INSIDE