.class public Lcom/car/carsetting/QRBitmapGenerator;
.super Ljava/lang/Object;
.source "QRBitmapGenerator.java"


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final DEFAULT_QRCODE_WIDTH:I = 0x96

.field private static final TAG:Ljava/lang/String; = "QRBitmapGenarator"

.field private static final WHITE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_1

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eqz v7, :cond_2

    if-nez v6, :cond_3

    :cond_2
    move-object p0, v0

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    int-to-float v8, v7

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x40a00000    # 5.0f

    div-float/2addr v8, v9

    int-to-float v9, v4

    div-float v5, v8, v9

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, p0, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    div-int/lit8 v8, v7, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    invoke-virtual {v1, v5, v5, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    sub-int v8, v7, v4

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-int v9, v6, v3

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v1, p1, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/16 v8, 0x1f

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_1
.end method

.method public static createDefaultQREncodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/16 v0, 0x96

    invoke-static {p0, v0, v0}, Lcom/car/carsetting/QRBitmapGenerator;->createQREncodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createQREncodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/car/carsetting/QRBitmapGenerator;->createQREncodeBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createQREncodeBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 22

    move-object/from16 v2, p0

    if-nez v2, :cond_1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Lcom/car/carsetting/QRBitmapGenerator;->guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    new-instance v6, Ljava/util/EnumMap;

    const-class v3, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v6, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    if-eqz v16, :cond_2

    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, v16

    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v3, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v4, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    const/16 v19, 0x0

    :try_start_0
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v14

    mul-int v3, v10, v14

    new-array v8, v3, [I

    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    if-ge v0, v14, :cond_5

    mul-int v18, v21, v10

    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    if-ge v0, v10, :cond_4

    add-int v4, v18, v20

    invoke-virtual/range {v19 .. v21}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v3, -0x1000000

    :goto_3
    aput v3, v8, v4

    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    :catch_0
    move-exception v17

    const-string v3, "QRBitmapGenarator"

    const-string v4, "createQREncodeBitmap"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    goto :goto_0

    :catch_1
    move-exception v15

    const-string v3, "QRBitmapGenarator"

    const-string v4, "createQREncodeBitmap"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    :cond_5
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v14, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    invoke-static {v7, v0}, Lcom/car/carsetting/QRBitmapGenerator;->addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_0
.end method

.method private static guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    const-string v1, "UTF-8"

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
