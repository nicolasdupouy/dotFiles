# Hosts variables
## Users
USER_NICOLAS=nicolas

## Hosts
HOST_CHICAGO=192.168.50.102
HOST_NEW_YORK=192.168.50.103
HOST_LOS_ANGELES=192.168.50.104

## SSH Keys
### Local
PRIVATE_KEY_HOST_CHICAGO_USER_NICOLAS=~/.ssh/Local/id_rsa_nicolas_Chicago
PRIVATE_KEY_HOST_NEW_YORK_USER_NICOLAS=~/.ssh/Local/id_rsa_nicolas_NewYork
PRIVATE_KEY_HOST_LOS_ANGELES_USER_NICOLAS=~/.ssh/Local/id_rsa_nicolas_LosAngeles

# -- Aliases
# Local network
alias alias_SSH_connect_Local_Chicago='ssh -i $PRIVATE_KEY_HOST_CHICAGO_USER_NICOLAS $USER_NICOLAS@$HOST_CHICAGO'
alias alias_SSH_connect_Local_NewYork='ssh -i $PRIVATE_KEY_HOST_NEW_YORK_USER_NICOLAS $USER_NICOLAS@$HOST_NEW_YORK'
alias alias_SSH_connect_Local_LosAngeles='ssh -i $PRIVATE_KEY_HOST_LOS_ANGELES_USER_NICOLAS $USER_NICOLAS@$HOST_LOS_ANGELES'

# LinkCy
alias alias_SSH_connect_Linkcy_Paynovate_Proxy='ssh -i ~/.ssh/LinkCy/paynovateProxy.pem admin@13.39.147.239'
alias alias_SSH_connect_Linkcy_Lotus='ssh -i ~/.ssh/LinkCy/lotus.pem admin@15.188.54.100'
alias alias_SSH_connect_Linkcy_GitLabRunner='ssh -i ~/.ssh/LinkCy/GitLabRunner.pem admin@35.180.66.45'
alias alias_SSH_connect_Linkcy_Website='ssh -i ~/.ssh/LinkCy/websiteAkrolab ec2-user@13.39.86.187'
alias alias_SSH_connect_Linkcy_OnboardingDocuments='ssh -i ~/.ssh/LinkCy/OnboardingDocuments.pem admin@13.38.129.225'

# Other
## Hanane
alias alias_SSH_connect_Other_Hanane_Hostinger='ssh -i ~/.ssh/Other/Hanane/website-Hanane-Hostinger_id_rsa -p 65002 u157694837@89.117.169.125'
## Mathieu
alias alias_SSH_connect_Other_Mathieu_mood_lentilles_fr='ssh -i ~/.ssh/Other/Mathieu_bottausci/id_rsa_mood_lentilles ubuntu@52.47.156.249'

