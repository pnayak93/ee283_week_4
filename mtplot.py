import pandas as pd
import sqlite3
import seaborn as sns
import matplotlib.pyplot as plt
import sys
import time



def plot_mtcars(sqldata, outputfig):
    con = sqlite3.connect(sqldata)
    mtcars = pd.read_sql_query("SELECT * from mtcars", con)


    g = sns.FacetGrid(mtcars, col="cyl")
    sns_plot = g.map(sns.scatterplot,"wt","mpg");
    sns_plot.savefig(outputfig)

    return

#plot_mtcars(snakemake.input[0], snakemake.output[0])
plot_mtcars(str(sys.argv[1]), str(sys.argv[2]))

    
