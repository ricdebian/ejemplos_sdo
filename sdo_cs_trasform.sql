select * from alp_sy_findgc_11_201712
pbsy_marco_apps_versiones.co

Select SUBSTR(HUSO_SRS, 6, 5),
       SDO_GEOM.SDO_DISTANCE(sdo_geometry(2001, SUBSTR(HUSO_SRS, 6, 5), SDO_POINT_TYPE(COOR_X, COOR_Y, Null), Null, Null),
       sdo_geometry(2001, SUBSTR(HUSO_SRS, 6, 5), SDO_POINT_TYPE(COOR_X, COOR_Y, Null), Null, Null),0.0001,'unit=M'),
       SDO_CS.TRANSFORM(sdo_geometry(2001, SUBSTR(HUSO_SRS, 6, 5), SDO_POINT_TYPE(COOR_X, COOR_Y, Null), Null, Null), 25830 ),
       SDO_CS.TRANSFORM(sdo_geometry(2001, SUBSTR(HUSO_SRS, 6, 5), SDO_POINT_TYPE(substr(COOR_X,1,6)||','||substr(COOR_X,7,2), substr(COOR_Y,1,7)||','||substr(COOR_Y,8,2), Null), Null, Null), 25830 )  
  From PBSY_COOR_COINCIDE@PBDB_PB17
  
  
  select SDO_GEOM.SDO_DISTANCE( sdo_geometry(2001,25830,
                                                     sdo_point_type('494296,31000000','4742741,76000000',null),null,null),
                              sdo_geometry(2001,25830,
                                                     sdo_point_type(505547.51000000,3904351.48000000,null),null,null),
                                                        0.0001,'unit=KM')  from dual ;

 select * From cs_srs
 where upper(cs_name) like '%ETRS%'
 
 select * from   PBSY_COOR_COINCIDE@PB14_PB17
 
 
 
 
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
 
 
 sdo_
 
  SELECT *
  from pbsy_coor_coincide--_n@pbdb_pb17
  where ref_cat<> rc_mdg
  
  select * from pbsy_coor_coincide
  where secu_app_final = 4188980
  
  select count(*) from pbsy_rc_coincide--_n@pbdb_pb17
  where cpro=15
  and cmun=19
  and secu_app_final in (Select SECU_APP_FINAL
                                    From PBSY_APPS_SECC_DIST_TRAM)
  select * from pbsy_fin15_dgc_rc
  where cpro=15
   and cmun=19 --16648
   and par='15019A04200288'
   
   Select *
     From ALP_SY_FINDGC_15_202012 A
    Where A.NVIA_DGC Like 'CHARCO%CABRAS%'
      And NUMER = 5
   
   
   do_geom.sdo_distance( sdo_geometry(2001 ,8307 ,sdo_point_type(40.716715, -74.033907 , NULL) ,NULL ,NULL)
                           ,SDO_CS.TRANSFORM(sdo_geometry(2001, SUBSTR(HUSO_SRS, 6, 5), SDO_POINT_TYPE(COOR_X, COOR_Y, Null), Null, Null), 25830 ) ,0.0001 ,'unit=M') 