.class Lcom/car/carsetting/QRCode$3;
.super Ljava/lang/Object;
.source "QRCode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/QRCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/QRCode;


# direct methods
.method constructor <init>(Lcom/car/carsetting/QRCode;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v7}, Lcom/car/carsetting/QRCode;->access$400(Lcom/car/carsetting/QRCode;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_0

    :try_start_0
    const-string v7, "app.icon"

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/car/carsetting/QRCode;->access$402(Lcom/car/carsetting/QRCode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v7}, Lcom/car/carsetting/QRCode;->access$400(Lcom/car/carsetting/QRCode;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    iget-object v8, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-virtual {v8}, Lcom/car/carsetting/QRCode;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02000b

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/car/carsetting/QRCode;->access$402(Lcom/car/carsetting/QRCode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/car/carsetting/QRCode;->access$500()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?sn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/car/carsetting/QRCode;->access$600()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/car/carsetting/MyApplication;->getCarCloud()Lcom/car/common/ICarCloud;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-interface {v0}, Lcom/car/common/ICarCloud;->deviceOnline()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/car/carsetting/QRCode;->access$702(Lcom/car/carsetting/QRCode;Z)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&online="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v8}, Lcom/car/carsetting/QRCode;->access$700(Lcom/car/carsetting/QRCode;)Z

    move-result v8

    if-eqz v8, :cond_8

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    iget-object v6, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v6}, Lcom/car/carsetting/QRCode;->access$800(Lcom/car/carsetting/QRCode;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v6}, Lcom/car/carsetting/QRCode;->access$800(Lcom/car/carsetting/QRCode;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&ssid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&pwd="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    const-string v6, "ro.market.area"

    const-string v7, "china"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "china"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&f=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_4
    iget-object v6, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v6}, Lcom/car/carsetting/QRCode;->access$900(Lcom/car/carsetting/QRCode;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v6}, Lcom/car/carsetting/QRCode;->access$900(Lcom/car/carsetting/QRCode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_5
    const-string v6, "CarSetting_QRCode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "qrcode url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v6, v4}, Lcom/car/carsetting/QRCode;->access$902(Lcom/car/carsetting/QRCode;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    const/16 v7, 0xdc

    const/16 v8, 0xdc

    iget-object v9, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v9}, Lcom/car/carsetting/QRCode;->access$400(Lcom/car/carsetting/QRCode;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v4, v7, v8, v9}, Lcom/car/carsetting/QRBitmapGenerator;->createQREncodeBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/car/carsetting/QRCode;->access$1002(Lcom/car/carsetting/QRCode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-virtual {v6}, Lcom/car/carsetting/QRCode;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/car/carsetting/QRCode;->access$1102(Lcom/car/carsetting/QRCode;Z)Z

    :cond_6
    iget-object v6, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v6}, Lcom/car/carsetting/QRCode;->access$1200(Lcom/car/carsetting/QRCode;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v7}, Lcom/car/carsetting/QRCode;->access$1000(Lcom/car/carsetting/QRCode;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v6}, Lcom/car/carsetting/QRCode;->access$700(Lcom/car/carsetting/QRCode;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v6}, Lcom/car/carsetting/QRCode;->access$200(Lcom/car/carsetting/QRCode;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f08005c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v6}, Lcom/car/carsetting/QRCode;->access$200(Lcom/car/carsetting/QRCode;)Landroid/widget/TextView;

    move-result-object v6

    const v7, -0xff0100

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v6}, Lcom/car/carsetting/QRCode;->access$300(Lcom/car/carsetting/QRCode;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v7}, Lcom/car/carsetting/QRCode;->access$1300(Lcom/car/carsetting/QRCode;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v6, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v6}, Lcom/car/carsetting/QRCode;->access$300(Lcom/car/carsetting/QRCode;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v7}, Lcom/car/carsetting/QRCode;->access$1300(Lcom/car/carsetting/QRCode;)Ljava/lang/Runnable;

    move-result-object v7

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    return-void

    :catch_0
    move-exception v1

    const-string v7, "CarSetting_QRCode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "load icon error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_9
    :try_start_2
    iget-object v6, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v6}, Lcom/car/carsetting/QRCode;->access$200(Lcom/car/carsetting/QRCode;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f08005d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/car/carsetting/QRCode$3;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v6}, Lcom/car/carsetting/QRCode;->access$200(Lcom/car/carsetting/QRCode;)Landroid/widget/TextView;

    move-result-object v6

    const v7, -0x7f7f80

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_3
.end method
