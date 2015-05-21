var ImageSwitcher = function (targetImg, images) {
    this.targetImg = targetImg;
    this.images = images;
    if (!targetImg) {
        this.targetImg = targetImg = document.createElement("img");
        document.body.appendChild(targetImg);
    }
};
ImageSwitcher.prototype = {
    targetImg: null,
    images: null,
    currentImageIndex: 0,
    timer: null,
    start: function (interval) {
        var self = this;
        this.switchImage(0);
        this.timer = setInterval(function () {
            self.switchImage(++self.currentImageIndex);
        }, interval);
    },
    stop: function () {
        if (this.timer) {
            clearInterval(this.timer);
            this.timer = null;
        }
    },
    switchImage: function (imageIndex) {
        this.targetImg.src = this.images[imageIndex];
    }

};