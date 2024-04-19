-- Casos blanqueo de coordenadas erroneas en 2021 
-- Y actualización de coordenadas
-- Se blanquearon coordenadas erroneas en 20220
-- En noviembre 2021 se hizo un traslado de curce con catastro de RC  y coordenadas.

Select *
  From PBTB_MARCO_APPS_VERSIONES
 Where CPRO = 32
   And SECU_FISICA = 604409
   And NUMER In ('0004', '0006')
 Order By NUMER,
          ESTADO,
          FVAR,
          FBAJ
          
          
          select * from pbsy_marco_vias_versiones v
          where 
          
          Select SUBSTR(A.NATCODE, -5, 2),
                 SUBSTR(A.NATCODE, -3, 3),
                 A.*
            From MUNICIPIOS_SDO A
           Order By SUBSTR(A.NATCODE, -5, 2),
                    SUBSTR(A.NATCODE, -3, 3)
          
          Select *
            From PBSY_CCAA_PRO_MUN_COMARCA C
           Where C.CPRO = '01'
             And C.CMUN = '003'
          
CREATE table t_MUNICIPIOS_SDO AS          
 Select A.*,S.NAMEUNIT,
        S.SHP_FILE LIMITE_MUN,
        SDO_GEOMETRY(2001, 25830, SDO_POINT_TYPE(A.COOR_X, A.COOR_Y, Null), Null, Null) PUNTO_APP
   From MUNICIPIOS_SDO            S,
        PBSY_MARCO_APPS_VERSIONES A
  Where MDSYS.SDO_RELATE(SDO_GEOMETRY(2001, 25830, SDO_POINT_TYPE(A.COOR_X, A.COOR_Y, Null), Null, Null),
                         S.SHP_FILE,
                         'mask=ANYINTERACT') = 'FALSE'
    And A.CPRO = SUBSTR(S.NATCODE, -5, 2)
    And A.CMUN = SUBSTR(S.NATCODE, -3, 3)
    And A.COOR_X Is Not Null
    And A.ESTADO = '2'

    
  Select A.CPRO,
         Count(*)
    From MUNICIPIOS_SDO            S,
         PBSY_MARCO_APPS_VERSIONES A
   Where MDSYS.SDO_RELATE(SDO_GEOMETRY(2001, 25830, SDO_POINT_TYPE(A.COOR_X, A.COOR_Y, Null), Null, Null),
                          S.SHP_FILE,
                          'mask=INSIDE') = 'TRUE'
     And A.CPRO = SUBSTR(S.NATCODE, -5, 2)
     And A.CMUN = SUBSTR(S.NATCODE, -3, 3)
     And A.COOR_X Is Not Null
     And A.ESTADO = '2'
   Group By CPRO
   
   select * from MUNICIPIOS_SDO
    where sdo_geom.validate_geometry_with_context(shp_file, 82) != 'TRUE'
    
    select count(*) from t_Municipios_Sdo_Anyinteract