if (Test-Path C:\Users\fablab\AppData\Roaming\cura) {
	cd C:\Users\fablab\AppData\Roaming\cura

	wget -O 4.1.zip "https://wiki.fablab-muenchen.de/download/attachments/68288525/4.1.zip?version=1&api=v2&download=true"

	if (Test-Path C:\Users\fablab\AppData\Roaming\cura\4.1 ) {
		Remove-Item C:\Users\fablab\AppData\Roaming\cura\4.1 -Recurse -Force -ErrorAction Ignore
	}

	Expand-Archive -LiteralPath 4.1.zip -DestinationPath C:\Users\fablab\AppData\Roaming\cura -Force
	Remove-Item C:\Users\fablab\AppData\Roaming\cura\__MACOSX -Recurse -Force -ErrorAction Ignore
}
