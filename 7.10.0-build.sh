
element=7.10.0

sh ers-patch.sh

sed -i "s/super(name, settings);/super(indexSettings, name, settings);/" src/main/java/org/elasticsearch/index/analysis/hao/HaoAnalyzerProvider.java
sed -i "s/org.elasticsearch.core.PathUtils/org.elasticsearch.common.io.PathUtils/" src/main/java/com/itenlee/search/analysis/lucence/Configuration.java
sed -i "s/org.elasticsearch.core.PathUtils/org.elasticsearch.common.io.PathUtils/" src/main/java/com/itenlee/search/analysis/help/MyIIOAdapter.java

sed -i "s/<elasticsearch\.version>.*<\/elasticsearch\.version>/<elasticsearch\.version>$element<\/elasticsearch\.version>/g" pom.xml

# mvn clean package -Dmaven.test.skip=true
