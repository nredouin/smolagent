#!/bin/bash
# ============================================================================
# Smolagents Workshop - Automated Setup Script
# ============================================================================

echo "🚀 Setting up smolagents workshop environment..."

# Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv smolagents_env

# Activate virtual environment
echo "✅ Activating virtual environment..."
source smolagents_env/bin/activate

# Upgrade pip
echo "⬆️  Upgrading pip..."
python -m pip install --upgrade pip

# Install requirements
echo "📥 Installing requirements..."
pip install -r requirements.txt

# Verify installation
echo "🔍 Verifying installation..."
python -c "import smolagents; print('✅ smolagents installed successfully! Version:', smolagents.__version__)"

# Install Jupyter kernel
echo "📓 Installing Jupyter kernel..."
python -m ipykernel install --user --name=smolagents_env --display-name "Python (smolagents)"

echo ""
echo "✨ Setup complete! ✨"
echo ""
echo "To start working:"
echo "  1. Activate environment: source smolagents_env/bin/activate"
echo "  2. Start Jupyter: jupyter notebook"
echo "  3. Open the workshop notebook"
echo ""
echo "To deactivate: deactivate"