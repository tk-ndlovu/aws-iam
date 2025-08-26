locals {
  teams = {
    database ={
      ad_group_name = "aws_database_powerusers"
      manager = "Basi"
      team_email = "DBASupport@bankservafrica.com"
      aws_accounts = [
        "641994015290",
        "221690440297",
        "383982001916",
        "472941943977",
        "899559760465",
      ]
      team_name = "database"
      team_code = "dba"
    },
    network ={
      ad_group_name = "aws_network_powerusers"
      manager = "Kerwin"
      team_email = "networks@bankservafrica.com"
      aws_accounts = [  
        "665271258166",
        "642912241111"
      ]
      team_name = "network"
      team_code = "net"
    },
    security ={ 
      ad_group_name = "aws_security_powerusers"
      manager = "Jacques"
      team_email = "ITSecTeam@bankservafrica.com"
      aws_accounts = [
        "472941943977",
        "641994015290",
        "221690440297",
        "138548450576",
      ]
      team_name = "security"
      team_code = "sec"
    },
    distributed_platforms ={
      ad_group_name = ""
      manager = "Connie"
      team_email = "serverteam@Bankservafrica.com"
      aws_accounts = [
        "641994015290",
        "221690440297"
      ]
      team_name = "DistributedPlatforms"
      team_code = "dpl"
    },
    architecture ={
      ad_group_name = ""
      manager = "Jabu"
      team_email = "arch@bsa.com"
      aws_accounts = [
        "641994015290",
        "221690440297",
      ]
      team_name = "architecture"
      team_code = "arch"
    },
    backups ={
      ad_group_name = "aws_backups_powerusers"
      manager = "Lyle"
      team_email = "serverteam@Bankservafrica.com"
      aws_accounts = [
        "871799200135",
        "145548569252",
      ]
      team_name = "backups"
      team_code = "backups"
    },
    delivery ={
      ad_group_name = ""
      manager = "Jeremy"
      team_email = "DeliverySupport@Bankservafrica.com"
      aws_accounts = [
        "519672842892",
        "383982001916",
        "472941943977",
      ]
      team_name = "delivery"
      team_code = "del"
    },
    fraudintelligence ={
      ad_group_name = ""
      manager = "Claudia"
      team_email = "analyticsteam@Bankservafrica.com"
      aws_accounts = [
        "436076943116",
        "899559760465",
        "383982001916",
      ]
      team_name = "FraudIntelligence"
      team_code = "fi"
    },
    new_product_development ={
      ad_group_name = ""
      manager = "Charles"
      team_email = "ProductDevelopment@Bankservafrica.com"
      aws_accounts = [
        "641994015290",
        "221690440297",
        "383982001916",
        "472941943977",
      ]
      team_name = "NewProductDevelopment"
      team_code = "npdev"
    },
    mature_product_development ={
      ad_group_name = ""
      manager = "Monde"
      team_email = "MatureProducts@Bankservafrica.com"  
      aws_accounts = [
        "641994015290",
        "221690440297",
        "383982001916",
        "472941943977",
      ]
      team_name = "MatureProductDevelopment"
      team_code = "mpdev"
    },
    Commandcenter ={
      ad_group_name = ""
      manager = "Michelle"
      team_email = "Comproom@bankservafrica.com"  
      aws_accounts = [
        "641994015290",
        "221690440297",
        "383982001916",
        "472941943977",
      ]
      team_name = "CommandCentre"
      team_code = "cc"
    },
    Service_Desk ={
      ad_group_name = ""
      manager = "Zonia"
      team_email = "ServiceDeskTeam@bankservafrica.com"  
      aws_accounts = [
        "641994015290",
        "221690440297",
        "383982001916",
        "472941943977",
      ]
      team_name = "ServiceDesk"
      team_code = "sd"
    },
    Realtimeswitch ={
      ad_group_name = ""
      manager = "Zonia"
      team_email = "realtimeswitch@Bankservafrica.com"  
      aws_accounts = [
        "641994015290",
        "221690440297",
        "383982001916",
        "472941943977",
      ]
      team_name = "RealtimeSwitch"
      team_code = "rts"
      team_permissions = {
        ECSPermissions = "Deny"
        ECRPermissions = "Deny"
        EC2InstanceConnectPermissions = "Deny"
        EC2Permissions = "Deny"
      }
    },
  }


########################old process#########################
  managed_permissions = {
    SSOPowerUserAccess = {
      description        = "Provides full access to AWS services and resources, but does not allow management of Users and groups"
      session_duration   = "PT12H"
      managed_policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"
    },
   SSOAdministratorAccess = {
      description        = "Provides full access to AWS services and resources."
      session_duration   = "PT12H"
      managed_policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
    },
    SSOReadOnlyAccess = {
      description        = "Provides read-only access to AWS services and resources"
      session_duration   = "PT12H"
      managed_policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
    },

    # SSOCompliance_Dashboard = {
    #   description        = "Provides read-only access to AWS services and resources"
    #   session_duration   = "PT12H"
    #   managed_policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
    # },
    BillingReadOnlyAccess = {
      description        = "Provides read-only access to AWS Billing services"
      session_duration   = "PT12H"
      managed_policy_arn = "arn:aws:iam::aws:policy/AWSBillingReadOnlyAccess"
    },
    BillingAdminAccess = {
      description        = "Provides admin access to AWS Billing services"
      session_duration   = "PT12H"
      managed_policy_arn = "arn:aws:iam::aws:policy/job-function/Billing"
    },
    SupportAccess = {
      description        = "Provides aws support access"
      session_duration   = "PT12H"
      managed_policy_arn = "arn:aws:iam::aws:policy/AWSSupportAccess"
    },
    OrganizationsFullAccess = {
      description        = "Provides AWS Organizations Full Access"
      session_duration   = "PT12H"
      managed_policy_arn = "arn:aws:iam::aws:policy/AWSOrganizationsFullAccess"
    },
    ControlTowerAdmins = {
      description        = "Provides AWS Organizations Full Access"
      session_duration   = "PT12H"
      managed_policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
    },
  }

  azure_ad_groups = {
    aws_mordenization_readonlyusers = {
      aws_accounts   = ["436076943116","716488235367","899559760465","145548569252","687146674505","147512564271","993599401498","808109751231","383890196651","871799200135","603296346394"]
      description    = "mordenization readonly users account access",
      ad_group_name  = "aws_mordenization_readonlyusers"
      permission_set = "SSOReadOnlyAccess"
    },
    aws_mordenization_powerusers = {
      aws_accounts   = ["472941943977","383982001916","436076943116","716488235367","899559760465","145548569252","687146674505","147512564271","993599401498","808109751231","383890196651","871799200135","603296346394","665271258166"]
      description    = "mordenization readonly users account access",
      ad_group_name  = "aws_mordenization_powerusers"
      permission_set = "SSOPowerUserAccess"
    },
    aws_mordenization_adminusers = {
      aws_accounts   = ["472941943977","383982001916","436076943116","716488235367","899559760465","145548569252","687146674505","147512564271","993599401498","808109751231","383890196651","871799200135","603296346394"]
      description    = "mordenization readonly users account access",
      ad_group_name  = "aws_mordenization_adminusers"
      permission_set = "SSOAdministratorAccess"
    },
    # aws_network_adminusers = {
    #   aws_accounts   = ["719322433931"]
    #   description    = "network admin users account access",
    #   ad_group_name  = "aws_network_adminusers"
    #   permission_set = "SSOAdministratorAccess"
    # },
    aws_network_powerusers = {
      aws_accounts   = [
        "665271258166",
        "642912241111",
        "472941943977",
        "641994015290",
        "221690440297",
        "687146674505",
        "147512564271",
        "993599401498",
        "808109751231",
        "383890196651",
        "149875424875",
        "436076943116",
        "716488235367",
        "899559760465",
        "145548569252",
        "810913072497",
        "033307049246",
        "871799200135",
        "383982001916",
        "519672842892",
        "944551780818"
        ]
      description    = "network power users account access",
      ad_group_name  = "aws_network_powerusers"
      permission_set = "SSOPowerUserAccess"
    },
    aws_network_readonlyusers = {
      aws_accounts   = [
        "665271258166",
        "642912241111",
        "472941943977",
        "641994015290",
        "221690440297",
        "687146674505",
        "147512564271",
        "993599401498",
        "808109751231",
        "383890196651",
        "149875424875",
        "436076943116",
        "716488235367",
        "899559760465",
        "145548569252",
        "810913072497",
        "033307049246",
        "871799200135",
        "383982001916",
        "519672842892",
        "944551780818"
        ]
      description    = "network readonly users account access",
      ad_group_name  = "aws_network_readonlyusers"
      permission_set = "SSOReadOnlyAccess"
    },
    # aws_security_adminusers = {
    #   aws_accounts   = ["719322433931"]
    #   description    = "security admin users account access",
    #   ad_group_name  = "aws_security_adminusers"
    #   permission_set = "SSOAdministratorAccess"
    # },
    aws_security_powerusers = {
      aws_accounts   = [
        "472941943977",
        "641994015290",
        "221690440297",
        "138548450576",
        "383982001916",
        "519672842892",
        "944551780818",
        "149875424875",
        "436211286174",
        "642912241111",
        "436076943116",
        "716488235367",
        "899559760465",
        "145548569252",
        "810913072497",
        "033307049246",
        "687146674505",
        "147512564271",
        "993599401498",
        "808109751231",
        "383890196651",
        "283832859637",
        "665271258166",
        "871799200135",
        "603296346394",
        "076663109531"
        ]
      description    = "security power users account access",
      ad_group_name  = "aws_security_powerusers"
      permission_set = "SSOPowerUserAccess"
    },
    aws_security_readonlyusers = {
      aws_accounts   = [
        "472941943977",
        "641994015290",
        "221690440297",
        "138548450576",
        "383982001916",
        "519672842892",
        "944551780818",
        "149875424875",
        "436211286174",
        "642912241111",
        "436076943116",
        "716488235367",
        "899559760465",
        "145548569252",
        "810913072497",
        "033307049246",
        "687146674505",
        "147512564271",
        "993599401498",
        "808109751231",
        "383890196651",
        "283832859637",
        "665271258166",
        "871799200135",
        "603296346394",
        "076663109531"
        ]
      description    = "security readonly users account access",
      ad_group_name  = "aws_security_readonlyusers"
      permission_set = "SSOReadOnlyAccess"
    },
    # aws_infrastructure_adminusers = {
    #   aws_accounts   = ["719322433931"]
    #   description    = "infrastructure admin users account access",
    #   ad_group_name  = "aws_infrastructure_adminusers"
    #   permission_set = "SSOAdministratorAccess"
    # },
    aws_infrastructure_powerusers = {
      aws_accounts  = [
        "641994015290",
        "221690440297"
        ]
      description    = "infrastructure power users account access",
      ad_group_name  = "aws_infrastructure_powerusers"
      permission_set = "SSOPowerUserAccess"
    },
    aws_infrastructure_readonlyusers = {
      aws_accounts   = [
        "472941943977",
        "641994015290",
        "221690440297",
        "138548450576",
        "383982001916",
        "519672842892",
        "944551780818",
        "149875424875",
        "436211286174",
        "642912241111",
        "436076943116",
        "716488235367",
        "899559760465",
        "145548569252",
        "810913072497",
        "033307049246",
        "687146674505",
        "147512564271",
        "993599401498",
        "808109751231",
        "383890196651",
        "283832859637",
        "665271258166",
        "871799200135",
        "603296346394"
        ]
      description    = "infrastructure readonly users account access",
      ad_group_name  = "aws_infrastructure_readonlyusers"
      permission_set = "SSOReadOnlyAccess"
    },
    # aws_architecture_adminusers = {
    #   aws_accounts   = ["719322433931"]
    #   description    = "architecture admin users account access",
    #   ad_group_name  = "aws_architecture_adminusers"
    #   permission_set = "SSOAdministratorAccess"
    # },
    aws_architecture_powerusers = {
      aws_accounts   = [
        "641994015290",
        "221690440297",
        "383982001916",
        "944551780818",
        "149875424875",
        "138548450576"
        ]
      description    = "architecture power users account access",
      ad_group_name  = "aws_architecture_powerusers"
      permission_set = "SSOPowerUserAccess"
    },
    aws_architecture_readonlyusers = {
      aws_accounts   = [
        "641994015290",
        "221690440297",
        "383982001916",
        "944551780818",
        "149875424875",
        "436211286174",
        "665271258166",
        "076663109531"

      ]
      description    = "architecture readonly users account access",
      ad_group_name  = "aws_architecture_readonlyusers"
      permission_set = "SSOReadOnlyAccess"
    },
    aws_platform_adminusers = {
      aws_accounts   = [
        "472941943977",
        "641994015290",
        "221690440297",
        "383982001916",
        "519672842892",
        "944551780818",
        "149875424875",
        "436076943116",
        "716488235367",
        "899559760465",
        "145548569252",
        "810913072497",
        "687146674505",
        "147512564271",
        "993599401498",
        "808109751231",
        "383890196651"

      ]
      description    = "platform admin users account access",
      ad_group_name  = "aws_platform_adminusers"
      permission_set = "SSOAdministratorAccess"
    },
    aws_platform_powerusers = {
      aws_accounts   = [
        "472941943977",
        "641994015290",
        "221690440297",
        "138548450576",
        "383982001916",
        "519672842892",
        "944551780818",
        "149875424875",
        "436211286174",
        "642912241111",
        "436076943116",
        "716488235367",
        "899559760465",
        "145548569252",
        "810913072497",
        "033307049246",
        "687146674505",
        "147512564271",
        "993599401498",
        "808109751231",
        "383890196651",
        "283832859637",
        "665271258166",
        "871799200135",
        "603296346394"
        ]
      description    = "platform power users account access",
      ad_group_name  = "aws_platform_powerusers"
      permission_set = "SSOPowerUserAccess"
    },
    aws_platform_readonlyusers = {
      aws_accounts   = [
        "472941943977",
        "641994015290",
        "221690440297",
        "138548450576",
        "383982001916",
        "519672842892",
        "944551780818",
        "149875424875",
        "436211286174",
        "642912241111",
        "436076943116",
        "716488235367",
        "899559760465",
        "145548569252",
        "810913072497",
        "033307049246",
        "687146674505",
        "147512564271",
        "993599401498",
        "808109751231",
        "383890196651",
        "283832859637",
        "665271258166",
        "871799200135",
        "603296346394"
        ]
      description    = "platform readonly users account access",
      ad_group_name  = "aws_platform_readonlyusers"
      permission_set = "SSOReadOnlyAccess"
    },
    # aws_msp_adminusers = {
    #   aws_accounts   = [""]
    #   description    = "msp admin users account access",
    #   ad_group_name  = "aws_msp_adminusers"
    #   permission_set = "SSOAdministratorAccess"
    # },
    aws_msp_powerusers = {
      aws_accounts   = [
        "871799200135",
        "603296346394",
        "145548569252",
        "687146674505",
        "147512564271",
        "993599401498",
        "808109751231",
        "383890196651",
        "033307049246",
        "810913072497"
        ]
      description    = "msp power users account access",
      ad_group_name  = "aws_msp_powerusers"
      permission_set = "SSOPowerUserAccess"
    },
    aws_msp_readonlyusers = {
      aws_accounts   = [
        "871799200135",
        "603296346394",
        "145548569252",
        "687146674505",
        "147512564271",
        "993599401498",
        "808109751231",
        "383890196651",
        "665271258166",
        "436211286174",
        "138548450576",
        "033307049246",
        "810913072497",
        "642912241111"
        ]
      description    = "msp readonly users account access",
      ad_group_name  = "aws_msp_readonlyusers"
      permission_set = "SSOReadOnlyAccess"
    },
    aws_craft_adminusers = {
      aws_accounts   = [
        "810913072497"

        ]
      description    = "craft admin users account access",
      ad_group_name  = "aws_craft_adminusers"
      permission_set = "SSOAdministratorAccess"
    },
    aws_craft_powerusers = {
      aws_accounts   = [
        "810913072497",
        "033307049246"
        ]
      description    = "craft power users account access",
      ad_group_name  = "aws_craft_powerusers"
      permission_set = "SSOPowerUserAccess"
    },
    aws_craft_readonlyusers = {
      aws_accounts   = [
        "810913072497",
        "033307049246"
        ]
      description    = "craft readonly users account access",
      ad_group_name  = "aws_craft_readonlyusers"
      permission_set = "SSOReadOnlyAccess"
    },
    # aws_migration_adminusers = {
    #   aws_accounts   = ["719322433931"]
    #   description    = "Migration admin users account access",
    #   ad_group_name  = "aws_Migration_adminusers"
    #   permission_set = "SSOAdministratorAccess"
    # },
    aws_migration_powerusers = {
      aws_accounts   = [
        "641994015290",
        "221690440297"
        ]
      description    = "Migration power users account access",
      ad_group_name  = "aws_migration_powerusers"
      permission_set = "SSOPowerUserAccess"
    },
    aws_migration_readonlyusers = {
      aws_accounts   = [
        "641994015290",
        "221690440297"
        ]
      description    = "Migration readonly users account access",
      ad_group_name  = "aws_migration_readonlyusers"
      permission_set = "SSOReadOnlyAccess"
    },
    aws_billing_adminusers = {
      aws_accounts   = ["138548450576"]
      description    = "Billing admin users account access",
      ad_group_name  = "aws_billing_adminusers"
      permission_set = "BillingAdminAccess"
    },
    aws_billing_support_adminusers = {
      aws_accounts   = ["138548450576"]
      description    = "Billing power users account access",
      ad_group_name  = "aws_billing_adminusers"
      permission_set = "SupportAccess"
    },
    aws_billing_readonlyusers = {
      aws_accounts   = ["138548450576"]
      description    = "Billing readonly users account access",
      ad_group_name  = "aws_billing_readonlyusers"
      permission_set = "BillingReadOnlyAccess"
    },
    aws_organizations_adminusers = {
      aws_accounts   =  [       
        "472941943977",
        "641994015290",
        "221690440297",
        "138548450576",
        "383982001916",
        "519672842892",
        "944551780818",
        "149875424875",
        "436211286174",
        "642912241111",
        "436076943116",
        "716488235367",
        "899559760465",
        "145548569252",
        "810913072497",
        "033307049246",
        "687146674505",
        "147512564271",
        "993599401498",
        "808109751231",
        "383890196651",
        "283832859637",
        "665271258166",
        "871799200135",
        "603296346394"
      ]
      description    = "Org admin users account access",
      ad_group_name  = "aws_organizations_adminusers"
      permission_set = "OrganizationsFullAccess"
    },
    aws_organizations_powerusers = {
      aws_accounts   = [     
       "472941943977",
        "641994015290",
        "221690440297",
        "138548450576",
        "383982001916",
        "519672842892",
        "944551780818",
        "149875424875",
        "436211286174",
        "642912241111",
        "436076943116",
        "716488235367",
        "899559760465",
        "145548569252",
        "810913072497",
        "033307049246",
        "687146674505",
        "147512564271",
        "993599401498",
        "808109751231",
        "383890196651",
        "283832859637",
        "665271258166",
        "871799200135",
        "603296346394"
      ]
      description    = "Org power users account access",
      ad_group_name  = "aws_organizations_adminusers"
      permission_set = "ControlTowerAdmins"
    },
    # aws_commandcentre_adminusers = {
    #   aws_accounts   = ["046151567026"]
    #   description    = "Command Center admin users account access",
    #   ad_group_name  = "aws_commandcentre_adminusers"
    #   permission_set = "SSOAdministratorAccess"
    # },
    # aws_commandcentre_powerusers = {
    #   aws_accounts   = ["719322433931"]
    #   description    = "Command Center power users account access",
    #   ad_group_name  = "aws_commandcentre_powerusers"
    #   permission_set = "SSOPowerUserAccess"
    # },
    aws_commandcentre_readonlyusers = {
      aws_accounts   = ["603296346394"]
      description    = "Command Center readonly users account access",
      ad_group_name  = "aws_commandcentre_ReadOnlyUsers"
      permission_set = "SSOReadOnlyAccess"
    },
    # aws_test_adminusers = {
    #   aws_accounts   = ["719322433931"]
    #   description    = "testers admin users account access",
    #   ad_group_name  = "aws_test_adminusers"
    #   permission_set = "SSOAdministratorAccess"
    # },
    aws_test_powerusers = {
      aws_accounts   = [
        "436076943116",
        "716488235367",
        "899559760465",
        "145548569252",
        "687146674505",
        "147512564271",
        "993599401498",
        "808109751231",
        "383890196651",
        ]
      description    = "testers power users account access",
      ad_group_name  = "aws_test_powerusers"
      permission_set = "SSOPowerUserAccess"
    },
    aws_test_readonlyusers = {
      aws_accounts   = [
        "871799200135",
        "603296346394",
        "436076943116",
        "716488235367",
        "899559760465",
        "145548569252",
        "687146674505",
        "147512564271",
        "993599401498",
        "808109751231",
        "383890196651"
        ]
      description    = "testers readonly users account access",
      ad_group_name  = "aws_test_readonlyusers"
      permission_set = "SSOReadOnlyAccess"
    },
    # aws_backups_adminusers = {
    #   aws_accounts   = ["719322433931"]
    #   description    = "backup admin users account access",
    #   ad_group_name  = "aws_backups_adminusers"
    #   permission_set = "SSOAdministratorAccess"
    # },
    # aws_backups_powerusers = {
    #   aws_accounts   = ["719322433931"]
    #   description    = "backup power users account access",
    #   ad_group_name  = "aws_backups_powerusers"
    #   permission_set = "SSOPowerUserAccess"
    # },
    aws_backups_readonlyusers = {
      aws_accounts   = [
        "871799200135",
        "145548569252",
        "687146674505",
        "147512564271",
        "993599401498",
        "808109751231",
        "383890196651"

        ]
      description    = "backup readonly users account access",
      ad_group_name  = "aws_backups_readonlyusers"
      permission_set = "SSOReadOnlyAccess"
    },
    # aws_delivery_adminusers = {
    #   aws_accounts   = ["719322433931"]
    #   description    = "delivery admin users account access",
    #   ad_group_name  = "aws_delivery_adminusers"
    #   permission_set = "SSOAdministratorAccess"
    # },
    aws_delivery_powerusers = {
      aws_accounts   = [
        "519672842892",
        "383982001916",
        "472941943977"
        ]
      description    = "delivery power users account access",
      ad_group_name  = "aws_delivery_powerusers"
      permission_set = "SSOPowerUserAccess"
    },
    aws_delivery_readonlyusers = {
      aws_accounts   = [
        "519672842892",
        "383982001916",
        "472941943977"
        ]
      description    = "delivery readonly users account access",
      ad_group_name  = "aws_delivery_readonlyusers"
      permission_set = "SSOReadOnlyAccess"
    },
    
    # aws_tfm_analytics_audit = {
    #   aws_accounts   = ["383890196651"]
    #   description    = "TFM Analytics rpp audit users account access",
    #   ad_group_name  = "aws_tfm_analytics_readonly"
    #   permission_set = "SSOCompliance_Dashboard"
    # },
    aws_tfm_analytics_powerusers = {
      aws_accounts   = [
        "436076943116",
        "899559760465",
        "383982001916"
        ]
      description    = "TFM Analytics  power users account access",
      ad_group_name  = "aws_tfm_analytics_powerusers"
      permission_set = "SSOPowerUserAccess"
    },
    aws_tfm_analytics_readonlyusers = {
      aws_accounts   = [
        "436076943116",
        "899559760465",
        "383982001916",
        "383890196651"
        ]
      description    = "TFM Analytics readonly users account access",
      ad_group_name  = "aws_tfm_analytics_readonly"
      permission_set = "SSOReadOnlyAccess"
    },
    # aws_database_adminusers = {
    #   aws_accounts   = ["719322433931"]
    #   description    = "Database admin users account access",
    #   ad_group_name  = "aws_database_adminusers"
    #   permission_set = "SSOAdministratorAccess"
    # },
    aws_database_powerusers = {
      aws_accounts   = [
        "641994015290",
        "221690440297",
        "383982001916",
        "472941943977",
        "899559760465",
        "145548569252"
      ]
      description    = "Database  power users account access",
      ad_group_name  = "aws_database_powerusers"
      permission_set = "SSOPowerUserAccess"
    },
    aws_database_readonlyusers = {
      aws_accounts   = [
        "472941943977",
        "641994015290",
        "221690440297",
        "138548450576",
        "383982001916",
        "519672842892",
        "944551780818",
        "149875424875",
        "436211286174",
        "642912241111",
        "436076943116",
        "716488235367",
        "899559760465",
        "145548569252",
        "810913072497",
        "033307049246",
        "687146674505",
        "147512564271",
        "993599401498",
        "808109751231",
        "383890196651",
        "283832859637",
        "665271258166",
        "871799200135",
        "603296346394"
      ]
      description    = "Database readonly users account access",
      ad_group_name  = "aws_database_readonlyusers"
      permission_set = "SSOReadOnlyAccess"
    },
    # aws_new_product_development_adminusers = {
    #   aws_accounts   = ["719322433931"]
    #   description    = "New Product Development admin users account access",
    #   ad_group_name  = "aws_new_product_development_adminusers"
    #   permission_set = "SSOAdministratorAccess"
    # },
    aws_new_product_development_powerusers = {
      aws_accounts   = [
        "641994015290",
        "221690440297",
        "383982001916",
        "472941943977",
      ]
      description    = "New Product Development  power users account access",
      ad_group_name  = "aws_new_product_development_powerusers"
      permission_set = "SSOPowerUserAccess"
    },
    aws_new_product_development_readonlyusers = {
      aws_accounts   = [
        "641994015290",
        "221690440297",
        "383982001916",
        "472941943977",
      ]
      description    = "New Product Development readonly users account access",
      ad_group_name  = "aws_new_product_development_readonlyusers"
      permission_set = "SSOReadOnlyAccess"
    },
    aws_mature_product_development_adminusers = {
      aws_accounts   = [
        "641994015290",
        "221690440297",
        "383982001916",
        "472941943977",
      ]
      description    = "Mature Product Development admin users account access",
      ad_group_name  = "aws_mature_product_development_adminusers"
      permission_set = "SSOAdministratorAccess"
    },
    aws_mature_product_development_powerusers = {
      aws_accounts   = [
        "641994015290",
        "221690440297",
        "383982001916",
        "472941943977",
        "436076943116",
        "716488235367",
        "899559760465",
        "145548569252"

        ]
      description    = "Mature Product Development  power users account access",
      ad_group_name  = "aws_mature_product_development_powerusers"
      permission_set = "SSOPowerUserAccess"
    },
    aws_mature_product_development_readonlyusers = {
      aws_accounts   = [
        "641994015290",
        "221690440297",
        "383982001916",
        "472941943977",
        "436076943116",
        "716488235367",
        "899559760465",
        "145548569252"
        ]
      description    = "Mature Product Development readonly users account access",
      ad_group_name  = "aws_mature_product_development_readonlyusers"
      permission_set = "SSOReadOnlyAccess"
    }



  }

}

