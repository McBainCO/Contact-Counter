# Global Context.IO Account ID
$cio_acct = ''

#Context.IO Key
contextio_key = ''
#Context.IO Secret
contextio_secret = ''
# Context.IO Persistent Connection Object
$cio_connect = ContextIO::Connection.new(contextio_key,contextio_secret)