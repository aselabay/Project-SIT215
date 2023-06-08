# Project-SIT215


Cupcake Factory - PDDL Project
Overview
In this project, we utilize the Planning Domain Definition Language (PDDL) to handle various exercises revolving around a "Cupcake Factory". The factory is modeled as an AI environment where cupcakes are baked, frosted, and decorated according to specified plans.

The PDDL code comprises two primary components:

Domain file: This file lays down the basic structure of our problem. It outlines the objects present in our environment (ingredients, cupcakes, etc.), actions that can be carried out (bake, frost, decorate, etc.), and the effects of these actions on the state of our environment.

Problem file: This file provides a specific instance of our problem. It states the initial conditions of the environment (available ingredients, status of cupcakes, etc.) and the goal state we aim to accomplish (a batch of perfectly baked and decorated cupcakes, for example).

How To Execute The Code
Prerequisites
Ensure that you have a PDDL solver installed. Fast Downward is a recommended open-source solver. You can find instructions on how to install it here.

Running the Code

Open a terminal/command prompt.

Navigate to the directory where the PDDL files (domain.pddl and problem.pddl) are stored. Use the cd command. For instance, if the PDDL files are in a folder named pddl_project on your Desktop, type:

bash
Copy code
cd Desktop/pddl_project
Run the PDDL solver with the domain and problem file as inputs. For Fast Downward, use the following command:

bash
Copy code
fast-downward.py --alias seq-sat-lama-2011 domain.pddl problem.pddl
The solver will generate a plan. This plan is a sequence of actions that transitions from the initial state to the goal state. If a plan is found, it will be displayed in the terminal.

Understanding The Output
The output of the PDDL solver is a list of actions that make up the plan. Each action will be shown in a format similar to (bake cupcake1), which represents baking cupcake1. The sequence of these actions is crucial as it represents the order of steps to execute to reach the goal from the initial state
