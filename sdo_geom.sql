-- 2001 tipo geometria punto
-- 3042 etrs89-tm30
select SDO_GEOM.SDO_DISTANCE( sdo_geometry(2001,25830,
                                                     sdo_point_type('494296,31000000','4742741,76000000',null),null,null),
                              sdo_geometry(2001,25830,
                                                     sdo_point_type(505547.51000000,3904351.48000000,null),null,null),
                                                        0.0001,'unit=KM')  from dual ;
														
select st_distance(st_geometry('point (''494296,31000000'' ''4742741,76000000'')', 25830),
				   st_geometry('point (505547.51000000 3904351.48000000)', 25830),"kilometer") distancia 
from dual														

select * from cs_srs a
where cs_name like '%ETRS%'
where a.srid=3042

SELECT   sdo_geom.sdo_distance( sdo_geometry(2001 ,8307 ,sdo_point_type(40.716715,-74.033907,NULL) ,NULL ,NULL),
								sdo_geometry(2001 ,8307 ,sdo_point_type(40.716300,-74.033901,NULL) ,NULL ,NULL) ,0.0001 ,'unit=M') distance_in_m
                           from DUAL;
                           
                           
SELECT sdo_geometry(2001,25830,sdo_point_type('494296,31000000','4742741,76000000',null),null,null) FROM DUAL 


-- INSERT INTO geoms (geometry) VALUES (
 -- st_geometry ('point (505547.51000000 3904351.48000000)', 25830)
-- );

-- select st_distance(st_geometry('point (505547.51000000 3904351.48000000)', 25830),
				   -- st_geometry('point (505547.51000000 3904351.48000000)', 25830)) distancia 
-- fron dual

-- INSERT INTO geoms (geometry) VALUES (
 -- st_geometry ('linestring (33 2, 34 3, 35 6)', 4326)
-- );

-- INSERT INTO geoms (geometry) VALUES (
 -- st_geometry ('polygon ((3 3, 4 6, 5 3, 3 3))', 4326)
-- );