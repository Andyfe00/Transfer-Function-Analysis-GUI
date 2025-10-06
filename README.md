# Transfer-Function-Analysis-GUI
# ⚙️ Transfer Function Analysis GUI (Programa_Segundo_Corte)

This project implements an interactive graphical user interface (GUI) developed in **MATLAB GUIDE**, named **`Programa_Segundo_Corte`**.  
The application provides a simple and visual way to analyze and simulate **dynamic systems** through **transfer functions**.

It allows users to:
- Compute and visualize **zeros** and **poles** of a system.
- Display the **pole–zero map** (`pzmap`).
- Plot **time responses** (impulse, step, or ramp).
- Display the symbolic representation of the transfer function.

---

## 🧠 Overview

The GUI enables users to input the coefficients of a transfer function (numerator and denominator) and then select a response type from a dropdown menu.

Once the inputs are provided, the program automatically:
- Calculates zeros and poles (`zero()`, `pole()`).
- Generates the transfer function object (`tf()`).
- Plots the selected time response (`impulse`, `step`, or `lsim`).
- Displays results in two dedicated axes (time response and pole–zero map).

---

## 📂 Project Files

| File | Description |
|------|--------------|
| `Programa_Segundo_Corte.m` | MATLAB source code (GUI logic and callbacks). |
| `Programa_Segundo_Corte.fig` | Graphical interface layout created in GUIDE. |
| `README.md` | Project documentation. |

> ⚠️ Both `.m` and `.fig` files are required for the GUI to run correctly.

---

## 🧰 Requirements

- **MATLAB R2016a or later** (recommended R2020a+)
- **Control System Toolbox**

---

## 🚀 How to Run

1. Open MATLAB.
2. Place both files (`Programa_Segundo_Corte.m` and `.fig`) in the same folder.
3. In the MATLAB Command Window, navigate to that folder:
   ```matlab
   cd 'C:\Path\To\Project'


   > ⚠️ Academic Disclaimer  
> This project was developed by **Andrés Felipe Porras** as part of the  
> Modelos module at **Universidad Militar Nueva Granada (2017–2021)**.  
> The content is shared for educational and portfolio purposes only.  
> No proprietary or restricted university materials are included.
