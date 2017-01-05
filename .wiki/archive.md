# Archive

## [tar](http://www.howtogeek.com/248780/how-to-compress-and-extract-files-using-the-tar-command-on-linux/): .tar.gz, .tgz
Pack folder: `tar -czvf archive.tar.gz /path/to/directory`
Unpack: `tar -xzvf archive.tar.gz`

## [gzip](https://www.lifewire.com/example-uses-of-the-linux-gzip-command-4078675)/[gunzip](https://www.lifewire.com/example-uses-of-the-gunzip-command-4081346): .gz
Pack and keep original: `gzip -k filename`
Pack folder: `gzip -r foldername`
Unpack: `gunzip filename.gz`
Unpack first 100 lines: `gunzip -cd filename | head -n 100 > output`

## [zip]()
Pack folder: `zip -r archive.zip folder`
Unpack: `unzip archive.zip -d output`
List files: `unzip -l archive.zip`
