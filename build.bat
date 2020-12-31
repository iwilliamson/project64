setlocal
set Platform=
MSBuild.exe Project64.sln /p:Configuration=Release /m
MSBuild.exe Project64.sln /t:"PJ64 NRage" /p:Configuration=Release /m
MSBuild.exe Project64.sln /t:Project64-audio /p:Configuration=Release /m
MSBuild.exe Project64.sln /t:Project64-video /p:Configuration=Release /m
MSBuild.exe Project64.sln /t:RSP /p:Configuration=Release /m
copy bin\Release\Project64.exe .
