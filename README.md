# Motion Control with two-layer Neural Network

## 📁 Project Structure
The project is organized into the following folder structure:

- **📄 Documentation**: Contains the detailed documentation of the project.
- **📊 Robotics_Presentation**: Includes the project presentation.
- **📂 Simulink**: Contains the implemented models.

### 📌 *Simulink* Folder Structure
Within the *Simulink* folder, there are three main subfolders:

#### 🔹 1. Inverse_dynamics_control
This folder contains files related to inverse dynamics control:
- `📜 figures.m`: MATLAB script for generating graphs used in the report.
- `📜 main.m`: Code that must be executed before running the simulation to load the modified and real robot models.
- `📄 Sim_model`: Simulink file implementing the inverse dynamics control scheme.

#### 🔹 2. NN_1
This folder contains files related to neural network control using the first backpropagation method:
- `📜 figures.m`: MATLAB script for generating graphs used in the report.
- `📄 NN_1`: Simulink file implementing the neural network control scheme using the first backpropagation method.

#### 🔹 3. NN_2
This folder contains files related to neural network control using the second backpropagation method:
- `📜 figures.m`: MATLAB script for generating graphs used in the report.
- `📄 NN_2`: Simulink file implementing the neural network control scheme using the second backpropagation method.

---

## ⚙️ Execution Requirements
To successfully run all simulations, it is necessary to install the **Robotics Toolbox**, available at the following link:
[📎 Robotics Toolbox - Peter Corke](https://petercorke.com/toolboxes/robotics-toolbox/)

### 🛠 Toolbox Installation Steps
```bash
1. 📥 Download the Robotics Toolbox from the provided link.
2. 📂 Extract the contents into the desired directory.
3. ▶️ Run the following command inside MATLAB to load the toolbox:
```
```matlab
run('path_to_toolbox/rvctools/startup_rvc.m')
```

### 🤖 Robot Model Loading
To execute the **NN_1** and **NN_2** simulations, you need to load the robot model by running the following command in MATLAB:
```matlab
mdl_puma560
```

Once this command is executed, the simulations can be run successfully.

---

© 2025 - **Motion Control with two-layer Neural Network** 🚀


