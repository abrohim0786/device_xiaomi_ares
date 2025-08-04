<!-- 🌈 Animated Rainbow Typing Banner -->
<p align="center">
  <img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&size=25&pause=1000&color=00F0FF&vCenter=true&center=true&width=850&lines=ツ๛abrohim๛+-+TWRP+Tree+for+Redmi+K40+Gaming;POCO+F3+GT+%7C+Codename:+ares+%2F+aresin;MediaTek+Dimensity+1200+%7C+Virtual+A%2FB+Partitions;Fully+Open+Source+Project+🔥;Maintained+by:+ツ๛abrohim๛+%F0%9F%91%BE" />
</p>

![OFRP](https://i.ibb.co/4WgF7pR/banner-2.png "OFRP")

<h1 align="center">⚡ツ๛abrohim๛ Presents - TWRP Device Tree⚡</h1>
<h3 align="center">📱 Xiaomi Redmi K40 Gaming / POCO F3 GT</h3>
<h4 align="center"><code>Codename: ares / aresin</code></h4>

<p align="center">
  <img src="https://fdn2.gsmarena.com/vv/pics/xiaomi/xiaomi-poco-f3-gt-1.jpg" alt="Poco F3 GT" width="300"/>
</p>

---

## 📦 Device Specifications

| 🔧 **Parameter**        | 📲 **Details**                                      |
|------------------------|----------------------------------------------------|
| 🏷️ **Brand**            | Xiaomi                                             |
| 📱 **Model**            | Redmi K40 Gaming / POCO F3 GT                      |
| 🧬 **Codename**         | `ares` / `aresin`                                  |
| 📅 **Release Year**     | 2021                                               |
| 🔲 **Partition Layout** | Virtual A/B • Dynamic Partitions                   |
| 💿 **Storage Type**     | UFS 3.1                                            |

---

## 🧠 Hardware Overview

| 💡 **Component** | ⚙️ **Specification**                                  |
|------------------|--------------------------------------------------------|
| 🔧 **Chipset**    | MediaTek Dimensity 1200 (MT6893)                       |
| 🧠 **CPU**        | Octa-core (1x3.0 GHz A78 + 3x2.6 GHz A78 + 4x2.0 GHz A55) |
| 🎮 **GPU**        | ARM Mali-G77 MC9                                       |
| 🔋 **Battery**    | 5065 mAh • 67W Fast Charging                           |
| 📟 **Display**    | 6.67" FHD+ AMOLED • 120Hz • HDR10+                     |
| 📦 **RAM Options**| 6GB / 8GB / 12GB                                       |

---

<p align="center">
  <img src="https://img.shields.io/badge/Chipset-Dimensity%201200-orange?style=for-the-badge&logo=mediatek"/>
  <img src="https://img.shields.io/badge/Partition-Virtual%20A/B-blue?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Display-AMOLED%20FHD%2B%20%7C%20120Hz-purple?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Battery-5065mAh%20%2F%2067W-green?style=for-the-badge"/>
</p>


# Status
Current state of features (from [here](https://twrp.me/faq/OfficialMaintainer.html)):

### Blocking checks
- [ √ ] Correct screen/recovery size
- [ √ ] Working Touch, screen
- [ √ ] Backup to internal/microSD
- [ √ ] Restore from internal/microSD
- [ √ ] reboot to system
- [ √ ] ADB

### Medium checks
- [ √ ] update.zip sideload
- [ √ ] UI colors (red/blue inversions)
- [ √ ] Screen goes off and on
- [ √ ] F2FS/EXT4 Support, exFAT/NTFS where supported
- [ √ ] all important partitions listed in mount/backup lists
- [ √ ] backup/restore to/from external (USB-OTG) storage (not supported by the device)
- [ √ ] backup/restore to/from adb (https://gerrit.omnirom.org/#/c/15943/)
- [ √ ] decrypt /data
- [ √ ] Correct date

### Minor checks
- [ √ ] MTP export
- [ √ ] reboot to bootloader
- [ √ ] reboot to recovery
- [ √ ] poweroff
- [ √ ] battery level
- [ √ ] temperature
- [ √ ] encrypted backups
- [ √ ] input devices via USB (USB-OTG) - keyboard, mouse and disks (not supported by the device)
- [ × ] USB mass storage export
- [ √ ] set brightness
- [ × ] vibrate
- [ √ ] screenshot
- [ × ] partition SD card


# Building
```bash
source build/envsetup.sh
lunch twrp_ares-eng
mka bootimage -j$(nproc --all)
```

# Flashing
Follow [this](https://twrp.me/faq/OfficialMaintainer.html) guide.


---

> 🛠️ Optimized for TWRP Development  
> 🧩 Compatible with Dynamic Partitions & A/B Seamless OTA  
> ❤️ by **ツ๛abrohim๛**

---
