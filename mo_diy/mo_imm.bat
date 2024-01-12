cd d:/github/

git clone https://github.com/immortalwrt/immortalwrt.git imm
xcopy imm\package\emortal\default-settings mo_diy\package\emortal\default-settings /s /e /y

git clone https://github.com/immortalwrt/packages.git ipackages
xcopy ipackages\utils\coremark mo_diy\package\new\coremark /s /e /y

git clone https://github.com/immortalwrt/luci.git iluci
xcopy  iluci\modules\luci-base mo_diy\feeds\luci\modules\luci-base  /s /e /y
xcopy  iluci\modules\luci-mod-status mo_diy\feeds\luci\modules\luci-mod-status  /s /e /y