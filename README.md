# This extension is now deprecated and no longer maintain. Please use our extension [Mailhog](https://github.com/Chassis/MailHog) instead!

#### Mailcatcher
A Chassis extension to install and configure
[Mailcatcher](http://mailcatcher.me/) on your server.

With this extension, Mailcatcher will act as a fake mail server, showing your
email in the browser rather than sending it to the email address. This is great
for testing where you don't want the emails to actually be sent, but still need
access to them.

#### Usage
1. Add this extension to your extensions directory
2. Run `vagrant provision`
3. Go to http://vagrant.local:1080/ to view your Mailcatcher inbox.

That's it!

#### Important Notes
* This extension sets up Mailcatcher as the default mailer for PHP; note that
  all email sent via `mail`, including WordPress' built-in `wp_mail`, will be
  sent to Mailcatcher.

* Mailcatcher's database of emails is stored in memory, and will be reset when
  you halt the Vagrant instance.
