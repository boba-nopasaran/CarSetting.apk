.class public Lcom/car/carsetting/FactoryDialog;
.super Landroid/app/Dialog;
.source "FactoryDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSet_FactoryDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x103000b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string v0, "ro.factory_password"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/carsetting/FactoryDialog;->mPassword:Ljava/lang/String;

    iput-object p1, p0, Lcom/car/carsetting/FactoryDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/car/carsetting/FactoryDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/FactoryDialog;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/carsetting/FactoryDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/FactoryDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/car/carsetting/FactoryDialog;->requestWindowFeature(I)Z

    const v3, 0x7f030006

    invoke-virtual {p0, v3}, Lcom/car/carsetting/FactoryDialog;->setContentView(I)V

    invoke-virtual {p0, v4}, Lcom/car/carsetting/FactoryDialog;->setCancelable(Z)V

    invoke-virtual {p0, v4}, Lcom/car/carsetting/FactoryDialog;->setCanceledOnTouchOutside(Z)V

    const v3, 0x7f0a0016

    invoke-virtual {p0, v3}, Lcom/car/carsetting/FactoryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v3, 0x7f0a0015

    invoke-virtual {p0, v3}, Lcom/car/carsetting/FactoryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v3, 0x7f0a0014

    invoke-virtual {p0, v3}, Lcom/car/carsetting/FactoryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Lcom/car/carsetting/FactoryDialog$1;

    invoke-direct {v3, p0}, Lcom/car/carsetting/FactoryDialog$1;-><init>(Lcom/car/carsetting/FactoryDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/car/carsetting/FactoryDialog$2;

    invoke-direct {v3, p0, v2}, Lcom/car/carsetting/FactoryDialog$2;-><init>(Lcom/car/carsetting/FactoryDialog;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
