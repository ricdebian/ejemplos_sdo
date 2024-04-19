Select A.SECU_APP_FINAL,
       A.COOR_X,
       A.COOR_Y,
       B.COOR_X,
       B.COOR_Y,
       SDO_CS.TRANSFORM(SDO_GEOMETRY(2001,
                                     SUBSTR(HUSO_SRS, 6, 5),
                                     SDO_POINT_TYPE(SUBSTR(B.COOR_X, 1, LENGTH(B.COOR_X) - 2) || ',' ||
                                                    SUBSTR(B.COOR_X, -2),
                                                    SUBSTR(B.COOR_Y, 1, LENGTH(B.COOR_Y) - 2) || ',' || -- desde 1 hasta la lingitud menos 2 posiciones que tienen los decimales.
                                                    SUBSTR(B.COOR_Y, -2), -- dos posiciones empezando desde atras hasta el final
                                                    Null),
                                     Null,
                                     Null),
                        25830).sdo_point.X,
       SDO_CS.TRANSFORM(SDO_GEOMETRY(2001,
                                     SUBSTR(HUSO_SRS, 6, 5),
                                     SDO_POINT_TYPE(SUBSTR(B.COOR_X, 1, LENGTH(B.COOR_X) - 2) || ',' ||
                                                    SUBSTR(B.COOR_X, -2),
                                                    SUBSTR(B.COOR_Y, 1, LENGTH(B.COOR_Y) - 2) || ',' || -- desde 1 hasta la lingitud menos 2 posiciones que tienen los decimales.
                                                    SUBSTR(B.COOR_Y, -2), -- dos posiciones empezando desde atras hasta el final
                                                    Null),
                                     Null,
                                     Null),
                        25830).sdo_point.Y                        
  From PBSY_MARCO_APPS_VERSIONES@PB14_PB17 A,
       PBSY_COOR_COINCIDE@PB14_PB17        B
 Where --a.SECU_APP_FINAL = 4172638
 ESTADO = '2'
 And A.SECU_APP_FINAL = B.SECU_APP_FINAL
 
 
 Select A.SECU_APP_FINAL,
       A.COOR_X,
       A.COOR_Y,
       B.COOR_X,
       B.COOR_Y,
       SDO_CS.TRANSFORM(SDO_GEOMETRY(2001,
                                     SUBSTR(HUSO_SRS, 6, 5),
                                     SDO_POINT_TYPE(B.COOR_X/100,
                                                    B.COOR_Y/100, -- dos posiciones empezando desde atras hasta el final
                                                    Null),
                                     Null,
                                     Null),
                        25830).sdo_point.X,
       SDO_CS.TRANSFORM(SDO_GEOMETRY(2001,
                                     SUBSTR(HUSO_SRS, 6, 5),
								     SDO_POINT_TYPE(B.COOR_X/100,
                                                    B.COOR_Y/100, -- dos posiciones empezando desde atras hasta el final
                                                    Null),
                                     Null,
                                     Null),
                        25830).sdo_point.Y                        
  From PBSY_MARCO_APPS_VERSIONES@PB14_PB17 A,
       PBSY_COOR_COINCIDE@PB14_PB17        B
 Where --a.SECU_APP_FINAL = 4172638
 ESTADO = '2'
 And A.SECU_APP_FINAL = B.SECU_APP_FINAL
 
 
 
 
 Select A.SECU_APP_FINAL,
       A.COOR_X,
       A.COOR_Y,
       b.HUSO_SRS,
       B.COOR_X,
       B.COOR_Y,
       B.COOR_X / 100,
       B.COOR_Y / 100,
       case when SUBSTR(HUSO_SRS, 6, 5) in ('25831','25828''25829')  then
       SDO_CS.TRANSFORM(SDO_GEOMETRY(2001,
                                     SUBSTR(HUSO_SRS, 6, 5),
                                     SDO_POINT_TYPE(B.COOR_X / 100,
                                                    B.COOR_Y / 100, -- dos posiciones empezando desde atras hasta el final
                                                    Null),
                                     Null,
                                     Null),
                        25830) .SDO_POINT.X
       else      
              B.COOR_X / 100
       end  coor_x,
              case when SUBSTR(HUSO_SRS, 6, 5) in ('25831','25828''25829')  then
       SDO_CS.TRANSFORM(SDO_GEOMETRY(2001,
                                     SUBSTR(HUSO_SRS, 6, 5),
                                     SDO_POINT_TYPE(B.COOR_X / 100,
                                                    B.COOR_Y / 100, -- dos posiciones empezando desde atras hasta el final
                                                    Null),
                                     Null,
                                     Null),
                        25830) .SDO_POINT.Y
       else      
              B.COOR_Y / 100
       end  coor_y
               
  From PBSY_MARCO_APPS_VERSIONES A,
       PBSY_COOR_COINCIDE       B
 Where --a.SECU_APP_FINAL = 4172638
 ESTADO = '2'
 And a.cpro = b.cpro 
 and A.SECU_APP_FINAL = B.SECU_APP_FINAL
 and SUBSTR(HUSO_SRS, 6, 5) in ('25831','25828''25829') 