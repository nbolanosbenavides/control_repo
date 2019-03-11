node default {
}
node 'master.puppet' {
  include role::master_server
}
