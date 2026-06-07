#!/bin/bash
# Script para calcular el interés simple

echo "--------------------------------------------------"
echo "   Calculadora de Interés Simple (Bash Script)   "
echo "--------------------------------------------------"

# Solicitar los datos al usuario
read -p "1. Ingrese el Capital Principal (P): " principal
read -p "2. Ingrese la Tasa de Interés Anual en % (r): " tasa
read -p "3. Ingrese el Tiempo en años (t): " tiempo

# Validar que los campos no estén vacíos
if [[ -z "$principal" || -z "$tasa" || -z "$tiempo" ]]; then
    echo "Error: Todos los campos son obligatorios."
    exit 1
fi

# Calcular el interés simple (I = P * r * t / 100)
# Usamos 'bc' para permitir operaciones con números decimales
interes=$(echo "scale=2; $principal * ($tasa / 100) * $tiempo" | bc -l)

# Calcular el Monto Total (Monto = Principal + Interés)
monto_total=$(echo "scale=2; $principal + $interes" | bc -l)

echo "--------------------------------------------------"
echo "📊 RESULTADOS:"
echo "-> Interés Simple Generado (I): $interes"
echo "-> Monto Total Acumulado (A): $monto_total"
echo "--------------------------------------------------"
