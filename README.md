# Inverted Pendulum Control; PID, LQR, Kalman Filter & LQG

Modeling, analysis and control of an inverted pendulum on a cart, covering the full path from classical PID control to modern state-space techniques (LQR, Kalman filtering and LQG), implemented in MATLAB/Simulink.

Developed for the Optimization course, Bachelor's Degree in Artificial Intelligence at UPC Barcelona (2025–2026). The project replicates the methodology of *Design of a Linear Quadratic Gaussian Control System for a Thrust Vector Controlled Rocket*, applied to the inverted pendulum, and adds two original case studies.

## Features

- **Dynamic modeling**: Euler–Lagrange derivation of the equations of motion, full nonlinear state-space model, and linearization around the unstable upright equilibrium.
- **Structural analysis**: controllability, observability and stability of the linearized system.
- **PID controller**: classical control tuned in Simulink to stabilize the inherently unstable plant.
- **LQR**: optimal state-feedback gains through Q/R weighting matrix design.
- **Kalman filter**: full state estimation from output measurements only.
- **LQG**: integration of LQR and Kalman filter via the separation principle.
- **Two original extensions**: reference tracking for the cart position and for the pendulum angle.

## Repository structure

- `models/` : Simulink models for each controller
- `scripts_matlab/` : MATLAB scripts: model parameters, LQR, Kalman and LQG design
- `informe.pdf` : full project report (in Catalan), with derivations, results and conclusions
- `Diapositives.pdf` : 5-slide presentation summary

## Authors

Ferran Òdena & Berta Vidal
