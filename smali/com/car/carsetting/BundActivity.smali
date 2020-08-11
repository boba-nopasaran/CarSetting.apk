.class public Lcom/car/carsetting/BundActivity;
.super Landroid/app/Activity;
.source "BundActivity.java"

# interfaces
.implements Lcom/car/carsetting/MyApplication$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/carsetting/BundActivity$CarCloudCallback;
    }
.end annotation


# static fields
.field private static HEADLESS:Z = false

.field private static final TAG:Ljava/lang/String; = "CarSetting.BundActivity"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mCarCloud:Lcom/car/common/ICarCloud;

.field private mCarCloudCallback:Lcom/car/carsetting/BundActivity$CarCloudCallback;

.field mOverseaVersion:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.product.class"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "headless"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/carsetting/BundActivity;->HEADLESS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

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
    iput-boolean v0, p0, Lcom/car/carsetting/BundActivity;->mOverseaVersion:Z

    new-instance v0, Lcom/car/carsetting/BundActivity$CarCloudCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/car/carsetting/BundActivity$CarCloudCallback;-><init>(Lcom/car/carsetting/BundActivity;Lcom/car/carsetting/BundActivity$1;)V

    iput-object v0, p0, Lcom/car/carsetting/BundActivity;->mCarCloudCallback:Lcom/car/carsetting/BundActivity$CarCloudCallback;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/car/carsetting/BundActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/BundActivity;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method private getCarCloud()V
    .locals 3

    invoke-static {}, Lcom/car/carsetting/MyApplication;->getCarCloud()Lcom/car/common/ICarCloud;

    move-result-object v1

    iput-object v1, p0, Lcom/car/carsetting/BundActivity;->mCarCloud:Lcom/car/common/ICarCloud;

    iget-object v1, p0, Lcom/car/carsetting/BundActivity;->mCarCloud:Lcom/car/common/ICarCloud;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/car/carsetting/BundActivity;->mCarCloud:Lcom/car/common/ICarCloud;

    iget-object v2, p0, Lcom/car/carsetting/BundActivity;->mCarCloudCallback:Lcom/car/carsetting/BundActivity$CarCloudCallback;

    invoke-interface {v1, v2}, Lcom/car/common/ICarCloud;->registerCallback(Lcom/car/common/ICarCloudCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCarCloudChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/car/carsetting/BundActivity;->getCarCloud()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v3, 0x7f030000

    invoke-virtual {p0, v3}, Lcom/car/carsetting/BundActivity;->setContentView(I)V

    const v3, 0x7f0a0001

    invoke-virtual {p0, v3}, Lcom/car/carsetting/BundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08005f

    invoke-static {p0, v3}, Lcom/car/common/OEM;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0002

    invoke-virtual {p0, v3}, Lcom/car/carsetting/BundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/car/carsetting/QRCode;

    invoke-virtual {v1}, Lcom/car/carsetting/QRCode;->hideStatusAndTips()V

    const v3, 0x7f0a0004

    invoke-virtual {p0, v3}, Lcom/car/carsetting/BundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/car/carsetting/BundActivity;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/car/carsetting/BundActivity;->mButton:Landroid/widget/Button;

    new-instance v4, Lcom/car/carsetting/BundActivity$1;

    invoke-direct {v4, p0}, Lcom/car/carsetting/BundActivity$1;-><init>(Lcom/car/carsetting/BundActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0003

    invoke-virtual {p0, v3}, Lcom/car/carsetting/BundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v3, Lcom/car/carsetting/BundActivity$2;

    invoke-direct {v3, p0}, Lcom/car/carsetting/BundActivity$2;-><init>(Lcom/car/carsetting/BundActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/car/carsetting/BundActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "hideCheckbox"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    sget-boolean v3, Lcom/car/carsetting/BundActivity;->HEADLESS:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/car/carsetting/BundActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_1
    invoke-static {p0}, Lcom/car/carsetting/MyApplication;->registerListener(Lcom/car/carsetting/MyApplication$Listener;)V

    invoke-direct {p0}, Lcom/car/carsetting/BundActivity;->getCarCloud()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {p0}, Lcom/car/carsetting/MyApplication;->unregisterListener(Lcom/car/carsetting/MyApplication$Listener;)V

    iget-object v1, p0, Lcom/car/carsetting/BundActivity;->mCarCloud:Lcom/car/common/ICarCloud;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/car/carsetting/BundActivity;->mCarCloud:Lcom/car/common/ICarCloud;

    iget-object v2, p0, Lcom/car/carsetting/BundActivity;->mCarCloudCallback:Lcom/car/carsetting/BundActivity$CarCloudCallback;

    invoke-interface {v1, v2}, Lcom/car/common/ICarCloud;->unregisterCallback(Lcom/car/common/ICarCloudCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
