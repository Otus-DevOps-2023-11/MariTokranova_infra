# MariTokranova_infra
MariTokranova Infra repository

Подключение к someinternalhost в одну команду:
ssh -i ~/.ssh/appuser -A -J appuser@51.250.12.111 appuser@10.128.0.24

Подключение  по алиасу someinternalhos:
alias someinternalhost='ssh -i ~/.ssh/appuser -A -J appuser@51.250.12.111 appuser@10.128.0.24'
Для подключения достаточно ввести someinternalhos в консоль.

bastion_IP = 51.250.12.111
someinternalhost_IP = 10.128.0.24
