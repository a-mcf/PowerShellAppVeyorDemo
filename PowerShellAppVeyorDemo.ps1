function Write-DemoOutput
{
    param(
        [String]
        $OutputText
    )

    Write-Output $OutputText
}

function Write-DemoOutput2
{
    [psobject] @{
        String = "This is a string"
        Integer = 2
    }
}

function Add-Number
{
    param(
        [Int]
        $FirstNumber,

        [Int]
        $SecondNumber
    )

    $FirstNumber + $SecondNumber
}