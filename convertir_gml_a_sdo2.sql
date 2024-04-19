

select  sdo_util.from_GML311geometry( XMLSERIALIZE(CONTENT x.column_value))-- conviertido a texto
 from 
table (
SELECT xmlsequence(XMLQuery('
       xquery version "1.0";
       declare namespace gml="http://www.opengis.net/gml/3.2"; 
       declare namespace gmd="http://www.isotc211.org/2005/gmd";
       declare namespace ogc="http://www.opengis.net/ogc";
       declare namespace xlink="http://www.w3.org/1999/xlink";
       declare namespace AD="urn:x-inspire:specification:gmlas:Addresses:3.0";
       declare namespace xsi="http://www.w3.org/2001/XMLSchema-instance";
       for $i in /gml:FeatureCollection/gml:featureMember/AD:Address/AD:position/AD:GeographicPosition/AD:geometry
       return $i/gml:Point' PASSING c RETURNING CONTENT)
                   ) as puntos
  FROM (select sys.xmltype(gml) c from PBTB_00201_GMl)
   )x


select --extract(x.column_value,'//gml:Point/@gml:id','xmlns:gml="http://www.opengis.net/gml/3.2"').getstringval(), 
--substr(extract(x.column_value,'//gml:Point/@gml:id','xmlns:gml="http://www.opengis.net/gml/3.2"').getstringval(),-16,14), 
 x.column_value,
 xmlserialize(document x.column_value as clob) colunm_clob,
 sdo_util.from_GML311geometry(xmlserialize(document x.column_value as clob)), --convertido a clob
 sdo_util.to_gml321geometry(sdo_util.from_GML311geometry(xmlserialize(document
 sdo_util.to_gml311geometry(sdo_util.from_GML311geometry(xmlserialize(document
                                                                      x.column_value as clob)))
  from table (SELECT xmlsequence(XMLQuery('
       xquery version "1.0";
       declare namespace gml="http://www.opengis.net/gml/3.2"; 
       declare namespace gmd="http://www.isotc211.org/2005/gmd";
       declare namespace ogc="http://www.opengis.net/ogc";
       declare namespace xlink="http://www.w3.org/1999/xlink";
       declare namespace AD="urn:x-inspire:specification:gmlas:Addresses:3.0";
       declare namespace xsi="http://www.w3.org/2001/XMLSchema-instance";
       for $i in /gml:FeatureCollection/gml:featureMember/AD:Address/AD:position/AD:GeographicPosition/AD:geometry
       return $i/gml:Point' PASSING c
                                          RETURNING CONTENT)) as puntos
                FROM (select sys.xmltype(gml) c from PBTB_00201_GMl)) x
        select * from PBTB_00201_GMl