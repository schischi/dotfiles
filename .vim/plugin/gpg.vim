" encrypt/decrypt the current file with gpg
command GC execute '%!gpg -c --force-mdc  --armor 2> /dev/null'
command GD execute '%!gpg -dq 2> /dev/null'
