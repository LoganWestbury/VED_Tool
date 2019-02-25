

CLS

# GET USER INPUTS

$expiryDay = Read-Host("Enter the expiry day")
$expiryMonth = Read-Host("Enter the expiry month")
$expiryYear = Read-Host("Enter the expiry year")

# CALCULATE START DATE FROM EXPIRY DATE

#[datetime]::Now.ToString([cultureinfo]::CreateSpecificCulture('en-GB'))

$cultureENGB = New-Object System.Globalization.CultureInfo("en-GB")

$expiryDate = ([datetime]($expiryMonth + "/" + $expiryDay + "/" + $expiryYear))

$startDate = (($expiryDate.AddYears(-5).AddDays(1)))

$expiryDateFormatted = ($expiryDate).toString("dd/MM/yyyy", $cultureENGB)

$startDateFormatted = ($startDate).toString("dd/MM/yyyy", $cultureENGB)

# DISPLAY DATES TO CONSOLE

Write-Host ("========================================")

Write-Host ("Start Date  = " + $startDateFormatted)

Write-Host ("========================================")

Write-Host ("Expiry Date = " + $expiryDateFormatted)

Write-Host ("========================================")










#Write-Host ($expiryDate.Day + " " + $expiryDate.Date + " " + $expiryDate.Month + " " + $expiryDate.Year)


