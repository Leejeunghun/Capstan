<?php

namespace App\Library\Imap;

class GmailConnection extends AbstractConnection
{
protected $hostname = 'imap.gmail.com';
protected $port = 993;
protected $path = '/imap/ssl';
protected $mailbox = 'INBOX';
}
?>

<?php
$connection = new GmailConnection();

try {
$client = $connection->setUsername($username)
->setPassword($password)
->connect();
} catch(\App\Library\Imap\ImapException $e) {
echo "Failed to connect: {$e->getMessage()}";
}

?>
