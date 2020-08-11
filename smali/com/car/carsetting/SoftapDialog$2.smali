.class Lcom/car/carsetting/SoftapDialog$2;
.super Ljava/lang/Object;
.source "SoftapDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/carsetting/SoftapDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/SoftapDialog;


# direct methods
.method constructor <init>(Lcom/car/carsetting/SoftapDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const v4, 0x7f080075

    iget-object v2, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-static {v2}, Lcom/car/carsetting/SoftapDialog;->access$000(Lcom/car/carsetting/SoftapDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-static {v2}, Lcom/car/carsetting/SoftapDialog;->access$100(Lcom/car/carsetting/SoftapDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    iget-object v3, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-static {v3}, Lcom/car/carsetting/SoftapDialog;->access$200(Lcom/car/carsetting/SoftapDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-static {v4}, Lcom/car/carsetting/SoftapDialog;->access$200(Lcom/car/carsetting/SoftapDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080076

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/car/carsetting/SoftapDialog;->showMessageBox(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    iget-object v3, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-static {v3}, Lcom/car/carsetting/SoftapDialog;->access$200(Lcom/car/carsetting/SoftapDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-static {v4}, Lcom/car/carsetting/SoftapDialog;->access$200(Lcom/car/carsetting/SoftapDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080077

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/car/carsetting/SoftapDialog;->showMessageBox(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    iget-object v3, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-static {v3}, Lcom/car/carsetting/SoftapDialog;->access$400(Lcom/car/carsetting/SoftapDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/car/carsetting/SoftapDialog;->access$302(Lcom/car/carsetting/SoftapDialog;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-static {v2}, Lcom/car/carsetting/SoftapDialog;->access$300(Lcom/car/carsetting/SoftapDialog;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v1, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v2, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-static {v2}, Lcom/car/carsetting/SoftapDialog;->access$300(Lcom/car/carsetting/SoftapDialog;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-static {v2}, Lcom/car/carsetting/SoftapDialog;->access$400(Lcom/car/carsetting/SoftapDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-static {v2}, Lcom/car/carsetting/SoftapDialog;->access$400(Lcom/car/carsetting/SoftapDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    iget-object v2, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-static {v2}, Lcom/car/carsetting/SoftapDialog;->access$400(Lcom/car/carsetting/SoftapDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-static {v3}, Lcom/car/carsetting/SoftapDialog;->access$300(Lcom/car/carsetting/SoftapDialog;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :goto_1
    iget-object v2, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-virtual {v2}, Lcom/car/carsetting/SoftapDialog;->dismiss()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-static {v2}, Lcom/car/carsetting/SoftapDialog;->access$400(Lcom/car/carsetting/SoftapDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/car/carsetting/SoftapDialog$2;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-static {v3}, Lcom/car/carsetting/SoftapDialog;->access$300(Lcom/car/carsetting/SoftapDialog;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_1
.end method
