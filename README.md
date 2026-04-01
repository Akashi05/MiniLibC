# MiniLibC

Réimplémentation de fonctions de la bibliothèque standard C en assembleur x86-64 (NASM).

## Prérequis

- [NASM](https://www.nasm.us/) — assembleur x86-64
- `ld` — éditeur de liens (fourni avec `binutils`)

## Compilation

```bash
# Compiler et générer la bibliothèque partagée libasm.so
make

# Supprimer les fichiers objets
make clean

# Supprimer les fichiers objets et la bibliothèque
make fclean

# Recompiler depuis zéro
make re
```

La compilation produit un fichier `libasm.so` contenant toutes les fonctions.

## Fonctions implémentées

### Fonctions sur les chaînes de caractères

| Fonction | Description |
|---|---|
| `strlen` | Retourne la longueur d'une chaîne |
| `strcmp` | Compare deux chaînes lexicographiquement |
| `strncmp` | Compare deux chaînes sur au plus `n` octets |
| `strchr` | Cherche la première occurrence d'un caractère dans une chaîne |
| `strrchr` | Cherche la dernière occurrence d'un caractère dans une chaîne |
| `strcasecmp` | Compare deux chaînes sans tenir compte de la casse |
| `strpbrk` | Cherche le premier caractère d'une chaîne appartenant à un ensemble |

### Fonctions mémoire

| Fonction | Description |
|---|---|
| `memset` | Remplit une zone mémoire avec un octet donné |
| `memcpy` | Copie une zone mémoire vers une destination (sans chevauchement) |
| `memmove` | Déplace une zone mémoire vers une destination (avec chevauchement possible) |

## Référence des fonctions

### `strlen`
```c
size_t strlen(const char *s);
```
Retourne le nombre de caractères de la chaîne `s` avant le caractère nul `\0`.

---

### `strcmp`
```c
int strcmp(const char *s1, const char *s2);
```
Compare `s1` et `s2`. Retourne `0` si égales, une valeur négative si `s1 < s2`, positive si `s1 > s2`.

---

### `strncmp`
```c
int strncmp(const char *s1, const char *s2, size_t n);
```
Comme `strcmp`, mais compare au plus `n` octets.

---

### `strchr`
```c
char *strchr(const char *s, int c);
```
Retourne un pointeur vers la première occurrence de `c` dans `s`, ou `NULL` si absent.

---

### `strrchr`
```c
char *strrchr(const char *s, int c);
```
Retourne un pointeur vers la dernière occurrence de `c` dans `s`, ou `NULL` si absent.

---

### `strcasecmp`
```c
int strcasecmp(const char *s1, const char *s2);
```
Compare `s1` et `s2` sans distinguer les majuscules des minuscules.

---

### `strpbrk`
```c
char *strpbrk(const char *s, const char *accept);
```
Retourne un pointeur vers le premier caractère de `s` qui appartient à l'ensemble `accept`, ou `NULL` si aucun n'est trouvé.

---

### `memset`
```c
void *memset(void *s, int c, size_t n);
```
Remplit les `n` premiers octets de la zone mémoire pointée par `s` avec l'octet `c`. Retourne `s`.

---

### `memcpy`
```c
void *memcpy(void *dest, const void *src, size_t n);
```
Copie `n` octets de `src` vers `dest`. Les zones ne doivent pas se chevaucher. Retourne `dest`.

---

### `memmove`
```c
void *memmove(void *dest, const void *src, size_t n);
```
Copie `n` octets de `src` vers `dest`. Gère le chevauchement des zones mémoire. Retourne `dest`.

## Structure du projet

```
MiniLibC/
├── Makefile
├── README.md
└── src/
    ├── strlen.asm
    ├── strcmp.asm
    ├── strncmp.asm
    ├── strchr.asm
    ├── strrchr.asm
    ├── strcasecmp.asm
    ├── strpbrk.asm
    ├── memset.asm
    ├── memcpy.asm
    └── memmove.asm
```
