.class public final Lcom/car/carsetting/zxing/qrcode/decoder/Version$ECBlocks;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/zxing/qrcode/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ECBlocks"
.end annotation


# instance fields
.field private final ecBlocks:[Lcom/car/carsetting/zxing/qrcode/decoder/Version$ECB;

.field private final ecCodewordsPerBlock:I


# direct methods
.method varargs constructor <init>(I[Lcom/car/carsetting/zxing/qrcode/decoder/Version$ECB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/car/carsetting/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    iput-object p2, p0, Lcom/car/carsetting/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/car/carsetting/zxing/qrcode/decoder/Version$ECB;

    return-void
.end method


# virtual methods
.method public getECBlocks()[Lcom/car/carsetting/zxing/qrcode/decoder/Version$ECB;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/car/carsetting/zxing/qrcode/decoder/Version$ECB;

    return-object v0
.end method

.method public getECCodewordsPerBlock()I
    .locals 1

    iget v0, p0, Lcom/car/carsetting/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    return v0
.end method

.method public getNumBlocks()I
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/car/carsetting/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/car/carsetting/zxing/qrcode/decoder/Version$ECB;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/car/carsetting/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v4
.end method

.method public getTotalECCodewords()I
    .locals 2

    iget v0, p0, Lcom/car/carsetting/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    invoke-virtual {p0}, Lcom/car/carsetting/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method