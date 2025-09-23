#/bin/bash
# echo "###############################################################"
# echo "#"
# echo "#  $0"
# echo "#"
# echo "###############################################################"
req=`realpath ./requirements.txt`
printf "$req "
if [ -f "$req" ]; then
    if [ -s "$req" ]; then
        printf " - Installing\n"
        pip install --disable-pip-version-check --quiet --user --requirement "$req"
    else
        printf " - File empty\n"
    fi
else
    printf " - File does not exist\n"
fi