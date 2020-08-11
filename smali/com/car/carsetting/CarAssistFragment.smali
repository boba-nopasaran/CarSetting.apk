.class public Lcom/car/carsetting/CarAssistFragment;
.super Landroid/app/Fragment;
.source "CarAssistFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSetting_CarAssistFragment"


# instance fields
.field private mHideQrCode:Z

.field private mQrCode:Landroid/view/View;

.field private mSeparator:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/carsetting/CarAssistFragment;->mHideQrCode:Z

    return-void
.end method


# virtual methods
.method public hideQrCode()V
    .locals 2

    const/16 v1, 0x8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/carsetting/CarAssistFragment;->mHideQrCode:Z

    iget-object v0, p0, Lcom/car/carsetting/CarAssistFragment;->mSeparator:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/CarAssistFragment;->mQrCode:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/CarAssistFragment;->mSeparator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/carsetting/CarAssistFragment;->mQrCode:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/car/carsetting/CarAssistFragment;->mSeparator:Landroid/view/View;

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/car/carsetting/CarAssistFragment;->mQrCode:Landroid/view/View;

    iget-boolean v1, p0, Lcom/car/carsetting/CarAssistFragment;->mHideQrCode:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/car/carsetting/CarAssistFragment;->hideQrCode()V

    :cond_0
    return-object v0
.end method
