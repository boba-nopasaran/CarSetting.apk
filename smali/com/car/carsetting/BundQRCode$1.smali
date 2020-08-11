.class Lcom/car/carsetting/BundQRCode$1;
.super Ljava/lang/Thread;
.source "BundQRCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/carsetting/BundQRCode;->updateQRcodeImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/BundQRCode;


# direct methods
.method constructor <init>(Lcom/car/carsetting/BundQRCode;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/BundQRCode$1;->this$0:Lcom/car/carsetting/BundQRCode;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0xc8

    invoke-static {}, Lcom/car/carsetting/BundQRCode;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/car/carsetting/QRBitmapGenerator;->createQREncodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/car/carsetting/BundQRCode$1;->this$0:Lcom/car/carsetting/BundQRCode;

    invoke-static {v1}, Lcom/car/carsetting/BundQRCode;->access$200(Lcom/car/carsetting/BundQRCode;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/car/carsetting/BundQRCode$1$1;

    invoke-direct {v2, p0, v0}, Lcom/car/carsetting/BundQRCode$1$1;-><init>(Lcom/car/carsetting/BundQRCode$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
