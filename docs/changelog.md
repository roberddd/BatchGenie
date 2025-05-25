---
tags:
  - Release history
hide:
  - navigation
  - toc
---
Here, you can find a list of all updates, enhancements, and bug fixes made to BatchGenie over time. Date Format: YYYY-MM-DD.


### Versions

<div class="changelog" markdown>

### 1.2.9 <small>2025-05-25</small>

- **Other**:
    - PIL Python library updated from version 11.0.0 to 11.1.0.
- **Bugfixes**:
    - Improved compatibility with Blender 4.4: Fixed a bug where some utilities could trigger the error `Python: RuntimeError: could not create instance of XXX to call callback function 'invoke'`.

---

### 1.2.8 <small>2025-02-19</small>

- **New / Improved Functionality**:
    - **`Import Textures`**:
        - Major overhaul of the import function under the hood, resulting in a more responsive interface during large imports and slight speed improvements in some cases. Imports can now also be canceled mid-process by pressing Escape if needed
        - **Import Preview Thumbnail** feature is now available. This allows you to use existing preview images if available, providing a faster alternative to generating new previews.
        - **Pack Textures** option is now available.
        - Strength settings for **Normal**, **Bump**, **Ambient Occlusion**, **Cavity**, and **Displacement** are now saved when customized to fit your preferences.
        - New **Material Name Settings** added in preferences:
            - **Use Title Case**: Formats material names using Title Case, where each word starts with an uppercase letter and the remaining characters are lowercase (e.g., "example name" becomes "Example Name").
            - **Remove Fab.com ID**: Texture sets downloaded from Fab.com often include an ID in their names (e.g., "concrete plaster rfxxf0 2K", where "rfxxf0" is the ID). Enabling this option removes the ID, resulting in cleaner names like "concrete plaster 2K".
            - **Resolution Suffix**: The `Resolution Suffix` setting now lets you remove resolution suffixes from material names.
        - **Import Fab.com Tags** option available in preferences. Texture sets downloaded from Fab.com often include a JSON file with metadata such as tags and texture-set IDs. This option imports the metadata and adds IDs and tags as asset tags to the material. [More info](preferences.md#import)
    - **`Import Blend Files`**: A new **Skip Existing** option is now available.
- **UI**:
    - Minor interface changes in the **Importing** panel. The **Subfolder Traversing Depth** setting has been moved from preferences directly into the **Importing** panel.
    - The **Import** section in the preferences menu has been reorganized.
- **Bugfixes**:
    - **`Import Textures`**:
        - Fixed an issue where selecting **Object** mapping for texture nodes did not work properly.
        - Fixed a bug where using the **Split CamelCase Names** option in preferences caused other material name settings (like removing underscores) to be ignored.
        - Restored functionality for **Asset Preview Generation During Import** after a code error in previous versions.
    - **`Render Assets`**: Fixed an issue where nested collections were not rendered if they had multiple levels and the top collection was empty.

---

### 1.2.7 <small>2025-01-13</small>
- **Improved Functionality**:
    - **`Import Blend Files`**: Added support for importing additional Asset types, allowing more granular control during import. The "Use Fake User" setting is now mandatory to ensure data integrity.
- **Bugfixes**:
    - **CRITICAL `Render Assets`**: Fixed an issue where objects within nested collections were not rendered.
    - **`Import Blend Files`**: Resolved a bug where importing collections with nested collections caused multiple copies of the nested collections to be created.

---

### 1.2.6 <small>2025-01-03</small>
- **Bugfix**:
    - **`Render Assets`**: Fixed an oversight where a leftover row of code caused the render to crash if the scene was not named "Scene".
    - **`Render Assets`**: The Eevee setting "Screen Tracing Precision" under 'Raytracing' is now properly applied when rendering with Eevee.

---

### 1.2.5 <small>2024-12-28</small>
- **Improved Functionality**:
    - **Utility `Change Node Attributes`**: Now supports setting Boolean socket types when targeting 'Shader Nodes'.
    - **Utility `Change Node Attributes`**: Now supports changing the "Invert" setting for Bump nodes.
    - **Utility `Convert Images`**: Now supports selecting the sampling method when downscaling images. Additionally, the "rescale image" option has been renamed to "downscale image" to clarify its purpose for downscaling.
- **UI**:
    - All input fields that accept user-defined values have had their min & max ranges adjusted to accommodate a wider range of values. If the interface shows a maximum limit, you can, in 99% of cases, manually input a custom value to exceed or fall below the displayed range. This functionality is mentioned in the hover tooltip for each field.
- **Bugfix**:
    - **`Export Assets`**: Fixed a typo in the code that caused issues with asset export.

---

### 1.2.4 <small>2024-12-20</small>
- **Improved Functionality**:
    - **Render Assets**: The max `tilt` has now been adjusted to allow for full 360 degrees of rotation in cases where you do not want to use the `Camera Override` function to reach certain angles.
    - **Utility `Load Asset Previews From Disk`**: Expanded file format support from *only* the most common ones to include all 14 formats supported by Blender. Also, the "filename" field was disabled for clarity since it is not needed when selecting a directory.
- **Misc / UI**:
    - **Export to Blend via Asset Browser**: The file save dialog was unclear when saving as a combined `.blend` file due to the presence of "two" filename fields. Only the field in the panel was correct, while using the other resulted in incorrect save paths. This has now been resolved. The dialog now uses Blender's default filename field, with additional information shown in the panel for clarity.
    - **Importing**: The max `Subfolder Traversing Depth` setting in Preferences has been increased to 50, providing more flexibility for complex folder structures.
- **Bugfixes**:
    - **Render Assets**: (Linux-specific) Issues with saving render presets due to them being stored in the wrong directory have now been resolved.
    - **Export to Blend via Asset Browser**: The `Pack Textures` option was not functioning correctly, and textures were always packed. This option has been temporarily disabled in the interface (to clarify that all textures are packed). The issue will be investigated further soon. **Note**: The `Pack Textures` option works correctly when exporting via the main BatchGenie panel instead of the Asset Browser.

---

### 1.2.3 <small>2024-12-15</small>
- **Improved functionality**:
    - The **`Custom Attributes`** functionality, available in `Import Textures` and the `Replace Shader Nodes` utility, now supports setting Boolean socket types (the socket type added in version 4.1).
- **Misc**:
    - **Dry Run**: Added to several more utilities in the main panel. This allows you to simulate batch processes without making changes, previewing the actions in the console.
    - **Log to File**: A new option in the preferences to log output to a file for troubleshooting purposes.
- **Bugfix**:
    - **`Custom Attributes`**: The functionality available in `Import Textures` and `Replace Shader Nodes` had specific configurations that caused the import/replace button to be grayed out. This issue has now been resolved.

---

### 1.2.2 <small>2024-12-10</small>

- **Improved functionality**:
    - **`Importing Textures`**: Added the `Use Extended Formats` option to support additional image formats when importing textures, allowing BatchGenie to accept all formats supported by Blender.
- **Bugfix**:
    - **`Importing Textures`**: Fixed an issue where texture sets with certain naming schemes could not be imported from the selected root folder.

---

### 1.2.1 <small>2024-12-08</small>

- **New functionality**:
    - **New Utility: `Convert Images`**: Convert images in the selected source to your desired format, supporting bulk processing within Blender's current project or from a specified directory. [More info](utilities.md#convert-images)
    - **New Utility: `Relink Converted Images`**: This utility helps you update Blender's links to images that have been converted to a different file format. [More info](utilities.md#relink-converted-images)
- **Misc**:
    - **Dry Run**: Introduced for the two new utilities above. Simulate the batch process without modifying anything, previewing the actions in the console. Coming soon to other utilities.

---

### 1.2.0 <small>2024-11-29</small>

- **Improved functionality**:
    - **`Importing Textures`**: The "Custom Texture" option now includes the ability to connect the Alpha output in addition to the Color output when using the "Standard Texture" setting.

---

### 1.1.9 <small>2024-11-27</small>

- **New functionality**:
    - **New Utility: `Export Asset Details to Excel`**: This utility allows you to export detailed information about assets from the Asset Browser to an Excel file. Currently, it's fairly basic, but it will be expanded in future updates.
    - **Utility `Batch Rename`**: A new option, "Set Material Names Same as Object Names," allows you to rename materials based on their associated object names. You can choose to append the object name as a prefix, suffix, or completely replace the material name with the object name.
- **Improved functionality**:
    - **`Importing Blend Files`**: You can now modify the names of imported assets by adding either a suffix or a prefix during the import process.
    - **`Importing Textures`**: The "Custom Texture" option has been expanded to allow up to three individual custom textures, instead of being limited to one.
- **Bugfix**:
    - **`Importing Textures`**: The keyword for the "Custom Texture" option is now case-insensitive, as specified in the tooltip.

---

### 1.1.8 <small>2024-11-26</small>

- **Improved functionality**:
    - `Importing Textures`: Added logic to handle custom node groups with built-in Bump nodes. If a node group has a socket input named **"Bump Height"**, the bump texture will now connect directly to it instead of adding an additional Bump node. [More info](import.md#replace-principled-bsdf)
    - `Importing Blend files`: The interface now feels more responsive during imports and displays "Import in progress" to clearly indicate that the operation is running.
- **Misc**:
    - `Blender 4.3`: Verified compatibility with Blender 4.3. This should also apply to all previous versions of BatchGenie, as no breaking changes in version 4.3 affect the components used.

---

### 1.1.7 <small>2024-10-24</small>

- **Improved functionality**:
    - `Render `: The save preset functionality:
        - You can now select exactly which settings to store in the preset, whether it's light, studio, or camera settings.
        - Presets will now be stored in the Blender add-on preset folder, ensuring they remain intact even if you update or reinstall BatchGenie.
        If you are using versions 1.1.5 or 1.1.6 and have saved render presets, please back them up manually via the preferences by using the 'Open Custom Presets Folder' button and copying the files before installing the new version.
        After installation, follow the same steps to paste the files back into the new location.
    - `Export `: Now includes 'Remove Special Characters' under 'Modify Export Filename' to assist with tricky filenames during export. The UI related to this has also been improved.
- **UI**:
    - The 'Info' popups shown in various places in the UI have received a design improvement.
---


### 1.1.6 <small>2024-10-22</small>

- **Improved functionality**:
    - `Render `: When rendering via the main panel, the 'selection' filter has been expanded with more choices. For Object & Material rendering, you can now also choose "Non Assets" as the selection.
- **UI**:
    - Fixed a typo where it said 'Sun Rotation' instead of 'HDRI Rotation' when using rendering presets.
    - 'Save as Preset' had the wrong hover tooltip.
    - Renamed Render settings that used the word 'Backdrop' (such as 'Transparent Backdrop') to 'Studio' for clarity. For example, 'Transparent Studio'.
    - Improved info and error messages in some areas of the UI.
- **Bugfix**:
    - `Render `: The 'Mark as Asset' checkbox is now correctly displayed in the UI when the 'selection filter' is set to 'All objects' while rendering objects.

---

### 1.1.5 <small>2024-10-21</small>

This major update enhances the rendering section and introduces preset functionality, including bundled HDRIs that come with the addon. As a result, the file sizes have increased slightly, and I'm now testing separate builds for Windows, Linux, and Mac.

- **New / Improved functionality**:
    - `Rendering `: The Scene settings have been revamped and now include ready-to-use Presets that automatically set many parameters related to lighting and studio setups. This update also includes bundled HDRIs that come with the addon.
    You still have full manual control as before, but now you have a quick starting point that you can modify to your liking. You can also save custom presets, which will appear in the same list, complete with automatically rendered image previews. More presets will be added in the future.
- **UI**:
    - The Scene settings have been significantly updated to accommodate the new preset functionality. The lighting preview images have also been improved. Previously small, they are now larger and will automatically generate when you add custom HDRIs.
- **Misc**:
    - `Preferences`: Added an option to remove saved 'Render Presets' and a 'Re-generate' button to refresh built-in HDR thumbnails used in Lighting Setups.

---

### 1.1.4 <small>2024-10-16</small>

- **Bugfix**:
    - **CRITICAL `Render`**: The rendering functionality via the main panel had stopped working due to internal changes in previous versions, with rendering still functioning through the Asset Browser. This issue has now been resolved.

---

### 1.1.3 <small>2024-10-15</small>

- **New functionality**:
    - **New utility `Set Origin`**: Adjust object origins to the minimum, maximum, or center along the X, Y, or Z axis based on their bounding box. [More info](utilities.md#set-origin)
- **Bugfix**:
    - **Utility `Change Node Attributes`**: Fixed an issue where the 'Only materials imported by BatchGenie' filter did not work when targeting 'Shader Node'.
- **UI**:
    - Minor improvements: Enhanced tooltips, small layout adjustments, and fixed a few typos.

---

### 1.1.2 <small>2024-10-13</small>

- **Improved functionality**:
    - `Exporting `: When exporting via the Asset Browser, you now have the option to export selected assets as a single combined blend file, in addition to saving them as individual files.
- **Bugfix**:
    - **CRITICAL**: `Add Tags`: A previous update caused all 'Smart Tags' to stop working. This issue has now been resolved, restoring full functionality to the tagging system.

---

### 1.1.1 <small>2024-10-13</small>

- **Improved functionality**:
    - `Exporting `: When exporting via the Asset Browser, you can now add a suffix to handle duplicate asset names. For instance, if you're exporting two assets both named "Cube," you can choose how they are renamed, such as "Cube.blend" and "Cube (2).blend".
- **Bugfix**:
    - `Exporting`: Fixed an issue where exporting local Assets from your current file via the Asset Browser, while not in the 'Current File' library, resulted in empty .blend files. This has now been resolved.

---

### 1.1.0 <small>2024-10-12</small>

- **Bugfix**:
    - `Rendering`: Fixed an issue where rendering for certain collections would complete, but the cleanup of temporary files failed due to specific material node-groups. As a result, BatchGenie was unable to set the newly rendered image as the Asset thumbnail. This has now been resolved.
- **UI**:
    - `Exporting`: A progress bar is now displayed when exporting, with plans to implement it in other areas soon.

---

### 1.0.9 <small>2024-10-10</small>

- **New functionality**:
    - `Importing`: Batch import of blend files is now available. Import Objects, Collections and Materials. [More info](import.md#import-blend-files)
- **Improved functionality**:
    - `Rendering Assets`: The chosen 'Lighting Setup' will now be saved, so the next time you start Blender, it will remember your setting.
- **UI**:
    - Redesigned Add-on `Preferences` with a new tabbed layout, replacing the previous single-page "wall of text" format for better organization and usability.

---

### 1.0.8 <small>2024-10-07</small>

- **New functionality**:
    - `Exporting`: Now integrated into the Asset Browser. More settings added; customize the export name & pack texture option. [More info](export.md)
    - New utility `Pack Textures`: Inside the Asset Browser, you can now select Assets and pack the textures for these Assets, ensuring that your Assets maintain their appearance without relying on external texture files. [More info](utilities.md#pack-textures)
- **Bugfix**:
    - `Exporting`: The `Keep Outliner Hierarchy` setting now correctly exports objects that are directly in the root Scene Collection.
    - Utility `Load previews from disk`: Sometimes when selecting the folder, the current blend file was selected in the file browser, causing the selected file path to include the .blend file, which resulted in no previews being found. This has now been resolved.
- **UI**:
    - Minor UI and layout adjustments.

---

### 1.0.7 <small>2024-10-05</small>

- **New / Improved functionality**:
    - `Exporting `: The functionality has been expanded to support exporting collections and materials. New options are now available to customize the export process. [More info](export.md)

---

### 1.0.6 <small>2024-10-04</small>

- **New functionality**:
    - New `Export objects`: Basic exporting functionality added. In the near future, the export functionality will be expanded and will also be available in the Asset Browser for easy exporting of your Assets in various formats. [More info](export.md)
- **Improved functionality**:
    - Utilities: Enhanced parallel processing speed. When working with external blend files, BatchGenie utilizes multiple Blender processes in the background for quicker performance. Now with even greater speed, achieving up to a 0.5-second improvement per external blend file opened.
- **Bugfix**:
    - `Rendering Assets`: A potential issue that could cause minor problems with cleaning temporary files after rendering has now been resolved.

---

### 1.0.5 <small>2024-10-03</small>

- **Bugfix**:
    - **CRITICAL**: `Rendering Assets`: Rendering Assets via the Asset Browser that are already present in your open scene may result in those objects being deleted from the scene. This issue has now been fixed, along with improvements to how temporary data is handled internally.
    - Utility `Replace Shader Nodes` / Import Textures > setting `Replace Principled BSDF`: Geometry nodes are now filtered out, displaying only Shader Editor nodes in the dropdown.

---

### 1.0.4 <small>2024-10-01</small>

- **Improved functionality**:
    - Utility `Load previews from disk`: Now supports more image formats.
- **Bugfix**:
    - **CRITICAL**: `Rendering Assets`: Issue with rendering objects via the Asset Browser caused in 1.0.3 update. Now fixed.

---

### 1.0.3 <small>2024-10-01</small>

- **New functionality**:
    - New Utility `Load previews from disk`: Load custom Asset Preview images from a specified directory. [More info](utilities.md#load-previews-from-disk)
- **Bugfix**:
    - **CRITICAL**: Importing Textures: Importing metallic textures had unfortunately broken in one of the updates leading to 1.0.0. This has now been fixed.

---

### 1.0.2 <small>2024-09-27</small>

- **New functionality**:
    - Utility `Add Asset Tag`: New Smart Tag: 'Material Type'. Tags the material with its type: "Texture-based" or "Procedural", with an option to include node counts for both types. Example: "Procedural (56 nodes)". [More info](utilities.md)
    - `Render Asset Previews`:  'Add Incremental Filename Suffix' option: When saving Asset previews externally, this feature automatically appends an incrementing number to the end of filenames, ensuring each version is saved without overwriting previous files. This allows you to quickly iterate renders with various settings. For example, if your object is named "Suzanne", rendered images will be saved as "Suzanne[1].png", "Suzanne[2].png", etc. [More info](render_asset_previews.md#render-settings)
- **UI**:
    - Improved UI & tooltips for the previously added 'Filtering' functions for some utilities.
    - Improved the layout & content of the 'info' popup that is available in many places.
    - Added info button to the 'render settings' that displays useful information.
- **Bugfix**:
    - Utility `Replace Shader Nodes`: The option 'Only materials imported by BatchGenie' did not work this utility but is now fixed.

---

### 1.0.1 <small>2024-09-25</small>

- **New functionality**:
    - Utilities: `Change Node Attributes`, `Change Material Settings`, & `Replace Shader Nodes`: New keyword filtering function to filter materials by their names to include or exclude them from the batch process.
- **Improved functionality**:
    - Utilities: `Change Node Attributes`, `Change Material Settings`, & `Replace Shader Nodes`: 'Selection' dropdown has new options: 'Materials marked as Assets' & 'Materials NOT marked as Assets' to help target specific materials.
    - Utility: `Batch Rename`: the 'Set Mesh names same as Object names' setting now has a 'Selection' dropdown, which helps you target specific objects such as selected objects, etc., and not just all objects in your file.
- **UI**:
    - Minor layout adjustments and a few typos fixed
- **Misc**:
    - 'Only materials imported by BatchGenie' setting is no longer on by default.

---

### 1.0.0 <small>2024-09-21</small>

  > Compatibility: Blender 4.2 LTS +

  - First public release.

</div> <!-- /Changelog -->