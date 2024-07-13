
$ErrorActionPreference = "stop"
$SourceImg="gmapbmap.img"
if (-not ( test-path -path $SourceImg )) {
    throw "Datei gmapbmap.img nicht vorhanden."
}
$Pathes = "d:\Garmin","e:\Garmin","g:\Garmin"
foreach ($Path in $Pathes) {
    if (Test-Path $Path) {
        Copy-Item -path $SourceImg -Destination $Path -verbose
        exit
    }
}
