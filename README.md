# ComfyUI-WAN Template

## Overview
Fork du template ComfyUI pour WAN 2.1/2.2 (Alibaba models) sur RunPod. Supporte T2V, I2V, animations, extensions vidéo (60FPS, LoRAs comme CausVid/Self-Forcing).

- **Modèles :** WAN 2.2 14B/5B (high/low noise), VACE, Steady Dancer, Infinite Talk.
- **Nœuds Custom :** 27+ (WanVideoWrapper, KJNodes, VHS, etc.).
- **Démarrage :** src/start.sh (auto-download modèles 20-50GB via aria2c, build SageAttention).
- **Workflows :** 20+ JSON dans /workflows (e.g., Wan2.2_T2V.json pour text-to-video 81 frames 720p).
- **Stack :** CUDA 12.8, PyTorch nightly, ComfyUI via comfy-cli. Port 8188.

## Setup RunPod
1. Clone ce repo dans /workspace.
2. Set env: civitai_token, download_wan22=true, etc.
3. Run: bash src/start.sh.
4. Accès: http://0.0.0.0:8188 (ComfyUI), :8888 (Jupyter).

## Intégration LoRAs
- Ajoute tes LoRAs Ostris dans /models/loras (e.g., action-lora pour 'fem_mast').
- Charge via LoraLoaderModelOnly dans workflows (strength 1).

## Licence
AGPL-3.0 (original Hearmeman24/comfyui-wan).

See RAPPORT.md pour analyse détaillée (dans projet parent).## Updated for Docker build retry (fixed secret)
