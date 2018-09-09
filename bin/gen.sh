#!/bin/bash

src=$(dirname $0)"/../src"
paths="${src}/paths"
definitions="${src}/definitions"
targetYaml="${src}/../docs/openapi.yaml"
cat "${src}/openapi.yaml" | sed '/^paths/d' > "${targetYaml}"
echo 'paths:' >> "${targetYaml}"
for yaml in $(find $paths -type f -name '*.yaml'|sort -u); do
	target=`echo ${yaml%".yaml"} | sed "s#${paths}##"`
	operationId=`echo $target | cut -c2-`
	echo "  ${target}:" >> "${targetYaml}"
	cat $yaml | sed "s#operationId:.*#operationId: ${operationId}#;s#^#    #" >> "${targetYaml}"
done
echo 'definitions:' >> "${targetYaml}"
for yaml in $(find $definitions -type f -name '*.yaml'|sort -u); do
	target=`echo ${yaml%".yaml"} | sed "s#${definitions}/##"`
	echo "  ${target}:" >> "${targetYaml}"
	cat $yaml | sed "s#^#    #"  >> "${targetYaml}"
done
