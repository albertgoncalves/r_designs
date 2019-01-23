{ pkgs ? import <nixpkgs> {} }:
with pkgs; mkShell {
    name = "R";
    buildInputs = [ R
                    rPackages.lintr
                    glibcLocales
                    gawk
                    python36Packages.csvkit
                  ];
    shellHook = ''
        if [ $(uname -s) = "Darwin" ]; then
            alias ls='ls --color=auto'
            alias ll='ls -al'
        fi

        lintr() {
            R -e "library(lintr); lint('$1')" \
                | awk '/> /{ found=1 } { if (found) print }'
        }

        export -f lintr
    '';
}
