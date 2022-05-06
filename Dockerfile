FROM qmcgaw/latexdevcontainer
ARG USERNAME=vscode
USER root
RUN tlmgr update --self && \
    tlmgr install latexindent latexmk && \
    tlmgr install mathexam setspace adjustbox xkeyval collectbox enumitem lastpage && \
    texhash
RUN tlmgr update --all
RUN tlmgr install collection-langother
RUN tlmgr install imakeidx
RUN tlmgr install placeins
RUN tlmgr install biblatex biber glossaries
RUN tlmgr install subfiles float xcolor wrapfig caption svg multirow
RUN texhash
USER ${USERNAME}
