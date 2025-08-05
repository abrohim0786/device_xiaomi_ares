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


# Compile Twrp Recovery with Github Actions
```
only Supports TWRP  (14.1 is not ready yet) / 12.1 / 11 / 9.0
```
---
![twrp_jpg](https://s3.bmp.ovh/imgs/2024/10/07/7e8dccdad37f834d.jpg)
## Release Notes
```
= 2025-07-19
- fix problem with device tree link in release!

= 2025-05-06
- Update to Ubuntu-22.04 cuz github no longer supports ubuntu v20.04

= 2024-10-07
- fix some errors
- Optimize codes
- fix problems with vendor_boot
- fix Release issue

= 2024-09-22
- Now Supports TWRP 14

= 2024-09-05
- Include Recovery to tar for Samsung devices
- Include recovery installer zip
- LDCheck for checking missing dependencies.
- TWRP Allow non-Github/Gitlab remotes for device trees
- Clarify options in README
- Increase swap size for kernel inline builds
- Remove common tree input fields (not needed)
- Fix build with Omni manifests
- Update to ubuntu-20.04
- Updated to work with Android 12.1 AOSP minimal TWRP manifest
- Completely reconstruct the use logic to reduce the difficulty of use
- Optimize the parameter transfer part, now you can run multiple Workers at the same time
- TWRP compilation test passed

```

-----

## Output will be like this
![](https://s3.bmp.ovh/imgs/2024/10/07/830c7e6f9f983fac.jpg)

## Parameter Description
| Name | Description | Example |
| ------------ | -------------------- | ------------ |
| `MANIFEST_BRANCH` | Source branch | twrp-14 |
| `DEVICE_TREE_URL` | Device tree address | https://github.com/kinguser981/android_device_samsung_a05s.git |
| `DEVICE_TREE_BRANCH` | Device branch that you want to use for build (typically corresponds to the manifest branch) | android-14 |
| `DEVICE_PATH` | Device tree location for syncing, relative to workspace root (usually listed as "LOCAL_PATH" or "DEVICE_PATH" in BoardConfig.mk) | device/samsung/a05s |
| `DEVICE_NAME` | Model name (same as twrp_`<DEVICE_NAME>`.mk from device tree) | a05s |
| `DEVICE_MAKEFILE` | Name of device-specific makefile from tree (format: `<PREFIX>_<DEVICE_NAME>`) | twrp_a05s
| `BUILD_TARGET` | Build Target Partition (boot/recovery/vendor_boot) | recovery |
| `RECOVERY_INSTALLER` | Include recovery installer zip | Optional |
| `RECOVERY_TAR` | Recovery to tar for Samsung devices | Optional |

-----

## Usage Instructions

#### 1. Click 'Fork' in the upper right corner of this repo
![](https://s3.bmp.ovh/imgs/2024/09/07/acd37b59bde6971e.png)
#### 2. After waiting for the automatic redirection, you will see your own username
## Building the Recovery
#### 3. Click on 'Actions' then Click no 'TWRP Recovery Builder 2024'
![](https://s3.bmp.ovh/imgs/2024/09/07/4e0db9b997ea3522.png)
#### 4. Click 'Run workflow', choose the branch for the recovery that you want to build, and fill in according to the above 'Parameter Description'
![](https://s3.bmp.ovh/imgs/2024/09/07/29a2d0acf63c6e4f.png)
#### 5. After filling in, click 'Run workflow' to start running

-----

## Compilation results
Can be downloaded at [Release](../../releases)

-----
## Reference and Credits
- https://github.com/that1
- https://github.com/TeamWin
- https://github.com/cd-Crypton
- https://github.com/azwhikaru
- And to all Contributors in every repositories and scripts I used.




> 🛠️ Optimized for TWRP Development  
> 🧩 Compatible with Dynamic Partitions & A/B Seamless OTA  
> ❤️ by **ツ๛abrohim๛**

---
