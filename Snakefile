
rule all:
    input:
        "mtcars.png",
        "mtcars.sqlite3"
rule Rdb:
    input:
        "R-db.r"
    output:
        "mtcars.sqlite3"
    shell:
        "Rscript R-db.r"

rule mtplot:
    input:
        "mtcars.sqlite3"
        "mtplot.py"
    output:
        "mtcars.png"
    shell:
        "python mtplot.py {input} {output}"