setenv clpath $ORACLE_HOME/jdbc/lib/ojdbc8.jar:$ORACLE_HOME/md/jlib/sdoutl.jar:$ORACLE_HOME/md/jlib/sdoapi.jar
java -cp $clpath oracle.spatial.util.SampleShapefileToJGeomFeature -h p7dbdjv4.ine.es -p 1541 -s PBDBD14 -u E592E -d E592E -t PRUEBA_CARGA_SHPFILE -f shapes.shp -r 25830 -g SHP_FILE

