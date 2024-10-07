element=8.15.2

sh ers-patch.sh

sed -i "s/<elasticsearch\.version>.*<\/elasticsearch\.version>/<elasticsearch\.version>$element<\/elasticsearch\.version>/g" pom.xml

# mvn clean package -Dmaven.test.skip=true
