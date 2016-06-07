# vim: set ts=2 sw=2 ai et:

load options

# note: BATS does not respect this syntax: ${DATA_IMAGEi}

@test "autostager: latest version is installed" {
 run docker run --volumes-from playbooks-data -t -i --entrypoint bash autostager -c "pip list | grep autostager"
  [[ ${output} =~ autostager ]]
}
