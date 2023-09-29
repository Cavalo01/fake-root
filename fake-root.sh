whoami() {
  echo "root"
}

su() {
  :
}

ls() {
  /bin/ls "$@" 2>/dev/null || echo -e "apex  dev   lib32         mnt      root  system  vendor\nbin   etc   lib64         odm      run   tmp\nboot  home  linkerconfig  proc     sbin  usr\ndata  lib   media         product  sys   var"
}

sudo() {
  result="$(eval $@)"
  echo "$result"
}

echo "Fake-Root Ativado! Contato: t.me/RGB_01"
echo "Fake-Root Activated! Contact: t.me/RGB_01"
