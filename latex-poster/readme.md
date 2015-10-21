Creating a new Poster:
======================

Download Latest Poster Template Here: https://github.com/igorbrigadir/insight-templates/releases/download/v0.3.3/latex-poster.zip

Template creates A0 size by default, if you need A1, change the size in the document preamble:
```
\usepackage[orientation=portrait,size=a1,scale=1.4,debug]{beamerposter}
```

Updating a Poster:
======================
To update your poster, get the latest version from here, overwrite these files, recompile, & export your pdf again:

```
beamerposter.sty
beamerthemeInsight.sty
insightcolours.sty
footer-blank.pdf
header-blank.pdf
insightlogo.pdf
institutions.pdf
meshpattern1.pdf
meshpattern2.pdf
page-back.pdf
sfi.pdf
```
(That's everything apart from examples and .tex files)

Errors:
======================
Something broke after updating? Worked once and now fails to compile?

Download latest template files, start with template.tex, replace everything from \begin{document} to \end{document} with whatever you had before, update Title & Authors, add any other packages you've used before \title.