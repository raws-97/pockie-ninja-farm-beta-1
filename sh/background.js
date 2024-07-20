chrome.runtime.onInstalled.addListener(function(details) {
    const link = "https://www.paypal.com/donate/?hosted_button_id=WBGKBJ73EDAW2";  // Substitua com o link desejado

    if (details.reason === "install" || details.reason === "update") {
        chrome.tabs.create({ url: link });
    }
});
