[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/RFD7jbdm)
# Project 01 For NeXT CS
### Name0: Ryan Gao
### Name1: 
---

### Overview
Your mission is create either:
- Life-like cellular automata [life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life), [life-like](https://en.wikipedia.org/wiki/Life-like_cellular_automaton), [demo](https://www.netlogoweb.org/launch#https://www.netlogoweb.org/assets/modelslib/Sample%20Models/Computer%20Science/Cellular%20Automata/Life.nlogo).
- Breakout/Arkanoid [demo 0](https://elgoog.im/breakout/)  [demo 1](https://www.crazygames.com/game/atari-breakout)
- Space Invaders/Arkanoid

This project will be completed in phases. The first phase will be to work on this document. Use markdown formatting. For more markdown help [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)


---

## Phase 0: Selection, Analysis & Plan

#### Selected Project: Conway's Game of Life

### Necessary Features
Create a grid, displaying black & white squares.
Said grid will need to be interactable with a mouse, on click, change state and color.
Checking for neighbors:
  - Live cell w/ < 2 neighbors -> die
  - Live cell w/ 2-3 neighbors -> survive
  - Live cell with > 3 neighbors -> die
  - Dead cell with = 3 neighbors -> alive

Run the program all at once for every square, then change display.


### Extra Features
What are some features that are not essential to the program, but you would like to see (provided you have time after completing the necessary features. Theses can be customizations that are not part of the core requirements.

Allow users to select different color palettes for grid

### Array Usage
How will you be using arrays in this project?

1D Array:
- YOUR ANSER HERE
Grid, Conway's
2D Array:
- Grid for conway's


### Controls
How will your program be controlled? List all keyboard commands and mouse interactions.

Keyboard Commands:
Space to start running game of life
R to reset/clear
Mouse Control:
- Mouse movement: N/A
- Mouse pressed: Change a live tile -> dead, vice versa


### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes. If you are going to use classes similar to those we've made for previous assignments, you will have to add new features to them.

Grid
- Instance variables:
  - Cols
  - Rows
  - 
- METHODS
  - displayGrid()
  - runCells()

Cell
- Instance variables:
  - xpos,ypos,size,state
- METHODS
  - display()
  - die()
  - spawn()
