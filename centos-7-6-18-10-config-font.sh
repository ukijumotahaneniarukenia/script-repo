#!/usr/bin/env bash
mkdir -p $HOME/.fonts && \
cd $HOME/.fonts && \
curl -LO https://github.com/adobe-fonts/source-han-code-jp/archive/2.011.zip && \
unzip 2.011.zip && \
cd $HOME/.fonts && \
git clone https://github.com/adobe-type-tools/opentype-svg.git && \
cd source-han-code-jp-2.011 && \
python3 -m venv afdko_env && \
source afdko_env/bin/activate && \
pip3 install afdko && \
cp ../opentype-svg/*.py . && \
cp -r ../opentype-svg/util . && \
cp -r ../opentype-svg/imgs . && \
cp -r ../opentype-svg/fonts . && \
sed -i 's;addSVGtable.py;$HOME/.fonts/source-han-code-jp-2.011/addSVGtable.py;g' commands.sh && \
sed -i 's;for wt in ExtraLight Light Normal Regular Medium Bold Heavy;for wt in ExtraLight Light Normal Medium Bold Heavy;g' commands.sh && \
./commands.sh && \
find $HOME/.fonts/source-han-code-jp-2.011 -name "*otf" | xargs -I@ cp @ $HOME/.fonts && \
fc-cache -fv
