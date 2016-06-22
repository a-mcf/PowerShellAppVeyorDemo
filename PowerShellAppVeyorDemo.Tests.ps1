$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".Tests.", ".")
. "$here\$sut"

Describe "Write-DemoOutput" {
    It "outputs the same text it's given" {
        Write-DemoOutput -OutputText "This is a stupid function" |
            Should MatchExactly "This is a stupid function"
    }
}
