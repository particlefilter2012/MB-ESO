# MB-ESO

# MATLAB Example for Theorem 1

This repository contains the MATLAB code accompanying the paper

> **[Paper Title]**
> *[Authors]*
> *[Journal / arXiv (optional)]*

The purpose of this repository is to provide a simple numerical example illustrating **Theorem 1**. The example was prepared to complement the theoretical development in the paper, as some readers and reviewers found the theorem difficult to follow from the mathematical derivation alone.

## Example Description

The example considers a linear system whose **disturbance relative vector degree** is

\[
\{2,\,4,\,3\}.
\]

The two MATLAB scripts verify Theorem 1 using two different formulations.

## Repository Structure

- **`noP.m`**
  
  Verifies the example **without** using the output transformation matrix \(P\). This script demonstrates the observer design and verifies the conditions directly in the original output coordinates.

- **`withP.m`**
  
  Verifies the same example **using** the output transformation matrix \(P\). This script illustrates how the proposed output transformation simplifies the design procedure and validates the results presented in Theorem 1.

## Purpose

The two scripts solve the same problem using different formulations:

| Script | Output Transformation Matrix \(P\) | Purpose |
|---------|------------------------------------|---------|
| `noP.m` | No | Verification in the original output coordinates |
| `withP.m` | Yes | Verification after applying the output transformation |

By comparing the two implementations, readers can better understand the role of the output transformation matrix in the proof and implementation of **Theorem 1**.

## Requirements

The code was developed and tested in MATLAB. No additional toolboxes are required unless otherwise specified in the scripts.

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
