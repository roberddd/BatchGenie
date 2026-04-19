---
hide:
  - navigation
---
Explore the powerful features of BatchGenie. This section provides an in-depth look at how the add-on simplifies asset management, rendering, and utilities, streamlining your workflow in Blender.
{ data-search-exclude }

---

- Easy one-click interface for instant use, while offering advanced customization options.
- Both rendering and all utilities work with local and external assets directly from the Asset Browser, so you don't have to open each asset file individually to work with them.
- Built-in parallel processing when working with external assets, allowing multiple assets to be processed simultaneously in the background.

- **Asset Preview Rendering**:
    - One click batch rendering making the process swift and efficient.
    - Supports rendering of multiple types of assets: materials, collections, and objects, including VDB volumes.
    - Seamless Asset Browser integration allows you to easily select and render images for your existing assets. You can render any combination of different asset types, including materials, objects, and collections.
    - Advanced filtering to find and replace missing or low-quality Asset Previews for both newly imported assets and your existing Asset Library.
    - Easy controls for lighting and background settings, enhanced with Render Presets to streamline setup. You can choose from ready-to-use lighting configurations that automatically adjust light parameters, including support for HDRI images.
    - Render to external locations: Expand beyond Asset Previews by saving images externally, facilitating the quick creation of professional showcase images for your assets.

- **Importing**:
    - **Texture Import**:
        - Blazingly fast imports.
        - Supports both Metallic/Roughness and Specular/Glossiness workflow.
        - Supports for 16+ types of maps: Albedo, Metallic, Roughness, Gloss, Alpha, Subsurface Scattering, Specular, Transmission, Emission, Sheen Color, Normal, Bump, Ambient Occlusion, Cavity, Displacement, and PACKED & CUSTOM types.
            - Packed: ARM/ORM/RMA textures that combine AO, Roughness, and Metallic maps.
            - Custom: Import any map and connect it to your chosen input via a dropdown menu. Supports packed textures.
        - Automatically sets up all necessary nodes, including color space adjustments and other configurations for a smooth workflow without manual intervention. This includes detecting normal map format and adding conversion nodes if needed, as well as auto-detecting the alpha channel from the Albedo texture to use its alpha channel if available.
        - Supports all combinations of Normal, Bump & Displacement maps.
        - Flexibly adjust the strength of Normal, Bump, Displacement, Ambient Occlusion and Cavity maps during import with the added convenience of bulk updates afterwards if needed.
        - Logic adept at deciphering complex texture naming conventions and avoiding duplicates of similar maps such as Roughness & Gloss.
        - Ability to designate a custom node-group to substitute the Principled BSDF shader in imported materials, enabling precise material customization during the import process.
        - Custom Input Socket Attributes: This feature enables you to define attributes for any input socket on the main shader of imported textures. You can assign specific colors or values, or utilize randomly generated values as required, including both whole numbers and decimals. This can be particularly useful for populating 'Seed' sockets.
        - Supports a mix of subfolders and files, allowing processing of textures located in both the root folder and subfolders.
    - **Blend File Import**:
        - Import objects, collections, and materials from multiple blend files at once.

- **Exporting**:
    - Batch export objects, collections, and materials to blend files. You can choose to export them as individual blend files or combine all selected assets into a single blend file. This feature is directly integrated into the Asset Browser for seamless access and functionality, but is also available inside the 3D View for exporting assets directly from your current scene.

- **Utilities**:
    - Utilities are available for working with your current blend file and are integrated into the Asset Browser for quick access.
    - **Change Material Settings**: Bulk updating material settings such as Displacement and eevee specific settings.
    - **Node Attribute Changer**: Target various nodes or custom node-groups within materials to change socket values, set specific colors, or use random values for seed sockets.
    - **Replace Node Utility**: Replace existing 'Shader Editor' nodes with custom Node-Groups.
    - **Unconnected Nodes Finder**: Identify unconnected nodes within materials and batch delete them if needed.
    - **Find Zero Strength Nodes**: Search for Normal Map, Bump, and Displacement nodes with zero values, potentially affecting material appearance.
    - **Color Space Validator**: Verifies image textures for correct color space settings, with an option to automatically fix any issues.
    - **Convert Images**: Convert images in the selected source to your desired format, supporting bulk processing within Blender's current project or from a specified directory, and optionally downscale images during the process.
    - **Reload Images**: Update externally edited images in Blender, ensuring they refresh correctly.
    - **Relink Converted Images**: This utility helps you update Blender's links to images that have been converted to a different file format.
    - **Tagging Utilities**: Easily add and remove tags for assets in the Asset Browser. The Smart Tag feature lets you choose to add tags like dimensions, triangle and vertex counts, and texture resolution, offering detailed asset information.
    - **Metadata Adjustment**: Easily adjust metadata in the Asset Browser, allowing batch additions of description, license, copyright, and author.
    - **Move Asset:** Organize your assets efficiently by moving them to the correct Asset Catalogs with a single click, without having to open each individual asset Blend file.
    - **Load previews from disk**:  Directly load custom asset preview images from a specified directory.
    - **Pack Textures**: Easily pack textures for assets in the Asset Browser with a single click.
    - **Set Origin**: Quickly set object origins.
    - **Export Asset Details to Excel**: Export detailed information about your assets from the Asset Browser into an Excel file for easy analysis and management.
    - **Create Cryptomatte Node**: This utility automates the creation and management of Cryptomatte nodes in Blender's compositor by gathering objects from a collection or the current selection and populating their matte IDs.
    - **Mark As Normal Map**: Quickly mark Image Textures as Normal Maps by auto-setting Non-Color and adding a connected Normal Map node.