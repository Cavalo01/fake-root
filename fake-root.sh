g='temp.txt'

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

function reboot() {
  sleep 10
}

function shutdown() {
  while true; do
  sleep 20
  done
}

function poweroff() {
  while true; do
  sleep 20
  done
}

whoami_result=$(whoami)
echo "Testando whoami: $whoami_result" >> $g

su_result=$(su)
echo "Testando su: $su_result" >> $g

ls_result=$(ls)
echo "Testando ls: $ls_result" >> $g

sudo_result=$(sudo ls)
echo "Testando sudo (rodando ls): $sudo_result" >> $g

reboot_result=$(reboot)
echo "Testando reboot: $reboot_result" >> $g

shutdown_result=$(shutdown)
echo "Testando shutdown: $shutdown_result" >> $g

poweroff_result=$(poweroff)
echo "Testando powerorf: $poweroff_result" >> $g

rm $g

echo "Fake Root Ativado! Contato: t.me/RGB_01"
echo "Fake Root Activated! Contact: t.me/RGB_01"
