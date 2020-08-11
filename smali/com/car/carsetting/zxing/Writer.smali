.class public interface abstract Lcom/car/carsetting/zxing/Writer;
.super Ljava/lang/Object;
.source "Writer.java"


# virtual methods
.method public abstract encode(Ljava/lang/String;Lcom/car/carsetting/zxing/BarcodeFormat;II)Lcom/car/carsetting/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/carsetting/zxing/WriterException;
        }
    .end annotation
.end method

.method public abstract encode(Ljava/lang/String;Lcom/car/carsetting/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/car/carsetting/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/car/carsetting/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/car/carsetting/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/car/carsetting/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/carsetting/zxing/WriterException;
        }
    .end annotation
.end method
