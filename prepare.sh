#!/bin/bash

new_project_name=${PWD##*/}
template_project_name="boot-cljs-tdd-template"
template_directory_name=${template_project_name//-/_}
new_directory_name=${new_project_name//-/_}

files=(README.md html/index.html src/cljs/$template_directory_name/core.cljs test/cljs/$template_directory_name/core_test.cljs)
# Change all occurrences within files
for f in ${files[*]}
do
  sed -i '' s/$template_project_name/$new_project_name/g  $f
done

# Rename directories
directories=(src/cljs test/cljs)
for f in ${directories[*]}
do
  mv $f/$template_directory_name $f/$new_directory_name
done

# Delete this script
rm $BASH_SOURCE
