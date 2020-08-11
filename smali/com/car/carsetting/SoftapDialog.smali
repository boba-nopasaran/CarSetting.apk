.class public Lcom/car/carsetting/SoftapDialog;
.super Landroid/app/Dialog;
.source "SoftapDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mPassword:Landroid/widget/EditText;

.field private mSsid:Landroid/widget/EditText;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 2

    const v1, 0x103000b

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/car/carsetting/SoftapDialog$3;

    invoke-direct {v1, p0}, Lcom/car/carsetting/SoftapDialog$3;-><init>(Lcom/car/carsetting/SoftapDialog;)V

    iput-object v1, p0, Lcom/car/carsetting/SoftapDialog;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    iput-object p1, p0, Lcom/car/carsetting/SoftapDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/car/carsetting/SoftapDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    :try_start_0
    iget-object v1, p0, Lcom/car/carsetting/SoftapDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/car/carsetting/SoftapDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/car/carsetting/SoftapDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/SoftapDialog;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/carsetting/SoftapDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/SoftapDialog;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/carsetting/SoftapDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/SoftapDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/carsetting/SoftapDialog;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/SoftapDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$302(Lcom/car/carsetting/SoftapDialog;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/SoftapDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$400(Lcom/car/carsetting/SoftapDialog;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/SoftapDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/car/carsetting/SoftapDialog;->requestWindowFeature(I)Z

    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lcom/car/carsetting/SoftapDialog;->setContentView(I)V

    invoke-virtual {p0, v2}, Lcom/car/carsetting/SoftapDialog;->setCancelable(Z)V

    invoke-virtual {p0, v2}, Lcom/car/carsetting/SoftapDialog;->setCanceledOnTouchOutside(Z)V

    const v1, 0x7f0a0022

    invoke-virtual {p0, v1}, Lcom/car/carsetting/SoftapDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/car/carsetting/SoftapDialog;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/car/carsetting/SoftapDialog;->mSsid:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/car/carsetting/SoftapDialog;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/car/carsetting/SoftapDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    const v1, 0x7f0a0014

    invoke-virtual {p0, v1}, Lcom/car/carsetting/SoftapDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/car/carsetting/SoftapDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/car/carsetting/SoftapDialog;->mPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/car/carsetting/SoftapDialog;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/car/carsetting/SoftapDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    const v1, 0x7f0a0013

    invoke-virtual {p0, v1}, Lcom/car/carsetting/SoftapDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/car/carsetting/SoftapDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f080071

    invoke-static {v1, v2}, Lcom/car/common/OEM;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/car/carsetting/SoftapDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/carsetting/SoftapDialog;->mSsid:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/car/carsetting/SoftapDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/car/carsetting/SoftapDialog;->mPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/car/carsetting/SoftapDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v1, 0x7f0a0015

    invoke-virtual {p0, v1}, Lcom/car/carsetting/SoftapDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/car/carsetting/SoftapDialog$1;

    invoke-direct {v2, p0}, Lcom/car/carsetting/SoftapDialog$1;-><init>(Lcom/car/carsetting/SoftapDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0016

    invoke-virtual {p0, v1}, Lcom/car/carsetting/SoftapDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/car/carsetting/SoftapDialog$2;

    invoke-direct {v2, p0}, Lcom/car/carsetting/SoftapDialog$2;-><init>(Lcom/car/carsetting/SoftapDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected showMessageBox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/car/carsetting/SoftapDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080058

    new-instance v2, Lcom/car/carsetting/SoftapDialog$4;

    invoke-direct {v2, p0}, Lcom/car/carsetting/SoftapDialog$4;-><init>(Lcom/car/carsetting/SoftapDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
