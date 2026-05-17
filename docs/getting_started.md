To get started, you have two options: Watch the introductory video guide below for a step-by-step walkthrough of the basics, or follow the written documentation on this site.

### Video Introduction

<div class="youtube-wrapper">
    <iframe id="videoPlayer" width="560" height="315" src="https://www.youtube.com/embed/Jy8BUlcdEkk?rel=0" frameborder="0" allowfullscreen></iframe>
</div>

??? info2 "Video Timestamps"
    <div class="chapter-list" markdown>

    - [<span class="timestamp">00:00</span> Intro](javascript:void(0))
    - [<span class="timestamp">00:21</span> Basics](javascript:void(0))
    - [<span class="timestamp">01:29</span> Importing Textures](javascript:void(0))
    - [<span class="timestamp">02:16</span> Import Settings](javascript:void(0))
    - [<span class="timestamp">04:13</span> Import Settings - Replace Principled BSDF](javascript:void(0))
    - [<span class="timestamp">06:12</span> Import Settings - Custom Attributes](javascript:void(0))
    - [<span class="timestamp">08:09</span> Import Settings - Custom Texture](javascript:void(0))
    - [<span class="timestamp">09:17</span> Import Preferences](javascript:void(0))
    - [<span class="timestamp">10:13</span> Rendering Asset Previews](javascript:void(0))
    - [<span class="timestamp">11:06</span> Rendering via the panel](javascript:void(0))
    - [<span class="timestamp">12:25</span> Render Settings](javascript:void(0))
    - [<span class="timestamp">15:25</span> Rendering via the Panel (part 2)](javascript:void(0))
    - [<span class="timestamp">16:33</span> Render Settings - Studio Presets](javascript:void(0))
    - [<span class="timestamp">17:49</span> Render Settings - Camera Override](javascript:void(0))
    - [<span class="timestamp">20:49</span> Rendering via the Asset Browser](javascript:void(0))
    - [<span class="timestamp">22:38</span> Utilities](javascript:void(0))
    - [<span class="timestamp">22:57</span> Utilities - Locating the Utilities](javascript:void(0))
    - [<span class="timestamp">23:36</span> Utilities - Quick Tips](javascript:void(0))
    - [<span class="timestamp">24:01</span> Utility - Change Node Attributes](javascript:void(0))
    - [<span class="timestamp">27:56</span> Utility - Change Material Settings](javascript:void(0))
    - [<span class="timestamp">29:02</span> Utility - Replace Shader Nodes](javascript:void(0))
    - [<span class="timestamp">31:10</span> Utility - Find Unconnected Nodes](javascript:void(0))
    - [<span class="timestamp">34:47</span> Utility - Find Zero Strength Nodes](javascript:void(0))
    - [<span class="timestamp">36:40</span> Utility - Color Space Validator](javascript:void(0))
    - [<span class="timestamp">38:40</span> Utility - Batch Rename](javascript:void(0))
    - [<span class="timestamp">40:37</span> Utility - Reload Images](javascript:void(0))
    - [<span class="timestamp">41:01</span> Utility - Clean File](javascript:void(0))
    - [<span class="timestamp">41:48</span> Shader Editor Utilities](javascript:void(0))
    - [<span class="timestamp">42:01</span> Utility - Replace Node](javascript:void(0))
    - [<span class="timestamp">43:34</span> Utility - Find Zero Strength Nodes (Shader Editor)](javascript:void(0))
    - [<span class="timestamp">44:37</span> Asset Browser Utilities](javascript:void(0))
    - [<span class="timestamp">45:05</span> Utility - Add Asset Tags](javascript:void(0))
    - [<span class="timestamp">49:38</span> Utility - Combine & Split Asset Tags](javascript:void(0))
    - [<span class="timestamp">50:52</span> Utility - Remove Asset Tags](javascript:void(0))
    - [<span class="timestamp">52:52</span> Utility - Asset Metadata](javascript:void(0))
    - [<span class="timestamp">54:03</span> Utility - Move Assets](javascript:void(0))
    - [<span class="timestamp">55:37</span> Preferences](javascript:void(0))
    - [<span class="timestamp">57:12</span> Wrap-Up](javascript:void(0))
    - [<span class="timestamp">57:38</span> END](javascript:void(0))

    </div>

<script>
document.querySelectorAll('a').forEach(link => {
    link.addEventListener('click', function(event) {
        event.preventDefault();  // Prevent the default link behavior (including the jump)
        var videoPlayer = document.getElementById('videoPlayer');
        var time = this.innerText.match(/(\d+):(\d+)/);  // Extract the minutes and seconds from the link text
        if (time) {
            var seconds = parseInt(time[1]) * 60 + parseInt(time[2]);  // Convert time to seconds
            videoPlayer.src = `https://www.youtube.com/embed/Jy8BUlcdEkk?start=${seconds}&autoplay=1&?rel=0`;
        }
    });
});
</script>

### Installation

> BatchGenie has been verified to work with Blender on Windows & Linux (it should, in theory, work on macOS as well). It requires Blender 4.2 or newer and has been verified to work on versions 4.2 and 4.3.

To start using BatchGenie, you need to install the add-on in Blender. Follow these steps:

1. Download the BatchGenie add-on zip file from the store you purchased it from.
2. Open Blender and go to `Edit > Preferences`.
3. In the Preferences window, navigate to the `Add-ons` tab.
4. Locate the `Add-ons Settings` (:octicons-chevron-down-12: icon) in the top right corner.
5. Click on `Install from Disk` and select the downloaded BatchGenie zip file.

!!! info2 "Updates"
    BatchGenie respects your privacy. It operates offline and does not collect any data. Therefore, there is no auto-update functionality within the add-on. For updates, simply download the updated add-on manually from the store where you purchased it, uninstall the old version and reinstall the new using the same steps outlined in the instructions above.


### Finding BatchGenie and Using the Documentation

BatchGenie is located in the N-Panel inside the `3D Viewport` under a tab named `BatchGenie`, as shown in the image below. Alternatively, you can place it under the `Tool` tab by changing this setting in the Preferences.

![Addon Location](images/addon_location[2x].png){ .img-box align=left width=36% }

Every feature includes hover-over tooltips, providing quick and detailed explanations directly within the add-on interface, making it easy to understand functionality without needing to leave the workspace. Some areas also have an extra :octicons-question-24: icon, which opens a popup with additional information and a link to the relevant section of the documentation for further instructions.


For more comprehensive guidance, you can access the full documentation by clicking the :blender_icon_help:icon in the BatchGenie main panel.