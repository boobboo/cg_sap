name "mail_handler"
description "Mail Handler"
run_list "recipe[chef_handler]"
default_attributes({
"chef_client" => {
    "load_gems" => {
      "chef-handler-mail" => {
        "require_name" => "/var/cache/handlers/mail",
      }
    },
    "report_handlers" => [
        {"class" => "MailHandler", "arguments" => ["to_address" => "root", "only_changes" => true]}
      ]
  }

})
