function ImgSize(Img, FitWidth, FitHeight, ShowFont, ImgStyle, FitSize) {
    var _Img = new Image();
    _Img.src = Img.src;
    if (_Img.width > 0 && _Img.height > 0) {
        if (FitWidth != null && FitHeight != null) { //Ex:ImgSize(this,120,120)
            if (_Img.width / _Img.height >= FitWidth / FitHeight) {
                if (_Img.width > FitWidth) {
                    Img.width = FitWidth;
                    Img.height = (_Img.height * FitWidth) / _Img.width;
                } else {
                    Img.width = _Img.width;
                    Img.height = _Img.height;
                }
            } else {
                if (_Img.height > FitHeight) {
                    Img.height = FitHeight;
                    Img.width = (_Img.width * FitHeight) / _Img.height;
                } else {
                    Img.width = _Img.width;
                    Img.height = _Img.height;
                }
            }
        } else {
            if (FitWidth == null && FitHeight != null) { //Ex:ImgSize(this,null,120)
                Img.height = FitHeight;
            } else if (FitWidth != null && FitHeight == null) { //Ex:ImgSize(this,120,null)
                Img.width = FitWidth;
            } else if (FitWidth == null && FitHeight == null) { //Ex:ImgSize(this,null,null,'',0,120)
                if (_Img.width / _Img.height < 1) {
                    if (_Img.width > FitSize) {
                        Img.width = FitSize;
                    } else {
                        Img.width = _Img.width;
                    }
                } else {
                    if (_Img.height > FitSize) {
                        Img.height = FitSize;
                    } else {
                        Img.height = _Img.height;
                    }
                }
            }
        }
        if (ShowFont) Img.alt = ShowFont; //Ex:ImgSize(this,120,120,'��ʾ')
        if (ImgStyle) { //Ex:ImgSize(this,120,120,'',1)
            Img.alt = "ͼƬ���" + _Img.width + "��" + _Img.height;
            Img.onclick = function () {
                window.open(this.src);
            }
            Img.style.cursor = "pointer";
        }
    }
}