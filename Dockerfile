FROM qmcgaw/latexdevcontainer

COPY . /workspace

RUN tlmgr update --self && \
    tlmgr install latexindent latexmk && \
    tlmgr install mathexam setspace adjustbox xkeyval collectbox enumitem lastpage && \
    texhash