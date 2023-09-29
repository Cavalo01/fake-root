function whoami() {
  echo "root"
}

function su() {
  : # Não faz nada
}

function ls() {
  /bin/ls "$@" 2>/dev/null || echo -e "apex  dev   lib32         mnt      root  system  vendor\nbin   etc   lib64         odm      run   tmp\nboot  home  linkerconfig  proc     sbin  usr\ndata  lib   media         product  sys   var"
}

function sudo() {
  local result
  result="$(eval $@)"
  echo "$result"
}

echo "Fake-Root Ativado! Contato: t.me/RGB_01"
echo "Fake-Root Activated! Contact: t.me/RGB_01"
