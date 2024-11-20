# Multithreaded Operating System Kernel Project

## Overview

This project involves the development of a small but fully functional kernel for a multithreaded operating system with time-sharing capabilities. The kernel supports thread management, memory allocation, and synchronization primitives such as semaphores. It is designed to run on a RISC-V processor architecture and is implemented in C/C++ with some assembly code.

## Features

- **Thread Management**: Create, manage, and schedule threads within the same address space.
- **Memory Allocation**: Custom memory allocator for dynamic memory management.
- **Synchronization**: Support for semaphores to handle synchronization between threads.
- **Time-Sharing**: Preemptive multitasking with time-sharing capabilities.
- **Interrupt Handling**: Asynchronous context switching on timer and keyboard interrupts.
- **Console I/O**: Input and output handling via a simulated console.

## Architecture

The kernel is designed as a monolithic software system, executing in a single address space with privileged mode for kernel code and user mode for application code. It includes the following components:

- **MemoryAllocator**: Manages dynamic memory allocation and deallocation.
- **Thread**: Represents a thread and its context.
- **Scheduler**: Implements the scheduling algorithm for thread execution.
- **Semaphore**: Provides synchronization primitives.
- **Console**: Handles console input and output operations.

## Implementation Details

### Memory Allocation

The memory allocator uses a continuous allocation algorithm (first fit or best fit) to manage dynamic memory. It provides functions for allocating and freeing memory blocks.

### Thread Management

Threads are created with a specified function and argument. The kernel supports thread creation, termination, and context switching. The context of each thread is saved and restored during context switches.

### Synchronization

Semaphores are used to synchronize access to shared resources. The kernel provides functions to create, wait, signal, and destroy semaphores.

### Time-Sharing

The kernel implements preemptive multitasking using a timer interrupt. Threads are given time slices, and the scheduler switches between threads based on their time slices.

### Interrupt Handling

The kernel handles interrupts from the timer and keyboard. The timer interrupt is used for preemptive multitasking, while the keyboard interrupt handles console input.

### Console I/O

The kernel provides functions for reading from and writing to the console. Input and output are buffered to handle asynchronous operations.

## Development Environment

The project is developed using a virtual machine with a RISC-V emulator. The recommended development environment is CLion, with support for debugging and remote debugging using gdb.

## Building and Running

To build and run the project, use the provided Makefile with the following targets:

- `make qemu`: Build and run the kernel in the QEMU emulator.
- `make qemu-gdb`: Build and run the kernel in the QEMU emulator with gdb debugging support.
- `make clean`: Clean the build directory.
