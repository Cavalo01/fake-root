#!/bin/bash

# Função personalizada whoami
function whoami() {
  echo "root"
}

# Função personalizada su
function su() {
  :
}

# Função personalizada ls
function ls() {
  /bin/ls "$@"
}

# Função personalizada sudo
function sudo() {
  local result
  result="$(eval $@)"
  echo "$result"
}

# Agora, você pode chamar as funções personalizadas
whoami_result=$(whoami)
echo "Resultado de whoami: $whoami_result"

su_result=$(su)
echo "Resultado de su: $su_result"

ls_result=$(ls)
echo "Resultado de ls: $ls_result"

sudo_result=$(sudo ls)
echo "Resultado de sudo ls: $sudo_result"
