function CreateArrayList {
    $DimArrayList = New-Object "Object[,]" 2,2

    $DimArrayList[0,0] = 1
    $DimArrayList[0,1] = "No.1"
    $DimArrayList[1,0] = 2
    $DimArrayList[1,1] = "No.2"

    Write-Host "CreateArrayList"
    Write-Host $DimArrayList[0,0]
    Write-Host $DimArrayList[0,1]
    Write-Host $DimArrayList[1,0]
    Write-Host $DimArrayList[1,1]

    ,$DimArrayList
}

function ReferArrayList {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [Object[,]]$DimArrayList
    )
    Write-Host "ReferArrayList"
    Write-Host $DimArrayList[0,0]
    Write-Host $DimArrayList[0,1]
    Write-Host $DimArrayList[1,0]
    Write-Host $DimArrayList[1,1]

    $newDimArrayList = New-Object "Object[,]" 2,2
    $newDimArrayList = $DimArrayList
    Write-Host "newDimArrayList"
    Write-Host $newDimArrayList[0,0]
    Write-Host $newDimArrayList[0,1]
    Write-Host $newDimArrayList[1,0]
    Write-Host $newDimArrayList[1,1]
}

try {
    $ArrayList = CreateArrayList
    ReferArrayList $ArrayList
} catch {
    Write-Host $Error[0]
}