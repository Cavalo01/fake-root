function whoami() {
  echo "root"
}


function su() {
  :
}


function ls() {
  /bin/ls "$@"
}


function sudo() {
  local result
  result="$(eval $@)"
  echo "$result"
}

# Agora, você pode chamar as funções personalizadas
whoami_result=$(whoami)
echo "Testando whoami: $whoami_result"

su_result=$(su)
echo "Testando su: $su_result"

ls_result=$(ls)
echo "Testando ls: $ls_result"

sudo_result=$(sudo ls)
echo "Testando sudo (rodando ls): $sudo_result"

echo "Fake Root Ativado! Contato: t.me/RGB_01"
echo "Fake Root Activated! Contact: t.me/RGB_01"
