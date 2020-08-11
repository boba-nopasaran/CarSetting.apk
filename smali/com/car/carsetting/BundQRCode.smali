.class public Lcom/car/carsetting/BundQRCode;
.super Landroid/widget/RelativeLayout;
.source "BundQRCode.java"


# static fields
.field private static final SERIALNO:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field mOverseaVersion:Z

.field private mQRImageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/carsetting/BundQRCode;->SERIALNO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/car/carsetting/BundQRCode;->mHandler:Landroid/os/Handler;

    const-string v0, "ro.market.area"

    const-string v1, "china"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "china"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/car/carsetting/BundQRCode;->mOverseaVersion:Z

    invoke-direct {p0}, Lcom/car/carsetting/BundQRCode;->initView()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/car/carsetting/BundQRCode;->mHandler:Landroid/os/Handler;

    const-string v0, "ro.market.area"

    const-string v1, "china"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "china"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/car/carsetting/BundQRCode;->mOverseaVersion:Z

    invoke-direct {p0}, Lcom/car/carsetting/BundQRCode;->initView()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/car/carsetting/BundQRCode;->mHandler:Landroid/os/Handler;

    const-string v0, "ro.market.area"

    const-string v1, "china"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "china"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/car/carsetting/BundQRCode;->mOverseaVersion:Z

    invoke-direct {p0}, Lcom/car/carsetting/BundQRCode;->initView()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/carsetting/BundQRCode;->SERIALNO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/carsetting/BundQRCode;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/BundQRCode;->mQRImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/carsetting/BundQRCode;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/BundQRCode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initView()V
    .locals 4

    invoke-virtual {p0}, Lcom/car/carsetting/BundQRCode;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030004

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v2, 0x7f0a000f

    invoke-virtual {p0, v2}, Lcom/car/carsetting/BundQRCode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/car/carsetting/BundQRCode;->mQRImageView:Landroid/widget/ImageView;

    const v2, 0x7f0a0011

    invoke-virtual {p0, v2}, Lcom/car/carsetting/BundQRCode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/car/carsetting/BundQRCode;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08004c

    invoke-static {v2, v3}, Lcom/car/common/OEM;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/car/carsetting/BundQRCode;->updateQRcodeImage()V

    return-void
.end method

.method private updateQRcodeImage()V
    .locals 1

    new-instance v0, Lcom/car/carsetting/BundQRCode$1;

    invoke-direct {v0, p0}, Lcom/car/carsetting/BundQRCode$1;-><init>(Lcom/car/carsetting/BundQRCode;)V

    invoke-virtual {v0}, Lcom/car/carsetting/BundQRCode$1;->start()V

    return-void
.end method
