# wechat api swagger integration

An easy way to document/play/debug the wechat api using the swagger-ui.

## usage

1. It's only need a http server to host the dist folder as the document root, then that's act as a documentation server.
2. Using the http reverse proxy with http rewrite features, that's act as the wechat API server.

## quickly run in docker

1. `docker pull nginx`
2. `docker run --rm --name wechat-swagger -d -v $PWD/docs:/app -v $PWD/src/nginx.conf:/etc/nginx/nginx.conf -p7788:7788 nginx nginx`
3. open a browser, visit the `http://127.0.0.1:7788`

Enjoy!

MIT license.

```
tree $PWD/src/paths | sed 's/.yaml//' | { echo '```';cat;echo '```'; }
```

```
src/paths
├── bizwifi
│   ├── apportal
│   │   └── register
│   ├── bar
│   │   └── set
│   ├── couponput
│   │   ├── get
│   │   └── set
│   ├── device
│   │   ├── add
│   │   ├── delete
│   │   └── list
│   ├── finishpage
│   │   └── set
│   ├── homepage
│   │   ├── get
│   │   └── set
│   ├── openplugin
│   │   └── token
│   ├── qrcode
│   │   └── get
│   ├── shop
│   │   ├── clean
│   │   ├── get
│   │   ├── list
│   │   └── update
│   └── statistics
│       └── list
├── card
│   ├── batchget
│   ├── boardingpass
│   │   └── checkin
│   ├── code
│   │   ├── checkcode
│   │   ├── consume
│   │   ├── decrypt
│   │   ├── deposit
│   │   ├── get
│   │   ├── getdepositcount
│   │   ├── mark
│   │   ├── unavailable
│   │   └── update
│   ├── create
│   ├── delete
│   ├── generalcard
│   │   └── updateuser
│   ├── get
│   ├── getapplyprotocol
│   ├── getcolors
│   ├── giftcard
│   │   ├── maintain
│   │   │   └── set
│   │   ├── order
│   │   │   ├── batchget
│   │   │   ├── get
│   │   │   └── refund
│   │   ├── page
│   │   │   ├── add
│   │   │   ├── batchget
│   │   │   ├── get
│   │   │   └── update
│   │   ├── pay
│   │   │   ├── submch
│   │   │   │   └── bind
│   │   │   └── whitelist
│   │   │       └── add
│   │   └── wxa
│   │       └── set
│   ├── invoice
│   │   ├── biz
│   │   │   ├── getselecttitleurl
│   │   │   └── getusertitleurl
│   │   ├── clearoutinvoice
│   │   ├── getauthdata
│   │   ├── getauthurl
│   │   ├── insert
│   │   ├── makeoutinvoice
│   │   ├── platform
│   │   │   ├── createcard
│   │   │   ├── getpdf
│   │   │   ├── setpdf
│   │   │   └── updatestatus
│   │   ├── queryinvoceinfo
│   │   ├── reimburse
│   │   │   ├── getinvoicebatch
│   │   │   ├── getinvoiceinfo
│   │   │   ├── updateinvoicestatus
│   │   │   └── updatestatusbatch
│   │   ├── rejectinsert
│   │   ├── scantitle
│   │   ├── setbizattr
│   │   └── seturl
│   ├── landingpage
│   │   └── create
│   ├── location
│   │   ├── batchadd
│   │   └── batchget
│   ├── luckymonkey
│   │   └── updateuserbalance
│   ├── meetingticket
│   │   └── updateuser
│   ├── membercard
│   │   ├── activate
│   │   │   └── geturl
│   │   ├── activate
│   │   ├── activatetempinfo
│   │   │   └── get
│   │   ├── activateuserform
│   │   │   └── set
│   │   ├── updateuser
│   │   └── userinfo
│   │       └── get
│   ├── mkt
│   │   └── activity
│   │       └── create
│   ├── modifystock
│   ├── movieticket
│   │   └── updateuser
│   ├── mpnews
│   │   └── gethtml
│   ├── pay
│   │   ├── activate
│   │   ├── confirm
│   │   ├── getcoinsinfo
│   │   ├── getorder
│   │   ├── getorderlist
│   │   ├── getpayprice
│   │   └── recharge
│   ├── paycell
│   │   └── set
│   ├── qrcode
│   │   └── create
│   ├── selfconsumecell
│   │   └── set
│   ├── storewxa
│   │   ├── get
│   │   └── set
│   ├── submerchant
│   │   ├── batchget
│   │   ├── get
│   │   ├── submit
│   │   └── update
│   ├── testwhitelist
│   │   └── set
│   ├── update
│   └── user
│       └── getcardlist
├── cgi-bin
│   ├── account
│   │   ├── componentrebindadmin
│   │   ├── fastregister
│   │   ├── getaccountbasicinfo
│   │   ├── modifyheadimage
│   │   └── modifysignature
│   ├── changeopenid
│   ├── clear_quota
│   ├── comment
│   │   ├── close
│   │   ├── delete
│   │   ├── list
│   │   ├── markelect
│   │   ├── open
│   │   ├── reply
│   │   │   ├── add
│   │   │   └── delete
│   │   └── unmarkelect
│   ├── component
│   │   ├── api_authorizer_token
│   │   ├── api_component_token
│   │   ├── api_confirm_authorization
│   │   ├── api_create_preauthcode
│   │   ├── api_get_authorizer_info
│   │   ├── api_get_authorizer_list
│   │   ├── api_get_authorizer_option
│   │   ├── api_query_auth
│   │   ├── api_set_authorizer_option
│   │   ├── batchget_card_merchant
│   │   ├── check_card_agent_qualification
│   │   ├── check_card_merchant_qualification
│   │   ├── clear_quota
│   │   ├── get_card_merchant
│   │   ├── upload_card_agent_qualification
│   │   └── upload_card_merchant_qualification
│   ├── customservice
│   │   ├── getkflist
│   │   └── getonlinekflist
│   ├── get_current_selfmenu_info
│   ├── getcallbackip
│   ├── material
│   │   ├── add_material
│   │   ├── add_news
│   │   ├── batchget_material
│   │   ├── del_material
│   │   ├── get_material
│   │   ├── get_materialcount
│   │   └── update_news
│   ├── media
│   │   ├── get
│   │   │   └── jssdk
│   │   ├── get
│   │   ├── upload
│   │   ├── uploadimg
│   │   ├── uploadnews
│   │   ├── uploadvideo
│   │   └── voice
│   │       ├── addvoicetorecofortext
│   │       ├── queryrecoresultfortext
│   │       └── translatecontent
│   ├── menu
│   │   ├── addconditional
│   │   ├── create
│   │   ├── delconditional
│   │   ├── delete
│   │   ├── get
│   │   └── trymatch
│   ├── message
│   │   ├── custom
│   │   │   ├── send
│   │   │   └── typing
│   │   ├── mass
│   │   │   ├── delete
│   │   │   ├── get
│   │   │   ├── preview
│   │   │   ├── send
│   │   │   ├── sendall
│   │   │   └── speed
│   │   │       ├── get
│   │   │       └── set
│   │   └── wxopen
│   │       └── template
│   │           └── uniform_send
│   ├── open
│   │   ├── bind
│   │   ├── create
│   │   ├── get
│   │   └── unbind
│   ├── poi
│   │   ├── addpoi
│   │   ├── delpoi
│   │   ├── getpoi
│   │   ├── getpoilist
│   │   ├── getwxcategory
│   │   └── updatepoi
│   ├── qrcode
│   │   └── create
│   ├── shorturl
│   ├── showqrcode
│   ├── tags
│   │   ├── create
│   │   ├── delete
│   │   ├── get
│   │   ├── getidlist
│   │   ├── members
│   │   │   ├── batchblacklist
│   │   │   ├── batchtagging
│   │   │   ├── batchunblacklist
│   │   │   ├── batchuntagging
│   │   │   └── getblacklist
│   │   └── update
│   ├── template
│   │   ├── api_add_template
│   │   ├── api_set_industry
│   │   ├── del_private_template
│   │   ├── get_all_private_template
│   │   ├── get_industry
│   │   ├── send
│   │   └── subscribe
│   ├── ticket
│   │   └── getticket
│   ├── token
│   ├── user
│   │   ├── get
│   │   ├── info
│   │   │   ├── batchget
│   │   │   └── updateremark
│   │   ├── info
│   │   └── tag
│   │       └── get
│   ├── wxaapp
│   │   └── createwxaqrcode
│   ├── wxopen
│   │   ├── addcategory
│   │   ├── deletecategory
│   │   ├── getallcategories
│   │   ├── getcategory
│   │   ├── getweappsupportversion
│   │   ├── modifycategory
│   │   ├── qrcodejumpadd
│   │   ├── qrcodejumpdelete
│   │   ├── qrcodejumpdownload
│   │   ├── qrcodejumpget
│   │   ├── qrcodejumppublish
│   │   ├── setweappsupportversion
│   │   ├── template
│   │   │   ├── add
│   │   │   ├── del
│   │   │   ├── library
│   │   │   │   ├── get
│   │   │   │   └── list
│   │   │   ├── list
│   │   │   └── send
│   │   ├── wxamplink
│   │   ├── wxamplinkget
│   │   └── wxampunlink
│   └── wxverify
│       └── checkwxverifynickname
├── customservice
│   ├── kfaccount
│   │   ├── add
│   │   ├── del
│   │   ├── inviteworker
│   │   ├── update
│   │   └── uploadheadimg
│   ├── kfsession
│   │   ├── close
│   │   ├── create
│   │   ├── getsession
│   │   ├── getsessionlist
│   │   └── getwaitcase
│   └── msgrecord
│       └── getmsglist
├── datacube
│   ├── getarticlesummary
│   ├── getarticletotal
│   ├── getcardbizuininfo
│   ├── getcardcardinfo
│   ├── getcardmembercarddetail
│   ├── getcardmembercardinfo
│   ├── getinterfacesummary
│   ├── getinterfacesummaryhour
│   ├── getupstreammsg
│   ├── getupstreammsgdist
│   ├── getupstreammsgdistmonth
│   ├── getupstreammsgdistweek
│   ├── getupstreammsghour
│   ├── getupstreammsgmonth
│   ├── getupstreammsgweek
│   ├── getusercumulate
│   ├── getuserread
│   ├── getuserreadhour
│   ├── getusershare
│   ├── getusersharehour
│   ├── getusersummary
│   ├── getweanalysisappiddailyretaininfo
│   ├── getweanalysisappiddailysummarytrend
│   ├── getweanalysisappiddailyvisittrend
│   ├── getweanalysisappidmonthlyretaininfo
│   ├── getweanalysisappidmonthlyvisittrend
│   ├── getweanalysisappiduserportrait
│   ├── getweanalysisappidvisitdistribution
│   ├── getweanalysisappidvisitpage
│   ├── getweanalysisappidweeklyretaininfo
│   └── getweanalysisappidweeklyvisittrend
├── mall
│   ├── addbranditem
│   ├── addgroup
│   ├── additemgrouprelation
│   ├── addpropertyandpropertyvalue
│   ├── addpropertyvalue
│   ├── addstockinfobyitemcode
│   ├── changebranditemstatus
│   ├── deletegroup
│   ├── deleteitemgrouprelation
│   ├── delproperty
│   ├── delpropertyvalue
│   ├── detelebranditem
│   ├── getbranditemdetail
│   ├── getcategorylistbyid
│   ├── getgroups
│   ├── getorderbyid
│   ├── getorderbypage
│   ├── getpropertybycategoryid
│   ├── getstockinfobyitemcode
│   ├── selectbranditemlistbyuin
│   ├── shipgoods
│   ├── updatebranditem
│   ├── updategroup
│   ├── updateitempicture
│   ├── updatestockinfo
│   ├── updatestockpicture
│   └── uploaditemimage
├── merchant
│   ├── category
│   │   ├── getproperty
│   │   ├── getsku
│   │   └── getsub
│   ├── common
│   │   └── upload_img
│   ├── create
│   ├── del
│   ├── express
│   │   ├── add
│   │   ├── del
│   │   ├── getall
│   │   ├── getbyid
│   │   └── update
│   ├── get
│   ├── getbystatus
│   ├── group
│   │   ├── add
│   │   ├── del
│   │   ├── getall
│   │   ├── getbyid
│   │   ├── productmod
│   │   └── propertymod
│   ├── modproductstatus
│   ├── order
│   │   ├── close
│   │   ├── getbyfilter
│   │   ├── getbyid
│   │   └── setdelivery
│   ├── shelf
│   │   ├── add
│   │   ├── del
│   │   ├── getall
│   │   ├── getbyid
│   │   └── mod
│   ├── stock
│   │   ├── add
│   │   └── reduce
│   └── update
├── nontax
│   ├── createbillcard
│   ├── getbillauthurl
│   └── insertbill
├── scan
│   ├── merchantinfo
│   │   └── get
│   ├── product
│   │   ├── clear
│   │   ├── create
│   │   ├── get
│   │   ├── getlist
│   │   ├── getqrcode
│   │   ├── modstatus
│   │   └── update
│   ├── scanticket
│   │   └── check
│   └── testwhitelist
│       └── set
├── semantic
│   └── semproxy
│       └── search
├── shakearound
│   ├── account
│   │   ├── auditstatus
│   │   └── register
│   ├── device
│   │   ├── applyid
│   │   ├── applystatus
│   │   ├── bindlocation
│   │   ├── bindpage
│   │   ├── group
│   │   │   ├── add
│   │   │   ├── adddevice
│   │   │   ├── delete
│   │   │   ├── deletedevice
│   │   │   ├── getdetail
│   │   │   ├── getlist
│   │   │   └── update
│   │   ├── search
│   │   └── update
│   ├── lottery
│   │   ├── addlotteryinfo
│   │   ├── querylottery
│   │   ├── setlotteryswitch
│   │   └── setprizebucket
│   ├── material
│   │   └── add
│   ├── page
│   │   ├── add
│   │   ├── delete
│   │   ├── search
│   │   └── update
│   ├── relation
│   │   └── search
│   ├── statistics
│   │   ├── device
│   │   ├── devicelist
│   │   ├── page
│   │   └── pagelist
│   └── user
│       └── getshakeinfo
├── sns
│   ├── auth
│   ├── component
│   │   └── jscode2session
│   ├── jscode2session
│   ├── oauth2
│   │   ├── access_token
│   │   ├── component
│   │   │   ├── access_token
│   │   │   └── refresh_token
│   │   └── refresh_token
│   └── userinfo
└── wxa
    ├── add_store
    ├── addnearbypoi
    ├── addtotemplate
    ├── api_wxa_querynickname
    ├── apply_merchant
    ├── bind_tester
    ├── change_visitstatus
    ├── changewxasearchstatus
    ├── commit
    ├── create_map_poi
    ├── del_store
    ├── deletetemplate
    ├── delnearbypoi
    ├── devplugin
    ├── get_auditstatus
    ├── get_category
    ├── get_district
    ├── get_latest_auditstatus
    ├── get_merchant_audit_info
    ├── get_merchant_category
    ├── get_page
    ├── get_qrcode
    ├── get_store_info
    ├── get_store_list
    ├── getgrayreleaseplan
    ├── getnearbypoilist
    ├── gettemplatedraftlist
    ├── gettemplatelist
    ├── getwxacode
    ├── getwxacodeunlimit
    ├── getwxasearchstatus
    ├── grayrelease
    ├── img_sec_check
    ├── memberauth
    ├── modify_domain
    ├── modify_merchant
    ├── msg_sec_check
    ├── plugin
    ├── release
    ├── revertcoderelease
    ├── revertgrayrelease
    ├── search_map_poi
    ├── setnearbypoishowstatus
    ├── setnickname
    ├── setwebviewdomain
    ├── submit_audit
    ├── unbind_tester
    ├── undocodeaudit
    └── update_store

117 directories, 428 files
```
