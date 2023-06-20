$Response = Get-Content ".\vss-extension.json"

$ResponseObject = $Response | ConvertFrom-Json

$ResponseObject.publisher