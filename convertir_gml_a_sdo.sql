
SELECT sdo_util.from_GML311geometry('<?xml version="1.0" encoding="ISO-8859-1"?>' ||extract(reg.COLUMN_VALUE, '/AD:geometry/gml:Point',
	' xmlns:gml="http://www.opengis.net/gml/3.2"
    xmlns:gmd="http://www.isotc211.org/2005/gmd"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:AD="urn:x-inspire:specification:gmlas:Addresses:3.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"')  
                                 ),
                                 
extract(reg.COLUMN_VALUE, '/AD:geometry/gml:Point',
	' xmlns:gml="http://www.opengis.net/gml/3.2"
    xmlns:gmd="http://www.isotc211.org/2005/gmd"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:AD="urn:x-inspire:specification:gmlas:Addresses:3.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"')                                    
    
  FROM table(Select XMLSEQUENCE(EXTRACT(XMLTYPE(GML),
                                         '/gml:FeatureCollection/gml:featureMember/AD:Address/AD:position/AD:GeographicPosition/AD:geometry',
                                         'xmlns:GN="urn:x-inspire:specification:gmlas:GeographicalNames:3.0" 
                xmlns:base="urn:x-inspire:specification:gmlas:BaseTypes:3.2" 
                xmlns:gml="http://www.opengis.net/gml/3.2" 
                xmlns:gmd="http://www.isotc211.org/2005/gmd" 
                xmlns:ogc="http://www.opengis.net/ogc" 
                xmlns:xlink="http://www.w3.org/1999/xlink" 
                xmlns:AD="urn:x-inspire:specification:gmlas:Addresses:3.0" 
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"')) GEOMETRIA
                From PBTB_00201_GML) reg
                
                
Select XMLSEQUENCE(EXTRACT(XMLTYPE(GML),
                                         '/gml:FeatureCollection/gml:featureMember/AD:Address/AD:position/AD:GeographicPosition/AD:geometry',
                                         'xmlns:GN="urn:x-inspire:specification:gmlas:GeographicalNames:3.0" 
                xmlns:base="urn:x-inspire:specification:gmlas:BaseTypes:3.2" 
                xmlns:gml="http://www.opengis.net/gml/3.2" 
                xmlns:gmd="http://www.isotc211.org/2005/gmd" 
                xmlns:ogc="http://www.opengis.net/ogc" 
                xmlns:xlink="http://www.w3.org/1999/xlink" 
                xmlns:AD="urn:x-inspire:specification:gmlas:Addresses:3.0" 
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"')) GEOMETRIA
                From PBTB_00201_GML                
                
                xmlsequece función que 
                
select * from 
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
       return <Puntos>
                  {$i/gml:Point}
</Puntos>' PASSING c RETURNING CONTENT)
                   ) as puntos
  FROM (select sys.xmltype(gml) c from PBTB_00201_GMl)
   )x
  
  
 select * from table(
  select 
  xmlsequence(
  xmlquery(' xquery version "1.0"; 
         for $i in /raiz/secundario
            return <secuencias>
            {$i}
                </secuencias>' PASSING x returning content
           )
         )
  from (                 
                         select sys.xmltype('<raiz>
                                   
                                       <secundario>aaaaaa</secundario>
                                       <secundario>bbbbbb</secundario>
                                       <secundario>cccccc</secundario>
                                   
                               </raiz>') x from dual        )
                               )


                                               

 select * from table(
  select 
  xmlsequence(
  xmlquery(' xquery version "1.0"; 
         for $i in /raiz/secundario
         return $i' PASSING x returning content
           )
         )
  from (                 
                         select sys.xmltype('<raiz>
                                   
                                       <secundario>aaaaaa</secundario>
                                       <secundario>bbbbbb</secundario>
                                       <secundario>cccccc</secundario>
                                   
                               </raiz>') x from dual        )
                               )
                                               
                                               
                                               pbtb_casevias_mdg_dgc
                                               
                                               select * from sgtech_meta_version 