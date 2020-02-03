function newStd = UpdateStd(OldMean,OldStd,NewMean,NewDataValue,n)
newStd = sqrt((((((OldStd)*(OldStd))*(n-1))+((n)*(OldMean)*(OldMean))+(NewDataValue)*(NewDataValue))/n)-(((n+1)*(NewMean)*(NewMean))/n))
end