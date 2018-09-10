; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Autopsy_Python_Plugins"
!define PRODUCT_VERSION "1.1"
;!define PRODUCT_PUBLISHER "Redwolf Computer Forensics"
;!define PRODUCT_WEB_SITE "http://RedWolfComputerForensics.com"
;!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\MFT_Parser_Gui.exe"
;!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
;!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"
!define MUI_WELCOMEFINISHPAGE_BITMAP "Welcome_Finish.bmp"
!define MUI_HEADERIMAGE
!define MUI_HEADERIMAGE_RIGHT
!define MUI_HEADERIMAGE_BITMAP "Header_Image.bmp"


; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "License_Agreement.txt"
; Components page
!insertmacro MUI_PAGE_COMPONENTS
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
;!define MUI_FINISHPAGE_RUN "$INSTDIR\MFT_Parser_Gui.exe"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
;!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "Autopsy_Python_Plugins.exe"
InstallDir "$APPDATA\Autopsy\Python_modules"
;InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
;ShowUnInstDetails show

Section "Amazon Echosystem Parser" SEC01
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Amazon_Echosystem_Parser"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Amazon_Echosystem_Parser"
  SetOverwrite try
  File "..\Amazon_Echosystem_Parser\Alexa_Creates.SQL"
  File "..\Amazon_Echosystem_Parser\Alexa_DB.db3"
  File "..\Amazon_Echosystem_Parser\Amazon_Echosystem_Parser.py"
  File "..\Amazon_Echosystem_Parser\Amazon_Echosystem_Parser_py_GPL_License.txt"

SectionEnd
  
Section "CCM_RecentlyUsedApps" SEC02
  CreateDirectory "$APPDATA\Autopsy\Python_modules\CCM_RecentlyUsedApps"
  SetOutPath "$APPDATA\Autopsy\Python_modules\CCM_RecentlyUsedApps"
  SetOverwrite try
  File "..\CCM_RecentlyUsedApps\CCM_RecentlyUsedApps.py"
  File "..\CCM_RecentlyUsedApps\show_ccm_recentlyusedapps.exe"
  File "..\CCM_RecentlyUsedApps\CCM_RecentlyUsedAppst_py_GPL_License.txt"
  File "..\CCM_RecentlyUsedApps\show_ccm_recentlyusedapps_GPL_License.txt"

SectionEnd

Section "Cuckoo" SEC03
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Cuckoo"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Cuckoo"
  SetOverwrite try
  File "..\Cuckoo\cuckoo.py"
  File "..\Cuckoo\cuckoo_api.exe"
  File "..\Cuckoo\gui_settings.db3"

SectionEnd
  
Section "File History" SEC04
  CreateDirectory "$APPDATA\Autopsy\Python_modules\FileHistory"
  SetOutPath "$APPDATA\Autopsy\Python_modules\FileHistory"
  SetOverwrite try
  File "..\FileHistory\Export_FileHistory.exe"
  File "..\FileHistory\export_FileHistory_Exe_License.txt"
  File "..\FileHistory\Export_FileHistory_records.exe"
  File "..\FileHistory\export_FileHistory_records_Exe_License.txt"
  File "..\FileHistory\Parse_FileHistory.py"
  File "..\FileHistory\Parse_FileHistory_py_GPL_License.txt"

SectionEnd

Section "Jump_List_AD" SEC05
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Jump_List_AD"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Jump_List_AD"
  SetOverwrite try
  File "..\Jump_List_AD\export_jl_ad.exe"
  File "..\Jump_List_AD\JumpList_AD.py"
  File "..\Jump_List_AD\Jump_List_App_Ids.db3"

SectionEnd
  
Section "MacFSEvents" SEC06
  CreateDirectory "$APPDATA\Autopsy\Python_modules\MacFSEvents"
  SetOutPath "$APPDATA\Autopsy\Python_modules\MacFSEvents"
  SetOverwrite try
  File "..\MacFSEvents\fseparser_v2.1.exe"
  File "..\MacFSEvents\fsevents_sql.db3"
  File "..\MacFSEvents\License_FSEParser_v2.1.exe.txt"
  File "..\MacFSEvents\MacFSEvents.py"
  File "..\MacFSEvents\MacFSEvents_py_GPL_License.txt"
  File "..\MacFSEvents\sample_SQL_Insert_For_Database.sql"

SectionEnd

Section "MacOSX Recent" SEC07
  CreateDirectory "$APPDATA\Autopsy\Python_modules\MacOSX_Recent"
  SetOutPath "$APPDATA\Autopsy\Python_modules\MacOSX_Recent"
  SetOverwrite try
  File "..\MacOSX_Recent\Creates.sql"
  File "..\MacOSX_Recent\MacOSX_Recent.py"
  File "..\MacOSX_Recent\MacOSX_Recent_py_GPL_License.txt"
  File "..\MacOSX_Recent\Macos_recents.db3"
  File "..\MacOSX_Recent\plist2db.exe"
  File "..\MacOSX_Recent\plist2db_GPL_License.txt"
  File "..\MacOSX_Recent\plist2_safari_GPL_License.txt"
  File "..\MacOSX_Recent\plist_safari.exe"

SectionEnd
  
Section "MacOSX Safari" SEC08
  CreateDirectory "$APPDATA\Autopsy\Python_modules\MacOSX_Safari"
  SetOutPath "$APPDATA\Autopsy\Python_modules\MacOSX_Safari"
  SetOverwrite try
  File "..\MacOSX_Safari\MacOSX_Safari.py"
  File "..\MacOSX_Safari\MacOSX_Safari_py_GPL_License.txt"
  File "..\MacOSX_Safari\plist2_safari_GPL_License.txt"
  File "..\MacOSX_Safari\plist_safari.exe"

SectionEnd
  
Section "Plist Parser" SEC09
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Parse_Plist"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Parse_Plist"
  SetOverwrite try
  File "..\Parse_Plist\Parse_Plist.py"
  File "..\Parse_Plist\Parse_Plist_py_GPL_License.txt"
  File "..\Parse_Plist\plist2db.exe"
  File "..\Parse_Plist\plist2db_GPL_License.txt"

SectionEnd
  
Section "SAM Parse" SEC10
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Parse_SAM"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Parse_SAM"
  SetOverwrite try
  File "..\Parse_SAM\samparse.exe"
  File "..\Parse_SAM\SAMParse.py"
  File "..\Parse_SAM\Samparse_Exe_License.txt"
  File "..\Parse_SAM\Samparse_py_GPL_License.txt"

SectionEnd
  
Section "Parse Shellbags" SEC11
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Parse_Shellbags"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Parse_Shellbags"
  SetOverwrite try
  File "..\Parse_Shellbags\shellbags.exe"
  File "..\Parse_Shellbags\shellbags_exe_License.txt"
  File "..\Parse_Shellbags\Shellbag_Parser.py"
  File "..\Parse_Shellbags\Shellbag_Parser_py_GPL_License.txt"

SectionEnd

Section "Parse SQLite Databases" SEC12
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Parse_SQLite_Databases"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Parse_SQLite_Databases"
  SetOverwrite try
  File "..\Parse_SQLite_Databases\ParseSQLiteDBs.py"
  File "..\Parse_SQLite_Databases\ParseSQLiteDBs_py_GPL_License.txt"

SectionEnd

Section "Parse SQLite Deleted Records" SEC13
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Parse_SQLite_Del_Records"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Parse_SQLite_Del_Records"
  SetOverwrite try
  File "..\Parse_SQLite_Del_Records\ParseSQLiteDBDelRecords.py"
  File "..\Parse_SQLite_Del_Records\ParseSQLiteDBDelRecords_py_GPL_License.txt"
  File "..\Parse_SQLite_Del_Records\sqlparse_v2_autopsy.exe"
  File "..\Parse_SQLite_Del_Records\sqlparse_v2_autopsy_exe_GPL_License.txt"

SectionEnd

Section "Parse USNJ" SEC14
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Parse_USNJ"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Parse_USNJ"
  SetOverwrite try
  File "..\Parse_USNJ\parseusn.exe"
  File "..\Parse_USNJ\parseusn_Exe_License.txt"
  File "..\Parse_USNJ\Parse_Usnj.py"
  File "..\Parse_USNJ\Parse_Usnj_py_GPL_License.txt"

SectionEnd

Section "Plaso" SEC15
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Plaso"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Plaso"
  SetOverwrite try
  File "..\Plaso\GUI_Settings.db3"
  File "..\Plaso\Plaso.py"
  File "..\Plaso\Plaso_Import.py"
  File "..\Plaso\Plaso_Import_py_GPL_License.txt"
  File "..\Plaso\Plaso_py_GPL_License.txt"

SectionEnd
  
Section "Process Amcache" SEC16
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Process_Amcache"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Process_Amcache"
  SetOverwrite try
  File "..\Process_Amcache\amcache_parser.exe"
  File "..\Process_Amcache\amcache_parser_Exe_License.txt"
  File "..\Process_Amcache\ParseAmcache.py"
  File "..\Process_Amcache\ParseAmcache_py_GPL_License.txt"

SectionEnd

Section "Process EVTX" SEC17
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Process_EVTX"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Process_EVTX"
  SetOverwrite try
  File "..\Process_EVTX\export_evtx.exe"
  File "..\Process_EVTX\export_evtx_Exe_License.txt"
  File "..\Process_EVTX\ParseEvtx.py"
  File "..\Process_EVTX\ParseEvtx_py_GPL_License.txt"

SectionEnd
  
Section "Process EVTX By EventID" SEC18
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Process_EVTX_By_EventID"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Process_EVTX_By_EventID"
  SetOverwrite try
  File "..\Process_EVTX_By_EventID\export_evtx.exe"
  File "..\Process_EVTX_By_EventID\export_evtx_Exe_License.txt"
  File "..\Process_EVTX_By_EventID\Parse_Evtx_By_EventID.py"
  File "..\Process_EVTX_By_EventID\Parse_Evtx_By_EventID_py_GPL_License.txt"

SectionEnd
  
Section "Process Extract VSS" SEC19
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Process_Extract_VSS"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Process_Extract_VSS"
  SetOverwrite try
  File "..\Process_Extract_VSS\Process_Extract_VS.py"
  File "..\Process_Extract_VSS\process_extract_vss.exe"
  File "..\Process_Extract_VSS\Process_Extract_VSS_exe_License_Agreement.txt"
  File "..\Process_Extract_VSS\Process_Extract_VS_py_License_Agreement.txt"

SectionEnd
  
Section "Process Prefetch Files" SEC20
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Process_Prefetch_Files_V41"
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Process_Prefetch_Files_V41\Prefetch_Parser_Autopsy Libs"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Process_Prefetch_Files_V41"
  SetOverwrite try
  File "..\Process_Prefetch_Files_V41\MSCompression.dll"
  File "..\Process_Prefetch_Files_V41\MSCompression_dll_License_gpl.txt"
  File "..\Process_Prefetch_Files_V41\ParsePrefetch_py_GPL_License.txt"
  File "..\Process_Prefetch_Files_V41\ParsePrefetch_v41.py"
  File "..\Process_Prefetch_Files_V41\Prefetch_Parser_Autopsy.exe"
  File "..\Process_Prefetch_Files_V41\Prefetch_Parser_Autopsy_Exe_License.txt"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Process_Prefetch_Files_V41\Prefetch_Parser_Autopsy Libs"
  SetOverwrite try
  File "..\Process_Prefetch_Files_V41\Prefetch_Parser_Autopsy Libs\msvcp120.dll"
  File "..\Process_Prefetch_Files_V41\Prefetch_Parser_Autopsy Libs\msvcr120.dll"
  File "..\Process_Prefetch_Files_V41\Prefetch_Parser_Autopsy Libs\REALSQLDatabase.dll"
  File "..\Process_Prefetch_Files_V41\Prefetch_Parser_Autopsy Libs\XojoConsoleFramework32.dll"
  
SectionEnd

Section "Process SRUDB" SEC21
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Process_SRUDB"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Process_SRUDB"
  SetOverwrite try
  File "..\Process_SRUDB\export_srudb.exe"
  File "..\Process_SRUDB\export_SRUDB_Exe_License.txt"
  File "..\Process_SRUDB\ParseSRUDB.py"
  File "..\Process_SRUDB\ParseSRUDB_py_GPL_License.txt"

SectionEnd

Section "Shimcache Parser" SEC22
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Shimcache_parser"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Shimcache_parser"
  SetOverwrite try
  File "..\Shimcache_parser\shimcache_parser.exe"
  File "..\Shimcache_parser\Shimcache_Parser.py"
  File "..\Shimcache_parser\shimcache_parser_exe_License.txt"
  File "..\Shimcache_parser\Shimcache_Parser_py_GPL_License.txt"

SectionEnd

Section "Thumbcache Parser" SEC23
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Thumbcache_parser"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Thumbcache_parser"
  SetOverwrite try
  File "..\Thumbcache_parser\Thumbcache_parser.py"
  File "..\Thumbcache_parser\Thumbcache_parser_py_GPL_License.txt"
  File "..\Thumbcache_parser\thumbcache_viewer_cmd.exe"
  File "..\Thumbcache_parser\thumbcache_viewer_cmd.exe_GPL_License.txt"

SectionEnd

Section "Thumbs.db Parser" SEC24
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Thumbs_parser"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Thumbs_parser"
  SetOverwrite try
  File "..\Thumbs_parser\Thumbs_parser.py"
  File "..\Thumbs_parser\Thumbs_parser_py_GPL_License.txt"
  File "..\Thumbs_parser\thumbs_viewer.exe"
  File "..\Thumbs_parser\thumbs_viewer.exe_GPL_License.txt"

SectionEnd

Section "Volatility" SEC25
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Volatility"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Volatility"
  SetOverwrite try
  File "..\Volatility\GUI_Settings.db3"
  File "..\Volatility\DB_Insert_Statements.sql"
  File "..\Volatility\Volatility.py"
  File "..\Volatility\Volatility_Convert.py"
  File "..\Volatility\Volatility_Convert_py_GPL_License.txt"
  File "..\Volatility\Volatility_Dump.py"
  File "..\Volatility\Volatility_Dump_py_GPL_License.txt"
  File "..\Volatility\Volatility_py_GPL_License.txt"

SectionEnd
  
Section "Webcache" SEC26
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Webcache"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Webcache"
  SetOverwrite try
  File "..\Webcache\Export_Webcache.exe"
  File "..\Webcache\export_Webcache_Exe_License.txt"
  File "..\Webcache\Export_Webcache_records.exe"
  File "..\Webcache\export_Webcache_records_Exe_License.txt"
  File "..\Webcache\Parse_Webcache.py"
  File "..\Webcache\Parse_Webcache_py_GPL_License.txt"

SectionEnd

Section "Windows Internals" SEC27
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Windows_Internals"
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Windows_Internals"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Windows_Internals"
  SetOverwrite try
  File "..\Windows_Internals\Export_FileHistory.exe"
  File "..\Windows_Internals\export_FileHistory_Exe_License.txt"
  File "..\Windows_Internals\Export_FileHistory_records.exe"
  File "..\Windows_Internals\export_FileHistory_records_Exe_License.txt"
  File "..\Windows_Internals\export_jl_ad.exe"
  File "..\Windows_Internals\Export_Webcache.exe"
  File "..\Windows_Internals\export_Webcache_Exe_License.txt"
  File "..\Windows_Internals\Export_Webcache_records.exe"
  File "..\Windows_Internals\export_Webcache_records_Exe_License.txt"
  File "..\Windows_Internals\Jump_List_App_Ids.db3"
  File "..\Windows_Internals\MSCompression.dll"
  File "..\Windows_Internals\MSCompression_dll_License_gpl.txt"
  File "..\Windows_Internals\parseusn.exe"
  File "..\Windows_Internals\parseusn_Exe_License.txt"
  File "..\Windows_Internals\Prefetch_Parser_Autopsy.exe"
  File "..\Windows_Internals\Prefetch_Parser_Autopsy_Exe_License.txt"
  File "..\Windows_Internals\samparse.exe"
  File "..\Windows_Internals\Samparse_Exe_License.txt"
  File "..\Windows_Internals\shellbags.exe"
  File "..\Windows_Internals\shellbags_exe_License.txt"
  File "..\Windows_Internals\shimcache_parser.exe"
  File "..\Windows_Internals\shimcache_parser_exe_License.txt"
  File "..\Windows_Internals\show_ccm_recentlyusedapps.exe"
  File "..\Windows_Internals\show_ccm_recentlyusedapps_GPL_License.txt"
  File "..\Windows_Internals\Windows_Internals.py"
  File "..\Windows_Internals\Windows_Internals_py_GPL_License.txt"

  SetOutPath "$APPDATA\Autopsy\Python_modules\Windows_Internals\Prefetch_Parser_Autopsy Libs"
  SetOverwrite try
  File "..\Windows_Internals\Prefetch_Parser_Autopsy Libs\msvcp120.dll"
  File "..\Windows_Internals\Prefetch_Parser_Autopsy Libs\msvcr120.dll"
  File "..\Windows_Internals\Prefetch_Parser_Autopsy Libs\REALSQLDatabase.dll"
  File "..\Windows_Internals\Prefetch_Parser_Autopsy Libs\XojoConsoleFramework32.dll"

SectionEnd

Section "Create Preview Data Container" SEC28
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Create_Preview_Data_Container"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Create_Preview_Data_Container"
  SetOverwrite try
  File "..\Create_Preview_Data_Container\Create_DB_Script.sql"
  File "..\Create_Preview_Data_Container\Create_Preview_Data_Container.py"
  File "..\Create_Preview_Data_Container\Create_Preview_Data_Container_py_GPL_License.txt"
  File "..\Create_Preview_Data_Container\File_Extensions.db3"

SectionEnd
  
Section "Hash Images" SEC29
  CreateDirectory "$APPDATA\Autopsy\Python_modules\hash_images"
  SetOutPath "$APPDATA\Autopsy\Python_modules\hash_images"
  SetOverwrite try
  File "..\hash_images\hash_images.py"
  File "..\hash_images\hash_images_py_GPL_License.txt"

SectionEnd
  
Section "Process APPX Programs" SEC30
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Process_Appx_Programs"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Process_Appx_Programs"
  SetOverwrite try
  File "..\Process_Appx_Programs\Process_Appx_Programs.py"
  File "..\Process_Appx_Programs\Process_Appx_Programs_py_GPL_License.txt"

SectionEnd
  
Section "Process Facebook Chats" SEC31
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Process_Facebook_Chats"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Process_Facebook_Chats"
  SetOverwrite try
  File "..\Process_Facebook_Chats\Process_Facebook_Chats.py"
  File "..\Process_Facebook_Chats\Process_Facebook_Chats_py_GPL_License.txt"
  File "..\Process_Facebook_Chats\fb_chat.exe"
  File "..\Process_Facebook_Chats\fb_chat_exe_GPL_License.txt"

SectionEnd
  
Section "Process Windows Mail" SEC32
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Process_Windows_Mail"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Process_Windows_Mail"
  SetOverwrite try
  File "..\Process_Windows_Mail\Process_Windows_Mail.py"
  File "..\Process_Windows_Mail\Process_Windows_Mail_py_GPL_License.txt"
  File "..\Process_Windows_Mail\export_esedb.exe"
  File "..\Process_Windows_Mail\export_esedb_exe_GPL_License.txt"
  File "..\Process_Windows_Mail\export_esedb_records.exe"
  File "..\Process_Windows_Mail\export_esedb_records_exe_GPL_License.txt"

SectionEnd
  
Section "Spotlight Parser" SEC33
  CreateDirectory "$APPDATA\Autopsy\Python_modules\Spotlight_Parser"
  SetOutPath "$APPDATA\Autopsy\Python_modules\Spotlight_Parser"
  SetOverwrite try
  File "..\Spotlight_Parser\Spotlight_Parser.py"
  File "..\Spotlight_Parser\Spotlight_Parser_py_GPL_License.txt"
  File "..\Spotlight_Parser\Spotlight_Parser.exe"
  File "..\Spotlight_Parser\Spotlight_Parser_exe_GPL_License.txt"

SectionEnd
  
; Section descriptions
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC01} "Amazon Echosystem Parser"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC02} "CCM RecentlyUsedApps"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC28} "Create Preview Data Container"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC03} "Cuckoo"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC04} "File History"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC29} "Hash Images"  
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC05} "Jump_List_AD"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC06} "MacFSEvents"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC07} "MacOSX Recent"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC08} "MacOSX Safari"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC09} "Plist Parser"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC10} "SAM Parse"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC11} "Parse Shellbags"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC12} "Parse SQLite Databases"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC13} "Parse SQLite Deleted Records"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC14} "Parse USNJ"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC15} "Plaso"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC16} "Process Amcache"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC30} "Process APPX Programs"  
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC17} "Process EVTX"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC18} "Process EVTX By EventID"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC19} "Process Extract VSS"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC31} "Process Facebook Chats"  
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC20} "Process Prefetch Files"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC21} "Process SRUDB"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC32} "Process Windows Mail"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC22} "Shimcache Parser"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC33} "Spotlight Parser"  
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC23} "Thumbcache Parser"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC24} "Thumbs.db Parser"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC25} "Volatility"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC26} "Webcache"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC27} "Windows Internals"
  
!insertmacro MUI_FUNCTION_DESCRIPTION_END

