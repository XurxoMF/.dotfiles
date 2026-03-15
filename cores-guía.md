**Accent colors (Primary / Secondary / Tertiary)** — cada grupo ten o mesmo patrón:

| Token                                      | Uso                                                              |
| ------------------------------------------ | ---------------------------------------------------------------- |
| `primary`                                  | Accións principais, botóns prominentes, FAB, estados activos     |
| `on_primary`                               | Texto/iconas sobre `primary`                                     |
| `primary_container`                        | Fondos de cards/chips con énfase primario                        |
| `on_primary_container`                     | Texto/iconas sobre `primary_container`                           |
| `primary_fixed`                            | Como `primary_container` pero igual en light e dark              |
| `primary_fixed_dim`                        | Versión máis escura/enfatizada de `primary_fixed`, tamén fixa    |
| `on_primary_fixed`                         | Texto/iconas sobre `primary_fixed`                               |
| `on_primary_fixed_variant`                 | Texto/iconas secundarios sobre `primary_fixed` (menor contraste) |
| _(idem para `secondary\__`e`tertiary\__`)_ |                                                                  |

**Error**

| Token                | Uso                                   |
| -------------------- | ------------------------------------- |
| `error`              | Indicadores de erro, alertas críticas |
| `on_error`           | Texto/iconas sobre `error`            |
| `error_container`    | Fondo de mensaxes de erro             |
| `on_error_container` | Texto/iconas sobre `error_container`  |

**Surface (hierarquía de profundidade)**

| Token                       | Uso                                                                                                          |
| --------------------------- | ------------------------------------------------------------------------------------------------------------ |
| `surface`                   | Fondo xenérico de cards, sheets, app bars                                                                    |
| `on_surface`                | Texto/iconas sobre `surface`                                                                                 |
| `surface_variant`           | Variante de surface para diferenciación (deprecated en M3 novo, substituído por `surface_container_highest`) |
| `on_surface_variant`        | Texto/iconas de menor énfase sobre surface                                                                   |
| `surface_dim`               | Surface máis escura, para fondos de menor énfase                                                             |
| `surface_bright`            | Surface máis clara, para elementos destacados                                                                |
| `surface_container_lowest`  | Nivel máis baixo de profundidade (ex: fondo expandido debaixo doutros)                                       |
| `surface_container_low`     | Un nivel por riba do lowest                                                                                  |
| `surface_container`         | Nivel neutro, uso xeral                                                                                      |
| `surface_container_high`    | Nivel de alta profundidade (ex: cards flotantes)                                                             |
| `surface_container_highest` | Nivel máximo (ex: chips, campos de texto)                                                                    |

**Background**

| Token           | Uso                                                          |
| --------------- | ------------------------------------------------------------ |
| `background`    | Canvas da páxina/pantalla (deprecated en favor de `surface`) |
| `on_background` | Texto sobre `background` (deprecated)                        |

**Inverse / Overlay**

| Token                | Uso                                                               |
| -------------------- | ----------------------------------------------------------------- |
| `inverse_surface`    | Surface invertida para tooltips, snackbars                        |
| `inverse_on_surface` | Texto sobre `inverse_surface`                                     |
| `inverse_primary`    | Primario invertido, para accións dentro de `inverse_surface`      |
| `surface_tint`       | Cor usada para tonal elevation overlays (normalmente = `primary`) |

**Outline / Shadow**

| Token             | Uso                                             |
| ----------------- | ----------------------------------------------- |
| `outline`         | Bordos de inputs, divisores visibles            |
| `outline_variant` | Divisores sutís, bordos de cards                |
| `shadow`          | Sombras                                         |
| `scrim`           | Overlay de escurecemento (ex: detrás dun modal) |

**Source**

| Token          | Uso                                     |
| -------------- | --------------------------------------- |
| `source_color` | A cor orixinal da que se xerou a paleta |

Os `_fixed` / `_fixed_dim` son os que máis faltan na wiki de Matugen — son cores que **non cambian entre light e dark**, útiles para elementos que necesitan consistencia visual entre temas.
