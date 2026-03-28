/**
 * Dynamically adds icons to changelog category titles.
 */
document$.subscribe(() => {
    const iconMap = {
        "New Functionality": "✨",
        "Improved Functionality": "💪",
        "New / Improved Functionality": "💪",
        "Interface": "💻",
        "Other": "🔧",
        "Bug Fixes": "🐛"
    };
    document.querySelectorAll(".changelog li > strong").forEach(el => {
        const text = el.textContent.trim();
        if (iconMap[text]) {
            el.innerHTML = `${iconMap[text]} ${el.innerHTML}`;
        }
    });
});
