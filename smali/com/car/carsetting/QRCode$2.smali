.class Lcom/car/carsetting/QRCode$2;
.super Ljava/lang/Object;
.source "QRCode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/carsetting/QRCode;->initView(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/car/carsetting/QRCode$2;->this$0:Lcom/car/carsetting/QRCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/car/carsetting/QRCode$2;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v4}, Lcom/car/carsetting/QRCode;->access$010(Lcom/car/carsetting/QRCode;)I

    iget-object v4, p0, Lcom/car/carsetting/QRCode$2;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v4}, Lcom/car/carsetting/QRCode;->access$000(Lcom/car/carsetting/QRCode;)I

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/car/carsetting/MyApplication;->getCarCloud()Lcom/car/common/ICarCloud;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/car/common/ICarCloud;->getCloudId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/car/carsetting/QRCode$2;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v4}, Lcom/car/carsetting/QRCode;->access$100(Lcom/car/carsetting/QRCode;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v4, "persist.device.flag"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/car/carsetting/QRCode$2;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v4}, Lcom/car/carsetting/QRCode;->access$200(Lcom/car/carsetting/QRCode;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v4, p0, Lcom/car/carsetting/QRCode$2;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v4}, Lcom/car/carsetting/QRCode;->access$300(Lcom/car/carsetting/QRCode;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/car/carsetting/QRCode$2;->this$0:Lcom/car/carsetting/QRCode;

    invoke-static {v4}, Lcom/car/carsetting/QRCode;->access$300(Lcom/car/carsetting/QRCode;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method
