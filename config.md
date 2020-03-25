<!-----------------------------------------------------
Add here global page variables to use throughout your
website.
The website_* must be defined for the RSS to work
------------------------------------------------------->
<!-- @def website_title = "Franklin Template"
@def website_descr = "Example website using Franklin"
@def website_url   = "https://tlienart.github.io/FranklinTemplates.jl/" -->

@def author = "Fredrik Ekre"
prepath = "TME061"

@def include = ["_assets/", "_css/", "_libs/", "index.html", "404.md", "exercise1/"]
@def ignore = setdiff([isfile(x) ? x : x * "/" for x in readdir()], globvar("include"))

<!-- Table of contents -->
@def mintoclevel=2
@def maxtoclevel=2

<!-----------------------------------------------------
Add here global latex commands to use throughout your
pages. It can be math commands but does not need to be.
For instance:
* \newcommand{\phrase}{This is a long phrase to copy.}
------------------------------------------------------->
\newcommand{\R}{\mathbb R}
\newcommand{\scal}[1]{\langle #1 \rangle}
\newcommand{\SI}[2]{#1\ \mathrm{#2}}

\newcommand{\figure}[3]{
~~~
<figure id="!#2">
<img src="!#3">
<figcaption><a href="#!#2">Figur {{ jlinsert next-fignum }}</a>: #1</figcaption>
</figure>
~~~
}
\newcommand{\figurenc}[1]{
~~~
<figure>
<img src="!#1">
</figure>
~~~
}

\newcommand{\tips}[1]{@@note @@title Tips @@ @@content #1 @@ @@}



