# HeadShot - Takes a page screenshot, manipulates it and shows it via js

### current status

work in progress


## Notes:

### url2png

    gem i url2png

### peeping-tom installation

    sudo aptitude install xvfb xfonts-base xfonts-75dpi xfonts-100dpi imagemagick ttf-mscorefonts-installer python-qt4 python-qt4 build-essential flashplugin-installer git-core

    gem install redis sinatra json resque
    wget http://github.com/AdamN/python-webkit2png/raw/master/webkit2png.py
    sudo cp webkit2png.py /usr/bin/
    sudo chmod o+x /usr/bin/webkit2png.py

    git clone git://github.com/bandito/peeping-tom.git



### khtml2png installation

    apt-get install g++ kdelibs zlib1g-dev cmake

not sure:
  
    apt-get install libx11-dev kdelibs4-dev

    wget http://sourceforge.net/projects/khtml2png/files/khtml2png2/2.7.7/khtml2png-2.7.7.tar.gz/download
    mv download khtml2png-2.7.7.tar.gz
    tar xvf khtml2png-2.7.7.tar.gz
    cd khtml2png-2.7.7
    ./configure
    make
    make install

    apt-get install xvfb

    Xvfb :2 -screen 0 1024x768x24&
    DISPLAY=localhost:2.0 khtml2png2 http://google.com google.png