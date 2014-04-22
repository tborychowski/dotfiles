#!/bin/bash
sed '/^include/d' $HOME/bin/common/nanorc.sh > $HOME/bin/common/nanorc.tmp
cd $HOME/bin/common/nano-syntax
ls *.nanorc | xargs -I {} echo 'include "~/bin/common/nano-syntax/{}"' >> $HOME/bin/common/nanorc.tmp
mv $HOME/bin/common/nanorc.tmp $HOME/bin/common/nanorc.sh
echo "[OK] nano syntax highlighting"
