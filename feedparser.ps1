﻿#Grabs the content of the xml config
[xml]$CasaFeed = Get-Content C:\Users\lafferic\Desktop\Test-Output-8.xml
#Parses the XML file, then pipes the sections to the foreach loop and dumps these specific sections of information. last dumps to a .txt file
$CasaFeed.configuration.FileTransferFeeds | % {$_.FileTransferJob.Tasks.Task.Steps.Step}  | Out-File C:\Users\lafferic\Desktop\MINT08-Feed-INFO.txt