Here's an improved version of your README file for the `bash-utils` setup. It provides a clear structure, step-by-step instructions, and some additional context.

---

# Bash Utils

A collection of useful Bash utilities and configurations to enhance your terminal experience.

## Installation

Follow these steps to set up `bash-utils` in your shell configuration:

### 1. Create Configuration Directory

Create a directory to store your shell configuration scripts:

```bash
mkdir ~/.shell_config
```

### 2. Change to Configuration Directory

Navigate to the newly created directory:

```bash
cd ~/.shell_config
```

### 3. Clone the Repository

Clone the `bash-utils` repository into your configuration directory:

```bash
git clone https://github.com/jindalAnuj/bash-utils.git .
```

### 4. Update Your Zsh Configuration

To automatically source all `.sh` files in your configuration directory, append the following command to your `.zshrc`:

```bash
echo 'for f in ~/.shell_config/*.sh; do [ -f "$f" ] && source "$f"; done' >> ~/.zshrc
```

### 5. Reload Your Zsh Configuration

Apply the changes by sourcing your `.zshrc`:

```bash
source ~/.zshrc
```

## Usage

Once the setup is complete, the utilities provided by `bash-utils` will be available in your terminal. You can customize or add additional scripts to `~/.shell_config` as needed.

## Contributing

If you have suggestions or improvements, feel free to fork the repository and submit a pull request!

## License

This project is licensed under the MIT License.

---

Feel free to adjust any sections based on your preferences or additional features that you might want to include!
