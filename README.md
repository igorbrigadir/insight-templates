insight-templates
=================

LaTeX Templates for Insight Centre for Data Analytics Posters & Presentations.

Poster Template is based on [```beamerposter```](http://www-i6.informatik.rwth-aachen.de/~dreuw/latexbeamerposter.php) class. [More examples here](http://www-i6.informatik.rwth-aachen.de/~dreuw/latexbeamerposter.php#example).

Note: Templates may change, future versions may break things - don't forget to update the document preamble, otherwise it is safe to overwrite everything else.

Installation Instructions:
------
Before you try to compile anything, install the fonts:

```
git clone https://github.com/tzwenn/ubuntu-latex-fonts.git
cd ubuntu-latex-fonts
make PREFIX=~/texmf install
```

Or:

[```tzwenn/ubuntu-latex-fonts```](https://github.com/tzwenn/ubuntu-latex-fonts)
Download, unzip:
```bash
$ sudo make install
```

If that fails, try local install:
```bash
$ make PREFIX=~/texmf install
```

Update your TeX distribution!
------

Latest TeX distribution installation Instructions:

Ubuntu:
------
Latest TeX Live 2014 release available from: [```scottkosty/install-tl-ubuntu```](https://github.com/scottkosty/install-tl-ubuntu)
```bash
$ wget https://github.com/scottkosty/install-tl-ubuntu/raw/master/install-tl-ubuntu
$ chmod +x ./install-tl-ubuntu
$ sudo ./install-tl-ubuntu
```

Mac OSX:
------
Use MacTeX-2014 or newer:
https://www.tug.org/mactex/

Windows:
------
https://www.tug.org/texlive/windows.html

Problems?
------
The TeX StackExchange is a great place: http://tex.stackexchange.com/
Report issues with the templates here: https://github.com/igorbrigadir/insight-templates/issues

Pull requests welcome!
