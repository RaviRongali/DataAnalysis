function newMedian = UpdateMedian(oldMedian,NewDataValue,A,n)
if ((NewDataValue < oldMedian) && mod(n,2)==0)
    if (NewDataValue < A(n/2))
        newMedian = A(n/2)
    else 
        newMedian = NewDataValue
    end
    elseif (NewDataValue < oldMedian) && mod(n,2)==1
    if NewDataValue < A((n-1/2))
        newMedian = (A((n+1)/2)+A(((n+1)/2)-1))/2
    else
        newMedian = (A(((n+1)/2))+newDataValue)/2
    end
elseif (NewDataValue > oldMedian) && mod(n,2)==0
    if (NewDataValue > A(n/2 +1))
        newMedian=A(n/2 +1)
    else 
         newMedian = NewDataValue
    end
elseif (NewDataValue > oldMedian) && mod(n,2)==1
    if NewDataValue > A(((n+1)/2)+1)
        newMedian = (A(((n+1)/2))+A(((n+1)/2)+1))/2
    else
        newMedian = (A(((n+1)/2))+newDataValue)/2
    end
elseif (NewDataValue==oldMedian)
    newMedian = oldMedian;
end