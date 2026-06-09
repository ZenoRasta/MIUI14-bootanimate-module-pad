# MIUI14-bootanimate-module-pad

[English](#english) · [中文](#中文)

因为我很懒所以用了cursor打辅助，但是这玩意不是vibe的是我手搓的
（MIUI14的动画那么好看怎么没有人做模块的）

手机版 [MIUI14-bootanimate-module](https://github.com/ZenoRasta/MIUI14-bootanimate-module)

---

## 中文

将澎湃3开机动画替换为经典 **MIUI 14** 样式的 Magisk/KernelSU 模块，平板四方向适配版。

### 特性

- **无侵入挂载**：通过Magisk/KernelSU Magic Mount覆盖`bootanimation01~04.zip`，不修改`/system`分区实体文件
- **MIUI 14 样式动画**：提取自 REDMI K30 Pro Zoom Edition，按屏幕方向提供四套资源
- **四方向映射**：
  - `bootanimation01.zip` → 270°（2340×1080）
  - `bootanimation02.zip` → 0°（1080×2340）
  - `bootanimation03.zip` → 90° 顺时针（2340×1080）
  - `bootanimation04.zip` → 180°（1080×2340）
- **多路径兼容**：主路径 `/system/product/media/bootanimation0{1..4}.zip`；`post-fs-data.sh` 对以下备用路径自动 bind mount 兜底：
  - `/system/product/media/bootanimation0{1..4}.zip`
  - `/system_ext/media/bootanimation0{1..4}.zip`
  - `/product/media/bootanimation0{1..4}.zip`

### 系统要求

| 项目 | 要求 |
|------|------|
| Root 实现 | Magisk v20.4+或KernelSU |
| 目标系统 | HyperOS 3 平板届使用 `bootanimation01~04.zip` 读取路径的 ROM） |

### 安装

1. 从 [Releases](https://github.com/ZenoRasta/MIUI14-bootanimate-module-pad/releases) 下载最新 Release（不是下载源码 zip！不然活该装不上）
2. 在Magisk/Ksu中从本地安装模块，选择从Release下载的zip
3. 安装完成后重启设备

### 卸载

在Magisk/KernelSU中禁用或卸载本模块，重启恢复系统原装开机动画

### 开放源代码许可

本项目采用 [GNU General Public License v2.0](LICENSE)。

---

## English

A Magisk / KernelSU module that replaces the **HyperOS 3** boot animation with the classic **MIUI 14** style — **tablet edition with four orientation variants**.

Phone version → [MIUI14-bootanimate-module](https://github.com/ZenoRasta/MIUI14-bootanimate-module)

### Features

- **Systemless overlay**: Uses Magisk / KernelSU Magic Mount to override `bootanimation01~04.zip` without modifying the physical `/system` partition
- **Classic MIUI 14 animation**: Extracted from REDMI K30 Pro Zoom Edition, with four assets mapped to screen orientation
- **Orientation mapping**:
  - `bootanimation01.zip` → 270° (2340×1080)
  - `bootanimation02.zip` → 0° (1080×2340)
  - `bootanimation03.zip` → 90° CW (2340×1080)
  - `bootanimation04.zip` → 180° (1080×2340)
- **Multi-path fallback**: Primary path `/system/product/media/bootanimation0{1..4}.zip`; `post-fs-data.sh` bind-mounts the same assets to alternate paths when present:
  - `/system/product/media/bootanimation0{1..4}.zip`
  - `/system_ext/media/bootanimation0{1..4}.zip`
  - `/product/media/bootanimation0{1..4}.zip`

### Requirements

| Item | Requirement |
|------|-------------|
| Root | Magisk **v20.4+** or KernelSU (Magisk module format) |
| Target OS | HyperOS 3 tablets using `bootanimation01~04.zip` paths |

### Installation

1. Download the latest Release ZIP from [Releases](https://github.com/ZenoRasta/MIUI14-bootanimate-module-pad/releases) — **not** the source code archive
2. In Magisk / KernelSU Manager: **Modules → Install from storage**, select the ZIP
3. **Reboot** your device

### Uninstallation

Disable or remove the module in Magisk / KernelSU, then reboot to restore the stock boot animation.

### License

This project is licensed under the [GNU General Public License v2.0](LICENSE).
