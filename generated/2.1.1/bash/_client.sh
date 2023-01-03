#compdef 

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# ! Based on: https://github.com/Valodim/zsh-curl-completion/blob/master/_curl
# !
# !
# !
# ! Installation:
# !
# ! Copy the _ file to any directory under FPATH
# ! environment variable (echo $FPATH)
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


local curcontext="$curcontext" state line ret=1
typeset -A opt_args

typeset -A mime_type_abbreviations
# text/*
mime_type_abbreviations[text]="text/plain"
mime_type_abbreviations[html]="text/html"
mime_type_abbreviations[md]="text/x-markdown"
mime_type_abbreviations[csv]="text/csv"
mime_type_abbreviations[css]="text/css"
mime_type_abbreviations[rtf]="text/rtf"
# application/*
mime_type_abbreviations[json]="application/json"
mime_type_abbreviations[xml]="application/xml"
mime_type_abbreviations[yaml]="application/yaml"
mime_type_abbreviations[js]="application/javascript"
mime_type_abbreviations[bin]="application/octet-stream"
mime_type_abbreviations[rdf]="application/rdf+xml"
# image/*
mime_type_abbreviations[jpg]="image/jpeg"
mime_type_abbreviations[png]="image/png"
mime_type_abbreviations[gif]="image/gif"
mime_type_abbreviations[bmp]="image/bmp"
mime_type_abbreviations[tiff]="image/tiff"

#
# Generate zsh completion string list for abbreviated mime types
#
get_mime_type_completions() {
    typeset -a result
    result=()
    for k in "${(@k)mime_type_abbreviations}"; do
        value=$mime_type_abbreviations[${k}]
        #echo $value
        result+=( "${k}[${value}]" )
        #echo $result
    done
    echo "$result"
}

#
# cURL crypto engines completion function
#
_curl_crypto_engine() {
    local vals
    vals=( ${${(f)"$(curl --engine list)":gs/ /}[2,$]} )
    _describe -t outputs 'engines' vals && return 0
}

#
# cURL post data completion functions=
#
_curl_post_data() {

    # don't do anything further if this is raw content
    compset -P '=' && _message 'raw content' && return 0

    # complete filename or stdin for @ syntax
    compset -P '*@' && {
        local expl
        _description files expl stdin
        compadd "$expl[@]" - "-"
        _files
        return 0
    }

    # got a name already? expecting data.
    compset -P '*=' && _message 'data value' && return 0

    # otherwise, name (or @ or =) should be specified
    _message 'data name' && return 0

}


local arg_http arg_ftp arg_other arg_proxy arg_crypto arg_connection arg_auth arg_input arg_output

# HTTP Arguments
arg_http=(''\
  {-0,--http1.0}'[force use of use http 1.0 instead of 1.1]' \
  {-b,--cookie}'[pass data to http server as cookie]:data or file' \
  {-c,--cookie-jar}'[specify cookie file]:file name:_files' \
  {-d,--data}'[send specified data as HTTP POST data]:data:{_curl_post_data}' \
  '--data-binary[post HTTP POST data without any processing]:data:{_curl_post_data}' \
  '--data-urlencode[post HTTP POST data, with url encoding]:data:{_curl_post_data}' \
  {-f,--fail}'[enable failfast behavior for server errors]' \
  '*'{-F,--form}'[add POST form data]:name=content' \
  {-G,--get}'[use HTTP GET even with data (-d, --data, --data-binary)]' \
  '*'{-H,--header}'[specify an extra header]:header' \
  '--ignore-content-length[ignore Content-Length header]' \
  {-i,--include}'[include HTTP header in the output]' \
  {-j,--junk-session-cookies}'[discard all session cookies]' \
  {-e,--referer}'[send url as referer]:referer url:_urls' \
  {-L,--location}'[follow Location headers on http 3XX response]' \
  '--location-trusted[like --location, but allows sending of auth data to redirected hosts]' \
  '--max-redirs[set maximum number of redirection followings allowed]:number' \
  {-J,--remote-header-name}'[use Content-Disposition for output file name]' \
  {-O,--remote-name}'[write to filename parsed from url instead of stdout]' \
  '--post301[do not convert POST to GET after following 301 Location response (follow RFC 2616/10.3.2)]' \
  '--post302[do not convert POST to GET after following 302 Location response (follow RFC 2616/10.3.2)]' \
  )

# FTP arguments
arg_ftp=(\
  {-a,--append}'[append to target file instead of overwriting (FTP/SFTP)]' \
  '--crlf[convert LF to CRLF in upload]' \
  '--disable-eprt[disable use of EPRT and LPRT for active FTP transfers]' \
  '--disable-epsv[disable use of EPSV for passive FTP transfers]' \
  '--ftp-account[account data (FTP)]:data' \
  '--ftp-alternative-to-user[command to send when USER and PASS commands fail (FTP)]:command' \
  '--ftp-create-dirs[create paths remotely if it does not exist]' \
  '--ftp-method[ftp method to use to reach a file (FTP)]:method:(multicwd ocwd singlecwd)' \
  '--ftp-pasv[use passive mode for the data connection (FTP)]' \
  '--ftp-skip-pasv-ip[do not use the ip the server suggests for PASV]' \
  '--form-string[like --form, but do not parse content]:name=string' \
  '--ftp-pret[send PRET before PASV]' \
  '--ftp-ssl-ccc[use clear command channel (CCC) after authentication (FTP)]' \
  '--ftp-ssl-ccc-mode[sets the CCC mode (FTP)]:mode:(active passive)' \
  '--ftp-ssl-control[require SSL/TLS for FTP login, clear for transfer]' \
  {-l,--list-only}'[list names only when listing directories (FTP)]' \
  {-P,--ftp-port}'[use active mode, tell server to connect to specified address or interface (FTP]:address' \
  '*'{-Q,--quote}'[send arbitrary command to the remote server before transfer (FTP/SFTP)]:command' \
  )

# Other Protocol arguments
arg_other=(\
  '--mail-from[specify From: address]:address' \
  '--mail-rcpt[specify email recipient for SMTP, may be given multiple times]:address' \
  {-t,--telnet-option}'[pass options to telnet protocol]:opt=val' \
  '--tftp-blksize[set tftp BLKSIZE option]:value' \
  )

# Proxy arguments
arg_proxy=(\
  '--noproxy[list of hosts to connect directly to instead of through proxy]:no-proxy-list' \
  {-p,--proxytunnel}'[tunnel non-http protocols through http proxy]' \
  {-U,--proxy-user}'[specify the user name and password to use for proxy authentication]:user:password' \
  '--proxy-anyauth[use any authentication method for proxy, default to most secure]' \
  '--proxy-basic[use HTTP Basic authentication for proxy]' \
  '--proxy-digest[use http digest authentication for proxy]' \
  '--proxy-negotiate[enable GSS-Negotiate authentication for proxy]' \
  '--proxy-ntlm[enable ntlm authentication for proxy]' \
  '--proxy1.0[use http 1.0 proxy]:proxy url' \
  {-x,--proxy}'[use specified proxy]:proxy url' \
  '--socks5-gssapi-service[change service name for socks server]:servicename' \
  '--socks5-gssapi-nec[allow unprotected exchange of protection mode negotiation]' \
  )

# Crypto arguments
arg_crypto=(\
  {-1,--tlsv1}'[Forces curl to use TLS version 1 when negotiating with a remote TLS server.]' \
  {-2,--sslv2}'[Forces curl to use SSL version 2 when negotiating with a remote SSL server.]' \
  {-3,--sslv3}'[Forces curl to use SSL version 3 when negotiating with a remote SSL server.]' \
  '--ciphers[specifies which cipher to use for the ssl connection]:list of ciphers' \
  '--crlfile[specify file with revoked certificates]:file' \
  '--delegation[set delegation policy to use with GSS/kerberos]:delegation policy:(none policy always)' \
  {-E,--cert}'[use specified client certificate]:certificate file:_files' \
  '--engine[use selected OpenSSL crypto engine]:ssl crypto engine:{_curl_crypto_engine}' \
  '--egd-file[set ssl entropy gathering daemon socket]:entropy socket:_files' \
  '--cert-type[specify certificate type (PEM, DER, ENG)]:certificate type:(PEM DER ENG)' \
  '--cacert[specify certificate file to verify the peer with]:CA certificate:_files' \
  '--capath[specify a search path for certificate files]:CA certificate directory:_directories' \
  '--hostpubmd5[check remote hosts public key]:md5 hash' \
  {-k,--insecure}'[allow ssl to perform insecure ssl connections (ie, ignore certificate)]' \
  '--key[ssl/ssh private key file name]:key file:_files' \
  '--key-type[ssl/ssh private key file type]:file type:(PEM DER ENG)' \
  '--pubkey[ssh public key file]:pubkey file:_files' \
  '--random-file[set source of random data for ssl]:random source:_files' \
  '--no-sessionid[disable caching of ssl session ids]' \
  '--pass:phrase[passphrase for ssl/ssh private key]' \
  '--ssl[try to use ssl/tls for connection, if available]' \
  '--ssl-reqd[try to use ssl/tls for connection, fail if unavailable]' \
  '--tlsauthtype[set TLS authentication type (only SRP supported!)]:authtype' \
  '--tlsuser[set username for TLS authentication]:user' \
  '--tlspassword[set password for TLS authentication]:password' \
  )

# Connection arguments
arg_connection=(\
  {-4,--ipv4}'[prefer ipv4]' \
  {-6,--ipv6}'[prefer ipv6, if available]' \
  {-B,--use-ascii}'[use ascii mode]' \
  '--compressed[request a compressed transfer]' \
  '--connect-timeout[timeout for connection phase]:seconds' \
  {-I,--head}'[fetch http HEAD only (HTTP/FTP/FILE]' \
  '--interface[work on a specific interface]:name' \
  '--keepalive-time[set time to wait before sending keepalive probes]:seconds' \
  '--limit-rate[specify maximum transfer rate]:speed' \
  '--local-port[set preferred number or range of local ports to use]:num' \
  {-N,--no-buffer}'[disable buffering of the output stream]' \
  '--no-keepalive[disable use of keepalive messages in TCP connections]' \
  '--raw[disable all http decoding and pass raw data]' \
  '--resolve[provide a custom address for a specific host and port pair]:host\:port\:address' \
  '--retry[specify maximum number of retries for transient errors]:num' \
  '--retry-delay[specify delay between retries]:seconds' \
  '--retry-max-time[maximum time to spend on retries]:seconds' \
  '--tcp-nodelay[turn on TCP_NODELAY option]' \
  {-y,--speed-time}'[specify time to abort after if download is slower than speed-limit]:time' \
  {-Y,--speed-limit}'[specify minimum speed for --speed-time]:speed' \
  )

# Authentication arguments
arg_auth=(\
  '--anyauth[use any authentication method, default to most secure]' \
  '--basic[use HTTP Basic authentication]' \
  '--ntlm[enable ntlm authentication]' \
  '--digest[use http digest authentication]' \
  '--krb[use kerberos authentication]:auth:(clear safe confidential private)' \
  '--negotiate[enable GSS-Negotiate authentication]' \
  {-n,--netrc}'[scan ~/.netrc for login data]' \
  '--netrc-optional[like --netrc, but does not make .netrc usage mandatory]' \
  '--netrc-file[like --netrc, but specify file to use]:netrc file:_files' \
  '--tr-encoding[request compressed transfer-encoding]' \
  {-u,--user}'[specify user name and password for server authentication]:user\:password' \
  )

# Input arguments
arg_input=(\
  {-C,--continue-at}'[resume at offset ]:offset' \
  {-g,--globoff}'[do not glob {}\[\] letters]' \
  '--max-filesize[maximum filesize to download, fail for bigger files]:bytes' \
  '--proto[specify allowed protocols for transfer]:protocols' \
  '--proto-redir[specify allowed protocols for transfer after a redirect]:protocols' \
  {-r,--range}'[set range of bytes to request (HTTP/FTP/SFTP/FILE)]:range' \
  {-R,--remote-time}'[use timestamp of remote file for local file]' \
  {-T,--upload-file}'[transfer file to remote url (using PUT for HTTP)]:file to upload:_files' \
  '--url[specify a URL to fetch (multi)]:url:_urls' \
  {-z,--time-cond}'[request downloaded file to be newer than date or given reference file]:date expression' \
  )

# Output arguments
arg_output=(\
  '--create-dirs[create local directory hierarchy as needed]' \
  {-D,--dump-header}'[write protocol headers to file]:dump file:_files' \
  {-o,--output}'[write to specified file instead of stdout]:output file:_files' \
  {--progress-bar,-\#}'[display progress as a simple progress bar]' \
  {-\#,--progress-bar}'[Make curl display progress as a simple progress bar instead of the standard, more informational, meter.]' \
  {-R,--remote-time}'[use timestamp of remote file for local file]' \
  '--raw[disable all http decoding and pass raw data]' \
  {-s,--silent}'[silent mode, do not show progress meter or error messages]' \
  {-S,--show-error}'[show errors in silent mode]' \
  '--stderr[redirect stderr to specified file]:output file:_files' \
  '--trace[enable full trace dump of all incoming and outgoing data]:trace file:_files' \
  '--trace-ascii[enable full trace dump of all incoming and outgoing data, without hex data]:trace file:_files' \
  '--trace-time[prepends a time stamp to each trace or verbose line that curl displays]' \
  {-v,--verbose}'[output debug info]' \
  {-w,--write-out}'[specify message to output on successful operation]:format string' \
  '--xattr[store some file metadata in extended file attributes]' \
  {-X,--request}'[specifies request method for HTTP server]:method:(GET POST PUT DELETE HEAD OPTIONS TRACE CONNECT PATCH LINK UNLINK)' \
  )

_arguments -C -s $arg_http $arg_ftp $arg_other $arg_crypto $arg_connection $arg_auth $arg_input $arg_output \
  {-M,--manual}'[Print manual]' \
  '*'{-K,--config}'[Use other config file to read arguments from]:config file:_files' \
  '--libcurl[output libcurl code for the operation to file]:output file:_files' \
  {-m,--max-time}'[Limit total time of operation]:seconds' \
  {-s,--silent}'[Silent mode, do not show progress meter or error messages]' \
  {-S,--show-error}'[Show errors in silent mode]' \
  '--stderr[Redirect stderr to specified file]:output file:_files' \
  '-q[Do not read settings from .curlrc (must be first option)]' \
  {-h,--help}'[Print help and list of operations]' \
  {-V,--version}'[Print service API version]' \
  '--about[Print the information about service]' \
  '--host[Specify the host URL]':URL:_urls \
  '--dry-run[Print out the cURL command without executing it]' \
  {-ac,--accept}'[Set the Accept header in the request]: :{_values "Accept mime type" $(get_mime_type_completions)}' \
  {-ct,--content-type}'[Set the Content-type header in request]: :{_values "Content mime type" $(get_mime_type_completions)}' \
  '1: :->ops' \
  '*:: :->args' \
  && ret=0


case $state in
  ops)
    # Operations
    _values "Operations" \
            "assetV1DataByAddress[]" \
            "assetV1DataById[]" \
            "assetV1DataBySymbol[]" \
            "assetV1TopList[]"             "futuresV1HistoricalDays[]" \
            "futuresV1HistoricalFundingRateDays[]" \
            "futuresV1HistoricalFundingRateHours[]" \
            "futuresV1HistoricalFundingRateMessages[]" \
            "futuresV1HistoricalFundingRateMessagesHour[]" \
            "futuresV1HistoricalFundingRateMinutes[]" \
            "futuresV1HistoricalHours[]" \
            "futuresV1HistoricalMinutes[]" \
            "futuresV1HistoricalOpenInterestDays[]" \
            "futuresV1HistoricalOpenInterestHours[]" \
            "futuresV1HistoricalOpenInterestMessages[]" \
            "futuresV1HistoricalOpenInterestMessagesHour[]" \
            "futuresV1HistoricalOpenInterestMinutes[]" \
            "futuresV1HistoricalTrades[]" \
            "futuresV1HistoricalTradesHour[]" \
            "futuresV1LatestFundingRateTick[]" \
            "futuresV1LatestInstrumentMetadata[]" \
            "futuresV1LatestOpenInterestTick[]" \
            "futuresV1LatestTick[]" \
            "futuresV1Markets[]" \
            "futuresV1MarketsInstruments[]" \
            "futuresV1MarketsInstrumentsUnmapped[]" \
            "indexV1HistoricalDays[]" \
            "indexV1HistoricalHours[]" \
            "indexV1HistoricalMessages[]" \
            "indexV1HistoricalMessagesHour[]" \
            "indexV1HistoricalMinutes[]" \
            "indexV1LatestInstrumentMetadata[]" \
            "indexV1LatestTick[]" \
            "indexV1Markets[]" \
            "indexV1MarketsInstruments[]" \
            "indexV1MarketsInstrumentsUnmapped[]"             "newsV1ArticleList[]" \
            "newsV1CategoryList[]" \
            "newsV1SourceList[]"             "overviewV1HistoricalMarketcapAllAssetsDays[]" \
            "overviewV1HistoricalMarketcapAllAssetsHours[]" \
            "overviewV1HistoricalMarketcapFtwAssetsDays[]" \
            "overviewV1HistoricalMarketcapFtwAssetsHours[]" \
            "overviewV1LatestMarketcapAllTick[]" \
            "overviewV1LatestMarketcapFtwTick[]"             "indexCcV1HistoricalDays[]" \
            "indexCcV1HistoricalHours[]" \
            "indexCcV1HistoricalMessages[]" \
            "indexCcV1HistoricalMessagesHour[]" \
            "indexCcV1HistoricalMinutes[]" \
            "indexCcV1LatestInstrumentMetadata[]" \
            "indexCcV1LatestTick[]" \
            "indexCcV1Markets[]" \
            "indexCcV1MarketsInstruments[]" \
            "indexCcV1MarketsInstrumentsUnmapped[]"             "spotV1HistoricalDays[]" \
            "spotV1HistoricalHours[]" \
            "spotV1HistoricalMinutes[]" \
            "spotV1HistoricalOrderbookL2SnapshotMinute[]" \
            "spotV1HistoricalTrades[]" \
            "spotV1HistoricalTradesHour[]" \
            "spotV1LatestInstrumentMetadata[]" \
            "spotV1LatestTick[]" \
            "spotV1Markets[]" \
            "spotV1MarketsInstruments[]" \
            "spotV1MarketsInstrumentsUnmapped[]" \

    _arguments "(--help)--help[Print information about operation]"

    ret=0
    ;;
  args)
    case $line[1] in
      assetV1DataByAddress)
        local -a _op_arguments
        _op_arguments=(
                    "address=:[QUERY] "
"chain_symbol=:[QUERY] "
"groups=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      assetV1DataById)
        local -a _op_arguments
        _op_arguments=(
                    "asset_id=:[QUERY] The asset id you are interested in"
"groups=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      assetV1DataBySymbol)
        local -a _op_arguments
        _op_arguments=(
                    "asset_symbol=:[QUERY] The asset symbol you are interested in"
"groups=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      assetV1TopList)
        local -a _op_arguments
        _op_arguments=(
                    "page=:[QUERY] The page number for the request to get {page_size} coins at the time."
"page_size=:[QUERY] The number of items returned per page"
"asset_type=:[QUERY] The asset class/type"
"sort_by=:[QUERY] Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )"
"sort_direction=:[QUERY] Sort direction ( DESC,ASC )"
"groups=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1HistoricalDays)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1HistoricalFundingRateDays)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1HistoricalFundingRateHours)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1HistoricalFundingRateMessages)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"after_ts=:[QUERY] Unix timestamp in seconds of the earliest funding rate message in the response"
"last_ccseq=:[QUERY] The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request."
"limit=:[QUERY] The maximum number of funding rate messages to return"
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
"return_404_on_empty_response=true:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          "return_404_on_empty_response=false:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1HistoricalFundingRateMessagesHour)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"hour_ts=:[QUERY] Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
"return_404_on_empty_response=true:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          "return_404_on_empty_response=false:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1HistoricalFundingRateMinutes)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1HistoricalHours)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1HistoricalMinutes)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1HistoricalOpenInterestDays)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1HistoricalOpenInterestHours)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1HistoricalOpenInterestMessages)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"after_ts=:[QUERY] Unix timestamp in seconds of the earliest open interest message in the response"
"last_ccseq=:[QUERY] The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request."
"limit=:[QUERY] The maximum number of open interest messages to return"
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
"return_404_on_empty_response=true:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          "return_404_on_empty_response=false:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1HistoricalOpenInterestMessagesHour)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"hour_ts=:[QUERY] Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
"return_404_on_empty_response=true:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          "return_404_on_empty_response=false:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1HistoricalOpenInterestMinutes)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1HistoricalTrades)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"after_ts=:[QUERY] Unix timestamp in seconds of the earliest trade in the response."
"last_ccseq=:[QUERY] The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request."
"limit=:[QUERY] The maximum number of trades to return"
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
"return_404_on_empty_response=true:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          "return_404_on_empty_response=false:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1HistoricalTradesHour)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"hour_ts=:[QUERY] Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
"return_404_on_empty_response=true:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          "return_404_on_empty_response=false:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1LatestFundingRateTick)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instruments=:[QUERY] A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME"
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1LatestInstrumentMetadata)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instruments=:[QUERY] A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE"
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1LatestOpenInterestTick)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instruments=:[QUERY] A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME"
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1LatestTick)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instruments=:[QUERY] A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME"
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1Markets)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1MarketsInstruments)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped instrument to retrieve on a specific market."
"instrument_status=:[QUERY] The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      futuresV1MarketsInstrumentsUnmapped)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The unmapped instrument to retrieve on a specific market."
"instrument_status=:[QUERY] The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexV1HistoricalDays)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexV1HistoricalHours)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexV1HistoricalMessages)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"after_ts=:[QUERY] Unix timestamp in seconds of the earliest index message in the response"
"last_ccseq=:[QUERY] The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request."
"limit=:[QUERY] The maximum number of index messages to return"
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
"return_404_on_empty_response=true:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          "return_404_on_empty_response=false:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexV1HistoricalMessagesHour)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"hour_ts=:[QUERY] Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
"return_404_on_empty_response=true:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          "return_404_on_empty_response=false:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexV1HistoricalMinutes)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexV1LatestInstrumentMetadata)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instruments=:[QUERY] A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE"
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexV1LatestTick)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instruments=:[QUERY] A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME"
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexV1Markets)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexV1MarketsInstruments)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped instrument to retrieve on a specific market."
"instrument_status=:[QUERY] The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexV1MarketsInstrumentsUnmapped)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The unmapped instrument to retrieve on a specific market."
"instrument_status=:[QUERY] The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      newsV1ArticleList)
        local -a _op_arguments
        _op_arguments=(
                    "source_ids=:[QUERY] Get articles from specific sources; either by their ids or keys"
"lang=:[QUERY] The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)"
"categories=:[QUERY] News article categories to return"
"exclude_categories=:[QUERY] News article categories to exclude from results"
"to_ts=:[QUERY] Articles published on or before this timestamp"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      newsV1CategoryList)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      newsV1SourceList)
        local -a _op_arguments
        _op_arguments=(
                    "lang=:[QUERY] The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)"
"type=:[QUERY] RSS, API, TWITTER"
"status=:[QUERY] The status for the  article source entry. Allowed values: ACTIVE, INACTIVE"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      overviewV1HistoricalMarketcapAllAssetsDays)
        local -a _op_arguments
        _op_arguments=(
                    "groups=:[QUERY] When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      overviewV1HistoricalMarketcapAllAssetsHours)
        local -a _op_arguments
        _op_arguments=(
                    "groups=:[QUERY] When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      overviewV1HistoricalMarketcapFtwAssetsDays)
        local -a _op_arguments
        _op_arguments=(
                    "groups=:[QUERY] When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      overviewV1HistoricalMarketcapFtwAssetsHours)
        local -a _op_arguments
        _op_arguments=(
                    "groups=:[QUERY] When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      overviewV1LatestMarketcapAllTick)
        local -a _op_arguments
        _op_arguments=(
                    "groups=:[QUERY] When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      overviewV1LatestMarketcapFtwTick)
        local -a _op_arguments
        _op_arguments=(
                    "groups=:[QUERY] When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexCcV1HistoricalDays)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexCcV1HistoricalHours)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexCcV1HistoricalMessages)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"after_ts=:[QUERY] Unix timestamp in seconds of the earliest index message in the response"
"last_ccseq=:[QUERY] The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"limit=:[QUERY] The maximum number of index messages to return"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
"return_404_on_empty_response=true:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          "return_404_on_empty_response=false:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexCcV1HistoricalMessagesHour)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"hour_ts=:[QUERY] Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
"return_404_on_empty_response=true:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          "return_404_on_empty_response=false:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexCcV1HistoricalMinutes)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexCcV1LatestInstrumentMetadata)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instruments=:[QUERY] A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE"
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexCcV1LatestTick)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instruments=:[QUERY] A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME"
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexCcV1Markets)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexCcV1MarketsInstruments)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped instrument to retrieve on a specific market."
"instrument_status=:[QUERY] The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      indexCcV1MarketsInstrumentsUnmapped)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The unmapped instrument to retrieve on a specific market."
"instrument_status=:[QUERY] The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      spotV1HistoricalDays)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      spotV1HistoricalHours)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      spotV1HistoricalMinutes)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME"
"limit=:[QUERY] The number of data points to return"
"to_ts=:[QUERY] Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}"
"aggregate=:[QUERY] The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries"
"fill=true:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
          "fill=false:[QUERY] Boolean value, if set to false or 0 we will not return data points for periods with no trading activity."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      spotV1HistoricalOrderbookL2SnapshotMinute)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"minute_ts=:[QUERY] Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute."
"depth=:[QUERY] The number of top bids and asks to return."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      spotV1HistoricalTrades)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"after_ts=:[QUERY] Unix timestamp in seconds of the earliest trade in the response."
"last_ccseq=:[QUERY] The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request."
"limit=:[QUERY] The maximum number of trades to return"
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
"return_404_on_empty_response=true:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          "return_404_on_empty_response=false:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      spotV1HistoricalTradesHour)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first."
"hour_ts=:[QUERY] Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour."
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
"response_format=:[QUERY] The format of the data response in uppercase. It can be one of the following: JSON,CSV"
"return_404_on_empty_response=true:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          "return_404_on_empty_response=false:[QUERY] If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      spotV1LatestInstrumentMetadata)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instruments=:[QUERY] A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE"
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      spotV1LatestTick)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instruments=:[QUERY] A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first."
"groups=:[QUERY] When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME"
"mapping_priority=:[QUERY] The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      spotV1Markets)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      spotV1MarketsInstruments)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The mapped instrument to retrieve on a specific market."
"instrument_status=:[QUERY] The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      spotV1MarketsInstrumentsUnmapped)
        local -a _op_arguments
        _op_arguments=(
                    "market=:[QUERY] The exchange to obtain data from"
"instrument=:[QUERY] The unmapped instrument to retrieve on a specific market."
"instrument_status=:[QUERY] The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
    esac
    ;;

esac

return ret
