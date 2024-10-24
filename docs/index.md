Welcome to BatchGenie, an add-on designed to simplify and automate common Asset related tasks in [Blender](https://www.blender.org/){ target="_blank" }.
{ data-search-exclude }


## Key Features

<div class="grid cards grid_custom" markdown>

-   :material-camera:{ .lg .middle style="color:var(--main-accent-color-green)" } __Batch Render Assets__

    ---

    Create high-quality previews for your Assets, including materials, objects, and collections, to showcase them externally or enhance your Asset library, ensuring it is visually informative and easy to browse.


-   :material-image-multiple:{ .lg .middle style="color:var(--main-accent-color-red)" } __Batch Import__

    ---

    Streamlined asset importing with a single click, including PBR textures and more, offering robust customization options for bulk imports to save time and effort while tailoring the process to your preferences.

</div>

<div class="grid cards grid_custom"  markdown>

-   :material-export-variant:{ .lg .middle style="color:var(--main-accent-color-orange)" } __Batch Export__

    ---

    Batch export objects, collections, and materials directly from the Asset Browser, streamlining your workflow and ensuring your assets are ready for use in any project.


-   :material-tools:{ .lg .middle style="color:var(--main-accent-color-blue)" } __Batch Utilities__

    ---

    Utilize a variety of batch processing utilities designed to handle common tasks efficiently such as changing material or node attributes.

</div>


### Promo Video
<div class="youtube-wrapper">
    <iframe id="videoPlayer" width="560" height="315" src="https://www.youtube.com/embed/o1rj7gl_im4?rel=0" frameborder="0" allowfullscreen></iframe>
</div>


### Feature Details

??? info2 "Click to expand"

    - Easy one-click interface for instant use, while offering advanced customization options.
    - Both rendering and all utilities work with local and external Assets, so you don't have to open each Asset file individually when working with them.
    - Built-in parallel processing when working with external assets, allowing multiple assets to be processed simultaneously in the background.

    - **Asset Preview Rendering**:
        - One click batch rendering making the process swift and efficient.
        - Supports rendering of multiple types of Assets: materials, collections, and objects, including VDB volumes.
        - Seamless Asset Browser integration allows you to easily select and render images for your existing Assets. You can render any combination of different Asset types, including materials, objects, and collections.
        - Advanced filtering to find and replace missing or low-quality Asset Previews for both newly imported Assets and your existing Asset Library.
        - Easy controls for lighting and background settings, enhanced with Render Presets to streamline setup. You can choose from ready-to-use lighting configurations that automatically adjust light parameters, including support for HDRI images.
        - Render to external locations: Expand beyond Asset previews by saving images externally, facilitating the quick creation of professional showcase images for your Assets.

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
        - Batch export objects, collections, and materials to blend files with ease. You can choose to export them as individual blend files or combine all selected assets into a single blend file. This feature is directly integrated into the Asset Browser for seamless access and functionality.

    - **Utilities**:
        - Utilities are available for working with your current blend file and are integrated into the Asset Browser for quick access.
        - Tools for bulk updating material settings such as Displacement and eevee specific settings.
        - Node Attribute Changer: Target various nodes or custom node-groups within materials to change socket values, set specific colors, or use random values for seed sockets.
        - Replace Node Utility: Replace existing 'Shader Editor' nodes with custom Node-Groups.
        - Unconnected Nodes Finder: Identify unconnected nodes within materials and batch delete them if needed.
        - Find Zero Strength Nodes: Search for Normal Map, Bump, and Displacement nodes with zero values, potentially affecting material appearance.
        - Color Space Validator: Verifies image textures for correct color space settings, with an option to automatically fix any issues.
        - Reload Images: Update externally edited images in Blender, ensuring they refresh correctly.
        - Tagging Utilities: Easily add and remove tags for Assets in the Asset Browser. The Smart Tag feature lets you choose to add tags like dimensions, triangle and vertex counts, and texture resolution, offering detailed Asset information.
        - Metadata Adjustment: Easily adjust metadata in the Asset Browser, allowing batch additions of description, license, copyright, and author.
        - Move Asset: Organize your Assets efficiently by moving them to the correct Asset Catalogs with a single click, without having to open each individual Asset Blend file.
        - Load previews from disk:  Directly load custom asset preview images from a specified directory.
        - Pack Textures: Easily pack textures for assets in the Asset Browser with a single click.
        - Set Origin: Quickly set object origins.
        - Plus a few other small utilities!


## Where to get the add-on?

You can buy BatchGenie in the following stores:

<div class="grid" markdown>

[:simple-gumroad:{ .gumroad } Gumroad](https://roberd.gumroad.com/l/BatchGenie){ .md-button .md-button--stretch }

[:blender_market: BlenderMarket](https://blendermarket.com/products/batchgenie){ .md-button .md-button--stretch }

</div>



## Updates

My priority is ensuring compatibility with Blender's Long-Term Support (LTS) releases, but I will also strive to maintain functionality with other Blender updates whenever possible. Additionally, I have planned features and utilities that will be added in future updates to enhance the capabilities. For details on the current version, check the [Changelog](changelog.md).


## Support and Feedback

If you encounter any issues or have suggestions for new features, please visit the [Issues](https://github.com/roberddd/BatchGenie/issues) and [Discussions](https://github.com/roberddd/BatchGenie/discussions) pages on GitHub. These are the primary portals for support and feedback. Additionally, you can contact me via email or through the BlenderMarket inbox. Your feedback is invaluable in helping me improve BatchGenie.