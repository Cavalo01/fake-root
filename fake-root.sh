function whoami() {
  echo "root"
}


function su() {
  :
}


function ls() {
  /bin/ls "$@" 2>/dev/null || echo -e "apex  dev   lib32         mnt      root  system  vendor\nbin   etc   lib64         odm      run   tmp\nboot  home  linkerconfig  proc     sbin  usr\ndata  lib   media         product  sys   var"
}


function sudo() {
  local result
  result="$(eval $@)"
  echo "$result"
}

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
