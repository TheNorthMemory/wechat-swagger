#!/bin/sh

src=$(dirname $0)"/../src"
paths="${src}/paths"
definitions="${src}/definitions"
targetYaml="${src}/../docs/swagger.yaml"
{
    cat "${src}/swagger.yaml" | sed '/^paths/d'

    echo 'paths:'
    for yaml in $(find $paths -type f -name '*.yaml'|sort -u); do
        target=`echo ${yaml%".yaml"} | sed "s#${paths}##"`
        operationId=`echo $target | cut -c2-`
        echo "  ${target}:"
        cat $yaml | sed "s#operationId:.*#operationId: ${operationId}#;s#^#    #"
    done

    echo 'definitions:'
    for yaml in $(find $definitions -type f -name '*.yaml'|sort -u); do
        target=`echo ${yaml%".yaml"} | sed "s#${definitions}/##"`
        echo "  ${target}:"
        cat $yaml | sed "s#^#    #"
    done
} > "${targetYaml}"

{
    for yaml in $(find "${src}/payments" -type f -name '*.yaml'|sort -u); do
        cat $yaml
    done
} > "${src}/../docs/wxpay.yaml"
