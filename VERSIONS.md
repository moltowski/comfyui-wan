# Versions pinnées — comfyui-wan

> Dernière mise à jour : 2026-03-15
> Ces commits correspondent à l'état validé du pod de prod.

## Custom Nodes critiques

| Repo | Commit | Date | Workflows concernés |
|------|--------|------|---------------------|
| kijai/ComfyUI-WanVideoWrapper | df8f3e4 | 2026-02-22 | I2V, T2V |
| kijai/ComfyUI-KJNodes | 204f6d5 | - | I2V, T2V |
| Kosinkadink/ComfyUI-VideoHelperSuite | 993082e | - | I2V, T2V |
| chrisgoringe/cg-use-everywhere | c01c3ce | - | T2V |
| ltdrdata/ComfyUI-Impact-Pack | 6a517eb | - | T2I, T2V |
| kijai/ComfyUI-FSampler | 5479059 | - | I2V, T2V |
| chflame163/ComfyUI_LayerStyle | d94bef1 | - | I2V |

## Custom Nodes stables (non pinnés pour l'instant)

| Repo | Workflows concernés | Raison |
|------|---------------------|--------|
| rgthree/rgthree-comfy | I2V | Stable, peu de breaking changes |
| Fannovel16/ComfyUI_FrameInterpolation (RIFE) | I2V, T2V | Stable |
| yolain/ComfyUI-Easy-Use | I2V | Utilitaires |
| jps01/comfyui-jps-nodes | T2I | Stable |
| RockOfFire/ComfyUI_Comfyroll | T2I | Stable |
| pythongosssss/ComfyUI-Custom-Scripts | T2V | Debug only |
| mikeyhew/ComfyUI-Mikey-Nodes (ou équivalent) | T2V | Batch prompting |
| WASasquatch/was-node-suite (ou équivalent) | T2V | Utilitaires |

## ComfyUI core

| Composant | Version | Note |
|-----------|---------|------|
| ComfyUI | v0.17.2 / 04046049 | Pinné dans start.sh via git checkout v0.17.2 |
| SageAttention | commit 68de379 | Pinné dans start.sh |
| PyTorch | nightly cu128 | ⚠️ Non versionné |

## Process de mise à jour

Avant de changer un commit :
1. Tester sur le pod R&D via ComfyUI Manager
2. Valider les 3 workflows (T2I, T2V, I2V)
3. Mettre à jour ce fichier avec le nouveau SHA + date
4. Rebuilder l'image Docker
5. Tester le fresh boot
