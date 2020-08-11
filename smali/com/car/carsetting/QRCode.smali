.class public Lcom/car/carsetting/QRCode;
.super Landroid/widget/RelativeLayout;
.source "QRCode.java"


# static fields
.field private static final CARASSIST_URL:Ljava/lang/String;

.field private static final MSG_RESET_COUNT:I = 0x1

.field private static final SERIALNO:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CarSetting_QRCode"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mCountClick:I

.field private mDeviceID:Landroid/widget/TextView;

.field private volatile mDeviceOnline:Z

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mLastUrl:Ljava/lang/String;

.field private mLogoBmp:Landroid/graphics/Bitmap;

.field private mQrcodeUpdater:Ljava/lang/Runnable;

.field private mStatus:Landroid/widget/TextView;

.field private volatile mStopUpdateQrCode:Z

.field private mTip:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "app.download.url"

    const-string v1, "http://web.carassist.cn/download.html"

    invoke-static {v0, v1}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/carsetting/QRCode;->CARASSIST_URL:Ljava/lang/String;

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/carsetting/QRCode;->SERIALNO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/car/carsetting/QRCode;->mStopUpdateQrCode:Z

    iput-boolean v0, p0, Lcom/car/carsetting/QRCode;->mDeviceOnline:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/car/carsetting/QRCode;->mCountClick:I

    new-instance v0, Lcom/car/carsetting/QRCode$1;

    invoke-direct {v0, p0}, Lcom/car/carsetting/QRCode$1;-><init>(Lcom/car/carsetting/QRCode;)V

    iput-object v0, p0, Lcom/car/carsetting/QRCode;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/carsetting/QRCode$3;

    invoke-direct {v0, p0}, Lcom/car/carsetting/QRCode$3;-><init>(Lcom/car/carsetting/QRCode;)V

    iput-object v0, p0, Lcom/car/carsetting/QRCode;->mQrcodeUpdater:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/car/carsetting/QRCode;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/car/carsetting/QRCode;->mStopUpdateQrCode:Z

    iput-boolean v0, p0, Lcom/car/carsetting/QRCode;->mDeviceOnline:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/car/carsetting/QRCode;->mCountClick:I

    new-instance v0, Lcom/car/carsetting/QRCode$1;

    invoke-direct {v0, p0}, Lcom/car/carsetting/QRCode$1;-><init>(Lcom/car/carsetting/QRCode;)V

    iput-object v0, p0, Lcom/car/carsetting/QRCode;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/carsetting/QRCode$3;

    invoke-direct {v0, p0}, Lcom/car/carsetting/QRCode$3;-><init>(Lcom/car/carsetting/QRCode;)V

    iput-object v0, p0, Lcom/car/carsetting/QRCode;->mQrcodeUpdater:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/car/carsetting/QRCode;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/car/carsetting/QRCode;->mStopUpdateQrCode:Z

    iput-boolean v0, p0, Lcom/car/carsetting/QRCode;->mDeviceOnline:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/car/carsetting/QRCode;->mCountClick:I

    new-instance v0, Lcom/car/carsetting/QRCode$1;

    invoke-direct {v0, p0}, Lcom/car/carsetting/QRCode$1;-><init>(Lcom/car/carsetting/QRCode;)V

    iput-object v0, p0, Lcom/car/carsetting/QRCode;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/carsetting/QRCode$3;

    invoke-direct {v0, p0}, Lcom/car/carsetting/QRCode$3;-><init>(Lcom/car/carsetting/QRCode;)V

    iput-object v0, p0, Lcom/car/carsetting/QRCode;->mQrcodeUpdater:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/car/carsetting/QRCode;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/car/carsetting/QRCode;)I
    .locals 1

    iget v0, p0, Lcom/car/carsetting/QRCode;->mCountClick:I

    return v0
.end method

.method static synthetic access$002(Lcom/car/carsetting/QRCode;I)I
    .locals 0

    iput p1, p0, Lcom/car/carsetting/QRCode;->mCountClick:I

    return p1
.end method

.method static synthetic access$010(Lcom/car/carsetting/QRCode;)I
    .locals 2

    iget v0, p0, Lcom/car/carsetting/QRCode;->mCountClick:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/car/carsetting/QRCode;->mCountClick:I

    return v0
.end method

.method static synthetic access$100(Lcom/car/carsetting/QRCode;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/QRCode;->mDeviceID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/car/carsetting/QRCode;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/QRCode;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/car/carsetting/QRCode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/QRCode;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/car/carsetting/QRCode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/car/carsetting/QRCode;->mStopUpdateQrCode:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/car/carsetting/QRCode;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/QRCode;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/car/carsetting/QRCode;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/QRCode;->mQrcodeUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/carsetting/QRCode;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/QRCode;->mStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/carsetting/QRCode;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/QRCode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/carsetting/QRCode;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/QRCode;->mLogoBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/car/carsetting/QRCode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/QRCode;->mLogoBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/carsetting/QRCode;->CARASSIST_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/carsetting/QRCode;->SERIALNO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/car/carsetting/QRCode;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/carsetting/QRCode;->mDeviceOnline:Z

    return v0
.end method

.method static synthetic access$702(Lcom/car/carsetting/QRCode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/car/carsetting/QRCode;->mDeviceOnline:Z

    return p1
.end method

.method static synthetic access$800(Lcom/car/carsetting/QRCode;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/QRCode;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/car/carsetting/QRCode;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/QRCode;->mLastUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/car/carsetting/QRCode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/QRCode;->mLastUrl:Ljava/lang/String;

    return-object p1
.end method

.method private initView(Landroid/content/Context;)V
    .locals 5

    iput-object p1, p0, Lcom/car/carsetting/QRCode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/car/carsetting/QRCode;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030008

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v2, 0x7f0a001e

    invoke-virtual {p0, v2}, Lcom/car/carsetting/QRCode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/car/carsetting/QRCode;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f0a001c

    invoke-virtual {p0, v2}, Lcom/car/carsetting/QRCode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/car/carsetting/QRCode;->mDeviceID:Landroid/widget/TextView;

    const v2, 0x7f0a001d

    invoke-virtual {p0, v2}, Lcom/car/carsetting/QRCode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/car/carsetting/QRCode;->mStatus:Landroid/widget/TextView;

    const v2, 0x7f0a001f

    invoke-virtual {p0, v2}, Lcom/car/carsetting/QRCode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/car/carsetting/QRCode;->mTip:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/car/carsetting/QRCode;->mTip:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/car/carsetting/QRCode;->mContext:Landroid/content/Context;

    const v4, 0x7f08004e

    invoke-static {v3, v4}, Lcom/car/common/OEM;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/car/carsetting/QRCode;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/car/carsetting/QRCode;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/car/carsetting/QRCode;->mDeviceID:Landroid/widget/TextView;

    sget-object v3, Lcom/car/carsetting/QRCode;->SERIALNO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/car/carsetting/QRCode;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/car/carsetting/QRCode$2;

    invoke-direct {v3, p0}, Lcom/car/carsetting/QRCode$2;-><init>(Lcom/car/carsetting/QRCode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/car/carsetting/QRCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x78

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/car/carsetting/QRCode;->mImageView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    iget-object v0, p0, Lcom/car/carsetting/QRCode;->mDeviceID:Landroid/widget/TextView;

    sget-object v1, Lcom/car/carsetting/QRCode;->SERIALNO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public hideStatusAndTips()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/car/carsetting/QRCode;->mDeviceID:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/carsetting/QRCode;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/carsetting/QRCode;->mTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/car/carsetting/QRCode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/carsetting/QRCode;->mQrcodeUpdater:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const-string v0, "CarSetting_QRCode"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/carsetting/QRCode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/carsetting/QRCode;->mQrcodeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
