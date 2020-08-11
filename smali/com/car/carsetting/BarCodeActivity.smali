.class public Lcom/car/carsetting/BarCodeActivity;
.super Landroid/app/Activity;
.source "BarCodeActivity.java"


# static fields
.field private static final NUMBER_MSG:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "BarCodeActivity"


# instance fields
.field private barCodeWidth:I

.field private mDeviceID:Ljava/lang/String;

.field private mDeviceIdImage:Landroid/widget/ImageView;

.field private mDeviceIdText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mICCID:Ljava/lang/String;

.field private mIMEI:Ljava/lang/String;

.field private mIccidImage:Landroid/widget/ImageView;

.field private mIccidText:Landroid/widget/TextView;

.field private mImeiImage:Landroid/widget/ImageView;

.field private mImeiText:Landroid/widget/TextView;

.field private mManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mIMEI:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mDeviceID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mICCID:Ljava/lang/String;

    new-instance v0, Lcom/car/carsetting/BarCodeActivity$1;

    invoke-direct {v0, p0}, Lcom/car/carsetting/BarCodeActivity$1;-><init>(Lcom/car/carsetting/BarCodeActivity;)V

    iput-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/car/carsetting/BarCodeActivity;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/carsetting/BarCodeActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mIMEI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/car/carsetting/BarCodeActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mDeviceIdImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/car/carsetting/BarCodeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/BarCodeActivity;->mIMEI:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/car/carsetting/BarCodeActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mDeviceIdText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/carsetting/BarCodeActivity;)I
    .locals 1

    iget v0, p0, Lcom/car/carsetting/BarCodeActivity;->barCodeWidth:I

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/car/carsetting/BarCodeActivity;->createBarcodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/carsetting/BarCodeActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mImeiImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/carsetting/BarCodeActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mImeiText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/carsetting/BarCodeActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mICCID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/car/carsetting/BarCodeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/BarCodeActivity;->mICCID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/car/carsetting/BarCodeActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mIccidImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/car/carsetting/BarCodeActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mIccidText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/car/carsetting/BarCodeActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/car/carsetting/BarCodeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/BarCodeActivity;->mDeviceID:Ljava/lang/String;

    return-object p1
.end method

.method private static createBarcodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 21

    move-object/from16 v2, p0

    if-nez v2, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Lcom/car/carsetting/BarCodeActivity;->guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    new-instance v6, Ljava/util/EnumMap;

    const-class v3, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v6, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    if-eqz v16, :cond_1

    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, v16

    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v3, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v4, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    const/16 v18, 0x0

    :try_start_0
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v14

    mul-int v3, v10, v14

    new-array v8, v3, [I

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    if-ge v0, v14, :cond_4

    mul-int v17, v20, v10

    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v0, v10, :cond_3

    add-int v4, v17, v19

    invoke-virtual/range {v18 .. v20}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v3, -0x1000000

    :goto_3
    aput v3, v8, v4

    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    :catch_0
    move-exception v15

    const-string v3, "BarCodeActivity"

    const-string v4, "createQREncodeBitmap"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_4
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v14, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0
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

.method private initView()V
    .locals 4

    invoke-virtual {p0}, Lcom/car/carsetting/BarCodeActivity;->getAndroiodScreenProperty()I

    move-result v0

    iput v0, p0, Lcom/car/carsetting/BarCodeActivity;->barCodeWidth:I

    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/car/carsetting/BarCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mImeiImage:Landroid/widget/ImageView;

    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/car/carsetting/BarCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mIccidImage:Landroid/widget/ImageView;

    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/car/carsetting/BarCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mDeviceIdImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/car/carsetting/BarCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mImeiText:Landroid/widget/TextView;

    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/car/carsetting/BarCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mIccidText:Landroid/widget/TextView;

    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/car/carsetting/BarCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mDeviceIdText:Landroid/widget/TextView;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/car/carsetting/BarCodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/car/carsetting/BarCodeActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public getAndroiodScreenProperty()I
    .locals 4

    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/car/carsetting/BarCodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/car/carsetting/BarCodeActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/car/carsetting/BarCodeActivity;->initView()V

    return-void
.end method
