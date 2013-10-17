Overview
========

Simple Demo of downloading a new "SAP" kernel and restarting SAP. Also configures a handler to send mail when a change is detected/reverted.

Usage
=====

Include the mail_handler role and the SAP recipe. The mail_handler role passes the following options to MailHandler.

to_address = the address you want to get the mail at
only_changes = true|false <= if true, only email when something changes

