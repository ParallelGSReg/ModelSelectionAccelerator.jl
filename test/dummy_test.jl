using CSV, ResearchAccelerator, DataFrames

data = CSV.read("data/visitors.csv", DataFrame)

model = ResearchAccelerator.gsr(
    "australia china japan uk", 
    data,
    intercept=true,
    time=:date,
    fe_sqr=[:uk, :china],
    fe_log=[:japan],
    fe_inv=:uk,
    preliminaryselection=:lasso,
    criteria=[:aic, :aicc],
    modelavg=true,
    orderresults=true,
    ttest=true,
    exportcsv="visitors_output.csv",
    exportlatex="latex.zip"
)
