function Set-Moz {
    param (
        [System.String]$url, $tag , $type
    )
    if ($url -and $tag -and $type) {
        $web = Invoke-WebRequest -Uri $url
        $web.ParsedHtml.getElementsByTagName($tag) | ForEach-Object {$_.$type}
    }
    else {
        Write-Host ".Help `n params [-url] : Link `n [-tag] : tag HTML `n [-type] : tag type HTML `nGITHUB > Mr-Banana-2045"
    }
}
