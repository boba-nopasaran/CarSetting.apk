.class public final Lcom/car/carsetting/zxing/MultiFormatWriter;
.super Ljava/lang/Object;
.source "MultiFormatWriter.java"

# interfaces
.implements Lcom/car/carsetting/zxing/Writer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/carsetting/zxing/MultiFormatWriter$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/car/carsetting/zxing/BarcodeFormat;II)Lcom/car/carsetting/zxing/common/BitMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/carsetting/zxing/WriterException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/car/carsetting/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/car/carsetting/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/car/carsetting/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/car/carsetting/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/car/carsetting/zxing/common/BitMatrix;
    .locals 6
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

    sget-object v1, Lcom/car/carsetting/zxing/MultiFormatWriter$1;->$SwitchMap$com$car$carsetting$zxing$BarcodeFormat:[I

    invoke-virtual {p2}, Lcom/car/carsetting/zxing/BarcodeFormat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No encoder available for format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v0, Lcom/car/carsetting/zxing/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/car/carsetting/zxing/qrcode/QRCodeWriter;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/car/carsetting/zxing/Writer;->encode(Ljava/lang/String;Lcom/car/carsetting/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/car/carsetting/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
