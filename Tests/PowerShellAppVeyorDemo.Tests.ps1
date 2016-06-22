$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".Tests.", ".")
. "$here\..\$sut"

Describe "Write-DemoOutput" {
    $result = Write-DemoOutput -OutputText "This is a stupid function"

    It "outputs the same text it's given" {
        $result | Should MatchExactly "This is a stupid function"
    }
}

Describe "Write-DemoOutput2" {
    $result = Write-DemoOutput2
    
    It "Has a string property" {
        $result.String | Should BeOfType System.String
    }
    It "Has a property of type Int" {
        $result.Integer | Should BeOfType Int
    }
    It "Has a string property set to 'This is a string.'" {
        $result.String | Should MatchExactly 'This is a string'
    }
    It "Has an integer property" {
        $result.Integer | Should be 2
    }
}

Describe "Add-Number" {
    It "correctly adds numbers" {
        Add-Number -FirstNumber 1 -SecondNumbe 2 |
            Should Be 3
    }
}
