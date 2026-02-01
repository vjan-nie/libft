# Libft - 42 Custom C Library

## Overview

**Libft** is a foundational C library developed as part of the 42 school curriculum. It provides essential utility functions and tools that serve as building blocks for all subsequent projects throughout the 42 learning path.

Rather than relying on standard C library functions, this project requires students to implement their own versions of commonly used operations, fostering a deeper understanding of low-level programming concepts and C fundamentals.

## Purpose

Libft serves two primary goals:

1. **Educational Foundation**: Develop core programming skills by implementing fundamental C library functions from scratch
2. **Project Toolbox**: Provide a reusable library of utilities that accelerates development in later 42 projects

By completing this project, students gain proficiency in memory management, string manipulation, and creating well-structured, modular code.

## Project Structure

### Core Modules

#### **String Functions** (`src/`)
- String manipulation: `ft_strlen`, `ft_strchr`, `ft_strrchr`, `ft_strdup`, `ft_strjoin`, `ft_substr`, `ft_strtrim`, `ft_split`, `ft_strnstr`
- String comparison: `ft_strncmp`, `ft_strlcpy`, `ft_strlcat`
- String transformation: `ft_strmapi`, `ft_striteri`

#### **Character Functions** (`src/`)
- Character classification: `ft_isalpha`, `ft_isdigit`, `ft_isalnum`, `ft_isascii`, `ft_isprint`
- Character conversion: `ft_toupper`, `ft_tolower`

#### **Memory Functions** (`src/`)
- Memory allocation: `ft_calloc`, `ft_bzero`
- Memory operations: `ft_memset`, `ft_memcpy`, `ft_memmove`, `ft_memchr`, `ft_memcmp`

#### **Conversion Functions** (`src/`)
- `ft_atoi`: String to integer conversion
- `ft_itoa`: Integer to string conversion

#### **I/O Functions** (`src/`)
- `ft_putchar_fd`, `ft_putstr_fd`, `ft_putendl_fd`, `ft_putnbr_fd`: Write to file descriptors

#### **Bonus - Linked Lists** (`src/`)
- List creation and manipulation: `ft_lstnew`, `ft_lstadd_front`, `ft_lstadd_back`, `ft_lstlast`, `ft_lstsize`
- List operations: `ft_lstclear`, `ft_lstdelone`, `ft_lstiter`, `ft_lstmap`

#### **Printf** (`ft_printf/`)
A custom implementation of the `printf()` function supporting formatted output with basic format specifiers.

#### **Get Next Line** (`get_next_line/`)
A bonus function that reads and returns the next line from a file descriptor, handling variable line lengths and multiple file descriptors.

## Building the Library

### Compilation

```bash
make        # Compile the library (libft.a)
make all    # Same as make
make bonus  # Compile with bonus functions (linked lists)
make clean  # Remove object files
make fclean # Remove object files and library
make re     # Recompile everything
```

### Output

The build process generates:
- `libft.a`: Static library containing all compiled functions
- Object files: `.o` files used during compilation

## Usage

To use libft in your project:

1. **Include the header file** in your C source:
   ```c
   #include "libft.h"
   ```

2. **Link the library** during compilation:
   ```bash
   gcc my_program.c -L. -lft -o my_program
   ```

3. **Use the functions** as you would the standard C library:
   ```c
   char *str = ft_strdup("Hello");
   int len = ft_strlen(str);
   ```

## Key Learning Outcomes

- Deep understanding of C memory management
- String manipulation and processing
- Modular code organization and compilation
- Implementation of fundamental algorithms
- Working with file descriptors and I/O

## Notes

This library strictly implements C functions without relying on external libraries (except where explicitly allowed by the project specifications). All functions are written in pure C following 42 school coding standards.

---

**42 School Project** - Building the foundation for advanced C programming.
