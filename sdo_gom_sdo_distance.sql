-- 2001 tipo geometria punto
-- 3042 etrs89-tm30
Select cpro,cmun,decode(coor_x,null,null,SDO_GEOM.SDO_DISTANCE(sdo_geometry(2001,25830,sdo_point_type(coor_x,coor_y,null),null,null),
                             sdo_geometry(2001,25830,sdo_point_type('494296,31000000', '4742741,76000000',null),null,null),
                             0.0001,
                             'unit=KM'))
                  
  From PBSY_MARCO_APPS_VERSIONES@PBDB_PB17
  where cpro = 1
                                                        
                                                        select coor_x,coor_y from pbsy_marco_apps_versiones@pbdb_pb17

select * from cs_srs a
where cs_name like '%ETRS%'
where a.srid=3042

SELECT   sdo_geom.sdo_distance( sdo_geometry(2001 ,8307 ,sdo_point_type(40.716715, -74.033907 , NULL) ,NULL ,NULL)
                           ,sdo_geometry(2001 ,8307 ,sdo_point_type(40.716300,-74.033901, NULL) ,NULL ,NULL) ,0.0001 ,'unit=M') distance_in_m
                           from DUAL;
                           
                           
Select SDO_GEOMETRY(2001, 25830, SDO_POINT_TYPE('494296,31000000', '4742741,76000000', Null), Null, Null)
  From DUAL
  s
  
  
                                                          
SELECT SDO_GEOM.VALIDATE_GEOMETRY_WITH_CONTEXT(sdo_geometry(2001 ,25830 ,sdo_point_type(COOR_X,COOR_Y, NULL) ,NULL ,NULL) , 0.005)                                                        
FROM Pbsy_Marco_Apps_Versiones


select
SDO_FILTER(sdo_geometry(2001 ,8307 ,sdo_point_type(40.716715, -74.033907 , NULL) ,NULL ,NULL), --sdo_filter operador similar
           sdo_geometry(2001 ,8307 ,sdo_point_type(40.716715, -74.033907 , NULL) ,NULL ,NULL)),
                     'mask=ANYINTERACT') --TOUCH, OVERLAPBDYDISJOINT, OVERLAPBDYINTERSECT, EQUAL, INSIDE, COVEREDBY, CONTAINS, COVERS, ANYINTERACT
					 
SDO_RELATE(sdo_geometry(2001 ,8307 ,sdo_point_type(40.716715, -74.033907 , NULL) ,NULL ,NULL), --sdo_filter operador similar
           sdo_geometry(2001 ,8307 ,sdo_point_type(40.716715, -74.033907 , NULL) ,NULL ,NULL)),
                     'mask=ANYINTERACT') --TOUCH, OVERLAPBDYDISJOINT, OVERLAPBDYINTERSECT, EQUAL, INSIDE, COVEREDBY, CONTAINS, COVERS, ANYINTERACT
					 
                     
    Select SDO_GCDR.GEOCODE_AS_GEOMETRY           
           ('APE592', SDO_KEYWORDARRAY('CALLE ALMAGRO','MADRID', 'MADRID', '28010', 'ESPAÑA') ,'ES')
      From DUAL;
      
      GC_COUNTRY_PROFILE					 