# Hotel_S4 — Semana 5 (Vistas + Mockups + DOD)

Este folder contiene la evidencia de la **Semana 5** de *Ingeniería de Software (PRY3211)* para el proyecto **Hotel_S4**.

## 📌 Entregables (resumen)
- **UML (4 vistas)**: Caso de uso, Actividad (Reservar y pagar), Clases, Componentes.
- **Mockups**: Cliente (Home, Resultados, Detalle, Checkout, Comprobante) y Admin (Login, Panel, Gestión, Reportes).
- **Planilla DOD**: criterios de aceptación por vista, con evidencias (rutas a JPG).
- **Video (3–5 min)**: narración de vistas + usabilidad (link en Trello).
- **Trello**: tarjetas por vista con imágenes adjuntas y estado *En revisión*.

## 🔗 Enlaces
- **Repositorio GitHub**: https://github.com/Chiripio/hotel_S4
- **Tablero Trello**:(https://trello.com/b/bteVnHFW/mi-tablero-de-trello)

## 📂 Estructura recomendada
```
docs/
  uml/            # 4 diagramas UML (JPG)
  mockups/        # pantallas cliente/admin (JPG)
  dod/            # planilla DOD (Excel)
```
> Si tienes archivos fuente (Lucid/PlantUML), puedes incluirlos en `docs/uml/src/`.

## ✅ Evidencias (mapa rápido)
| Artefacto | Archivo sugerido |
|---|---|
| Caso de uso | docs/uml/uml_caso_uso.jpg |
| Actividad (Reservar y pagar) | docs/uml/uml_actividad.jpg |
| Clases | docs/uml/uml_clases.jpg |
| Componentes | docs/uml/uml_componentes.jpg |
| Home búsqueda (Cliente) | docs/mockups/mockup_home_busqueda.jpg |
| Resultados (Cliente) | docs/mockups/mockup_resultados.jpg |
| Detalle (Cliente) | docs/mockups/mockup_detalle.jpg |
| Checkout (Cliente) | docs/mockups/mockup_checkout.jpg |
| Comprobante (Cliente) | docs/mockups/mockup_comprobante.jpg |
| Login (Admin) | docs/mockups/mockup_admin_login.jpg |
| Panel (Admin) | docs/mockups/mockup_admin_panel.jpg |
| Gestión (Admin) | docs/mockups/mockup_admin_gestion.jpg |
| Reportes (Admin) | docs/mockups/mockup_admin_reportes.jpg |
| DOD (Excel) | docs/dod/PRY3211_Exp2_S5_formato_de_respuesta_Definition_Of_Done_Vistas_de_Diseño.xlsx |

## 🧪 DOD (Definition of Done) — checklist
- Caso de uso: actores y casos correctos; `include` justificado; trazabilidad con requisitos.
- Actividad: flujo principal + alternos (sin stock, pago rechazado); decisiones claras; finales definidos.
- Clases: entidades clave, atributos/métodos; asociaciones y multiplicidades correctas.
- Componentes: separación FE/API/DB/Integraciones/Cache; dependencias etiquetadas.
- Mockups: contraste legible, formularios con labels y mensajes de error, foco visible, jerarquía clara.

En Excel, en la columna **Evidencia** pega la ruta del archivo correspondiente (ej. `docs/uml/uml_caso_uso.jpg`) y marca **Estado** = Listo.

## 🧾 Mensajes de commit sugeridos (≥3 por elemento)
- `feat(uml/casos-uso): diagrama base actores y casos principales`
- `refactor(uml/casos-uso): ajustes nombres y relación include`
- `docs(uml/casos-uso): export JPG a docs/uml`
- *(repetir patrón para actividad, clases, componentes, mockups y DOD)*

## ▶️ Video (3–5 min) — guion corto
1. Contexto del proyecto y alcance de Semana 5.
2. Vistas UML: qué representa cada una y cómo se conectan.
3. Mockups: decisiones de usabilidad (contraste, formularios, navegación).
4. Cierre: dónde están las evidencias (Git/Trello) y próximos pasos.

---

> **Entrega**: en el **Word oficial** pega los links de **Git** y **Trello**; sube al AVA un ZIP con este contenido (`docs/uml`, `docs/mockups`, `docs/dod`, y el .docx). El video queda como link en Trello.
