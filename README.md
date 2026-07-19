# MB-ESO

# MATLAB Example for Theorem 1

This repository contains the MATLAB code accompanying the paper

> **[Paper Title]**
> *[Authors]*
> *[Journal / arXiv (optional)]*

The purpose of this repository is to provide a simple numerical example illustrating **Theorem 1**. The example was prepared to complement the theoretical development in the paper, as some readers and reviewers found the theorem difficult to follow from the mathematical derivation alone.

## Example Description

The example considers a linear system whose **disturbance relative vector degree** is \{2,4,3\}.


The two MATLAB scripts verify Theorem 1 using two different formulations.

## Repository Structure

- **`noP.m`**
  
  Attempts to construct the observer **without** using the output transformation matrix \(P\). This script shows that the observer gain \(L\) cannot be obtained in the original output coordinates.

- **`withP.m`**
  
  Constructs the observer **using** the output transformation matrix \(P\). This script shows that the transformation matrix \(P\) enables the computation of the observer gain \(L\), thereby validating the design procedure and the theoretical results of **Theorem 1**.

## Purpose

The two MATLAB scripts use the same system to demonstrate the following two cases:

| Script | Output Transformation Matrix \(P\) | Purpose |
|---------|------------------------------------|---------|
| `noP.m` | No | Demonstrates that the observer gain \(L\) cannot be computed directly in the original output coordinates. |
| `withP.m` | Yes | Demonstrates that introducing the output transformation matrix \(P\) enables the computation of the observer gain \(L\) and verifies the design procedure in Theorem 1. |

By comparing the two implementations, readers can better understand the role of the output transformation matrix in the proof and implementation of **Theorem 1**.

## Requirements

The code was developed and tested in MATLAB and requires only the Symbolic Math Toolbox.

## Running the Example

Simply execute either script from the MATLAB command window:

```matlab
>> noP
```

or

```matlab
>> withP
```

Each script is self-contained and reproduces the corresponding computations independently.

## Citation

If you find this code useful in your research, please cite the associated paper.

```bibtex
% Add the BibTeX entry of your paper here.
```

## Contact

If you have any questions or find any issues with the code, please open a GitHub issue or contact the corresponding author.
