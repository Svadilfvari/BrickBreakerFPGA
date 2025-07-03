# 🎮 BrickBreaker FPGA

> A mini-project implementing the classic "Breakout" (Casse-Brique) game on an FPGA using VHDL.

## 📌 Project Description

This project recreates a console-style brick-breaking game using an FPGA board (BASYS 3). It was developed in the context of an academic mini-project, focusing on VHDL design, modular hardware structure, and VGA display interfacing.

Originally developed by Yousri Aboudaoud & Alexandre Naprix, now maintained by **Edouard David**.

---

## ⚙️ Features

- 🔁 Real-time gameplay logic with paddle and ball dynamics
- 🖼 VGA output for visual game display
- 🎚 Rotary encoder for paddle movement
- 🧠 Finite State Machine (FSM) for game mode control
- 🧱 Bricks destruction and win/lose detection

---

## 🧱 System Architecture

The architecture consists of three main IP blocks:

### 📦 IP Modules

- `IP_GAME`: Controls gameplay logic (collision, score, win/lose)
- `IP_OBJECT`: Handles game elements (ball, paddle, bricks)
- `IP_VGA`: Generates 640x480 VGA signals for display

### 🔁 FSM: `MAE_MODE`

- Handles game state (Running, Paused, Won, Lost)
- Includes debounce logic for pause/resume
- Driven by user inputs and gameplay conditions

---

## 🖥 Results

### ✅ Working

- Paddle controlled via rotary encoder
- VGA output with animated display
- Game logic executes correctly

### ⚠️ Minor Issues

- VGA only displays 2 out of 3 intended colors in some modes
- Encoder instability in early versions (fixed)

---

## 📊 Development Status

| Task                            | Status     |
|---------------------------------|------------|
| Project Setup & Planning        | ✅ Done     |
| VHDL Architecture Design        | ✅ Done     |
| Game Logic Implementation       | ✅ Done     |
| VGA Controller Development      | ✅ Done     |
| Rotary Encoder Integration      | ✅ Partially Working |
| Final Debug & Polish            | ✅ Done     |

---

## 🧰 Tools Used

- 💻 **Vivado**: FPGA synthesis and implementation
- 🛠 **EDA Playground**: Simulation
- 📦 **BASYS 3**: Digilent FPGA development board
- 🧠 **VHDL**: Hardware description language

---

## 🗂 File Structure

```bash
BrickBreakerFPGA/
├── src/ # VHDL source files
├── sim/ # Testbenches for simulation
├── xpr/ # Vivado project files
├── doc/ # Documentation and report
└── README.md # Project overview
```
---

## ✅ Conclusion

This project provided hands-on experience with FPGA development, game design logic, and real-time display systems. The final result is a playable and visually engaging brick-breaking game that meets the functional objectives of the original project brief.

---
