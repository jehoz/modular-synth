# MK-VCO KiCad Project

This repository contains KiCad project files for an **MK-VCO** (Voltage Controlled Oscillator) electronic circuit design.

## Run a KiCad Viewer with Docker

Use the provided Dockerfile and docker-compose.yml to build and run a KiCad environment with VNC and noVNC for web-based access, based on https://hub.docker.com/r/kicad/kicad

```bash
docker-compose up --build
```

- Access the KiCad environment by opening a web browser and navigating to `http://localhost:8080` (VNC password: `kicad`)
    - right click on the desktop, open a terminal, and run:
    ```bash
    kicad /workspace/mk_vco.kicad_pro
    ```


## What is KiCad?

KiCad is free, open-source software for designing electronic circuits and printed circuit boards (PCBs). These files are **not code** in the traditional programming sense—they're design files that describe electronic circuits, components, and PCB layouts.

## File Types Explained

### Project Files (.kicad_pro)
- `mk_vco.kicad_pro` - Main project configuration file
- `mk_vco_JUST_PCB.kicad_pro` - PCB-only version project configuration
- `mk_vco_JUST_PANEL.kicad_pro` - Panel-only version project configuration

These files contain project settings, design rules, and preferences.

### Schematic Files (.kicad_sch)
- `mk_vco.kicad_sch` - Main circuit schematic
- `mk_vco_JUST_PCB.kicad_sch` - PCB-only version schematic

These files contain the electrical circuit diagrams showing how components are connected.

### PCB Layout Files (.kicad_pcb)
- `mk_vco.kicad_pcb` - Main PCB layout
- `mk_vco_JUST_PCB.kicad_pcb` - PCB-only version layout
- `mk_vco_JUST_PANEL.kicad_pcb` - Panel-only version layout

These files define the physical layout of the printed circuit board, including component placement and copper traces.

### Local Settings (.kicad_prl)
- `mk_vco.kicad_prl` - Local project settings
- `mk_vco_JUST_PCB.kicad_prl` - PCB-only local settings

These files store user-specific preferences and window positions (typically not shared in version control).

## Project Variants

This project appears to have three variants:

1. **mk_vco** - Complete project (main version)
2. **mk_vco_JUST_PCB** - PCB-only version (circuit board without panel)
3. **mk_vco_JUST_PANEL** - Panel-only version (front panel design)

## How to Open These Files

1. **Download KiCad**: Get the free software from [https://www.kicad.org/](https://www.kicad.org/)
2. **Install KiCad**: Follow the installation instructions for your operating system
3. **Open Project**: Launch KiCad and open any of the `.kicad_pro` files
4. **View Schematic**: Click "Schematic Editor" to see the circuit diagram
5. **View PCB**: Click "PCB Editor" to see the board layout

## What This Project Is

A **VCO (Voltage Controlled Oscillator)** is an electronic circuit that generates oscillating signals (waveforms) with a frequency that can be controlled by an input voltage. VCOs are commonly used in synthesizers, audio equipment, and other electronic music devices.

## File Format

KiCad files use:
- **JSON** format for project files (.kicad_pro)
- **S-expression** format for schematics (.kicad_sch) and PCB layouts (.kicad_pcb)

These are text-based formats that can be opened in any text editor, but they're best viewed and edited in KiCad.

## Contributing

To modify this project, you'll need to use KiCad's graphical interface rather than editing the files directly. The file formats are complex and contain precise coordinates, component references, and electrical connection data.

## License

[Add your license information here]

---

**Note**: If you're new to electronics design, KiCad has excellent [documentation and tutorials](https://docs.kicad.org/) to help you get started.
