# --- Project Variables ---
TITLE        = peer-graded-assignment
BUILD_DATE   = $(shell date +'%B %d, %Y')
# Finder filer i nuværende mappe (maxdepth 1) for at undgå at tælle README eller skjulte filer med
LINE_COUNT   = $(shell find . -maxdepth 1 -type f -name "*.sh" -exec cat {} + | wc -l)

# --- Rule to Generate README ---
readme:
	@echo "Generating README.md..."
	@cat << 'EOF' > README.md
# $(TITLE)

## Project Status
- **Last Build Date:** $(BUILD_DATE)
- **Total Lines of Code:** $(LINE_COUNT)

## Description
Unix-Workbench peer-graded-assignment

## Installation
```bash
make all
```

## Usage
To update this README with the latest project stats, run:
```bash
make readme
```

---
*Generated automatically via Makefile*
EOF
	@echo "README.md has been updated."

.PHONY: readme
