Write-Host "Logging in with a service principal"

# az login --service-principal --tenant <tenant-id> --username <app-id> --password <password-or-cert>

az login  --allow-no-subscriptions --service-principal --tenant 72f988bf-86f1-41af-91ab-2d7cd011db47 --username f0df0d20-3823-4657-87b1-3082030e2006 --password bHa8Q~FFqXZKWJrMoJLL40qCYjlZTEycN~dm5b8G

Write-Host "Obtain access token for Service Principal"

$accessToken = az account get-access-token --resource 499b84ac-1321-427f-aa17-267ca6975798 --query "accessToken" --output tsv

# tfx extension publish --publisher <PUBLISHER-ID> --vsix <PATH-TO-VSIX-FILE> --auth-type pat -t $accessToken

tfx extension publish --publisher dsarmah --vsix .\dsarmah.my-first-extension-deepam-sarmah-1.0.0.vsix --auth-type pat -t $accessToken