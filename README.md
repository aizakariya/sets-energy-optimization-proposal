# SETs Energy Optimization & AI ECM Proposal Tool

A full-stack, locally deployed **Building Energy Audit, ECM Recommendation, and Financial Proposal Web Application** powered by **FastAPI (Python)**, **Chart.js**, and local **Open-Weight AI (`Qwen2.5-Coder-32B-Instruct` via Ollama)** on NVIDIA RTX 3090.

---

## ✨ Key Features

1. **Building & Site Survey**:
   - Capture building metadata, gross floor area ($\text{m}^2$), stories, electricity tariff rate, discount rate, and stakeholder contacts.
2. **HVAC Chiller Plant & Air-Side Survey**:
   - Inventory chillers, primary/secondary pumps, VFDs, BMS/DDC controllers, AHUs, FAHUs, FCUs, and Chilled Water Loop $\Delta T$ performance.
   - **Affinity Law Energy Calculator**: Estimates annual kWh using cubic fan/pump affinity laws ($P \propto N^3$) for VFD-driven equipment.
3. **Lighting & Other Services**:
   - Fixture inventory by zone, wattage, control type, and dynamic sub-services (Domestic Water, Elevators, Envelope, Solar PV).
4. **Benchmarking (EUI & WUI)**:
   - Compares site Energy Use Intensity ($\text{kWh}/\text{m}^2/\text{yr}$) and Water Use Intensity ($\text{L}/\text{m}^2/\text{yr}$) against Emirates Green Building Council / ASHRAE benchmarks.
5. **Cost Estimation Matrix**:
   - Unit cost matrix with High / Medium / Low retrofit scopes and role-based visibility (Admin vs. Estimation Engineer).
6. **✨ AI ECM Recommender Engine**:
   - Evaluates the building's thermal and electrical profile to automatically suggest the highest-impact **Energy Conservation Measures (ECMs)** across Chiller Plant Optimization, Pump VFDs, FAHU Demand-Controlled Ventilation (DCV), Modulating PICV Valves, LED Retrofits, and Smart FCU Thermostats.
   - Calculates **Estimated Capex**, **Expected Energy Savings (kWh/yr)**, **Cost Savings**, **Simple & Discounted Payback**, **ROI (%)**, **NPV**, **IRR (%)**, and **Annual $\text{CO}_2\text{e}$ Abatement**.
   - Integrates with local **Ollama (`qwen2.5-coder:32b`)** to generate board-ready Executive Summary narratives.
7. **Client Proposal Report & PDF Export**:
   - Generates a print-ready executive proposal with SETs and client branding.

---

## 🚀 Quick Start (Local Deployment)

### 1. Install Dependencies
```bash
pip install -r requirements.txt
```

### 2. Run the Server
Double-click `start_app.bat` or run:
```bash
python server.py
```

### 3. Open in Browser
Navigate to:
```
http://127.0.0.1:8000
```

