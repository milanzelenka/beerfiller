# 🍺 BeerFiller

An open-source ESPHome based controller for an automated counter-pressure beer bottle filler.

BeerFiller is designed for homebrewers and small craft breweries looking for a flexible, reliable and fully configurable filling controller built on inexpensive off-the-shelf hardware. The project is based on ESPHome and integrates seamlessly with Home Assistant while remaining fully autonomous during the filling process.

---

## Features

* 🍺 Automatic bottle filling using IFM magnetic-inductive flow meters
* 🍺 Supports up to **3 independent filling heads**
* 🍺 Counter-pressure filling
* 🍺 Automatic purge, filling and draining valve control
* 🍺 Bottle volume presets (330 ml, 500 ml, 750 ml, 1 l, 1.5 l)
* 🍺 Custom bottle volume support
* 🍺 Automatic fill stop based on measured volume
* 🍺 Manual filling mode
* 🍺 LED status indication
* 🍺 Home Assistant integration
* 🍺 Fully configurable in ESPHome YAML
* 🍺 No external firmware or custom components required

---

## Hardware

Current hardware configuration:

* Kincony KC868-A16 (ESP32)
* IFM SM6000 magnetic-inductive flow meter
* 24 V solenoid valves
* PC817 optocoupler inputs
* Illuminated push buttons
* 24 V power supply

---

## Filling Process

Typical filling sequence:

1. Purge bottle with CO₂
2. Open beer valve
3. Measure dispensed volume
4. Automatically stop at target volume
5. Open drain valve
6. Ready for next bottle

The filling sequence is entirely executed inside ESPHome, ensuring deterministic behaviour without requiring Home Assistant connectivity.

---

## Bottle Volume Presets

Selectable bottle sizes:

| Preset |      Volume |
| ------ | ----------: |
| Off    | Manual mode |
| 330 ml |      330 ml |
| 500 ml |      500 ml |
| 750 ml |      750 ml |
| 1 l    |     1000 ml |
| 1.5 l  |     1500 ml |

An additional hidden configuration value allows entering any custom bottle volume if required.

---

## Home Assistant

BeerFiller exposes only the entities required for daily operation while keeping implementation-specific sensors internal to ESPHome.

Home Assistant is used primarily for:

* monitoring
* configuration
* diagnostics

The filling process itself remains fully operational even if Home Assistant becomes unavailable.

---

## Project Status

🚧 **Work in Progress**

The controller is under active development and continuously tested on a real three-head beer filling machine.

Future development includes:

* Flow calibration wizard
* Cleaning/CIP mode
* Recipe profiles
* Statistics
* Maintenance counters
* Multi-device support

---

## License

This project is released under the MIT License.
