.class Lcom/car/carsetting/BarCodeActivity$1;
.super Landroid/os/Handler;
.source "BarCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/BarCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/BarCodeActivity;


# direct methods
.method constructor <init>(Lcom/car/carsetting/BarCodeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/16 v7, 0x64

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    invoke-static {v3}, Lcom/car/carsetting/BarCodeActivity;->access$000(Lcom/car/carsetting/BarCodeActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    const v6, 0x7f080067

    invoke-virtual {v5, v6}, Lcom/car/carsetting/BarCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/car/carsetting/BarCodeActivity;->access$102(Lcom/car/carsetting/BarCodeActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    invoke-static {v3}, Lcom/car/carsetting/BarCodeActivity;->access$400(Lcom/car/carsetting/BarCodeActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    invoke-static {v4}, Lcom/car/carsetting/BarCodeActivity;->access$200(Lcom/car/carsetting/BarCodeActivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    invoke-static {v1, v4, v7}, Lcom/car/carsetting/BarCodeActivity;->access$300(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v3, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    invoke-static {v3}, Lcom/car/carsetting/BarCodeActivity;->access$500(Lcom/car/carsetting/BarCodeActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    invoke-static {v4}, Lcom/car/carsetting/BarCodeActivity;->access$100(Lcom/car/carsetting/BarCodeActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    invoke-static {v3}, Lcom/car/carsetting/BarCodeActivity;->access$000(Lcom/car/carsetting/BarCodeActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    const v6, 0x7f080068

    invoke-virtual {v5, v6}, Lcom/car/carsetting/BarCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/car/carsetting/BarCodeActivity;->access$602(Lcom/car/carsetting/BarCodeActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    invoke-static {v3}, Lcom/car/carsetting/BarCodeActivity;->access$700(Lcom/car/carsetting/BarCodeActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    invoke-static {v4}, Lcom/car/carsetting/BarCodeActivity;->access$200(Lcom/car/carsetting/BarCodeActivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    invoke-static {v2, v4, v7}, Lcom/car/carsetting/BarCodeActivity;->access$300(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v3, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    invoke-static {v3}, Lcom/car/carsetting/BarCodeActivity;->access$800(Lcom/car/carsetting/BarCodeActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    invoke-static {v4}, Lcom/car/carsetting/BarCodeActivity;->access$600(Lcom/car/carsetting/BarCodeActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    const v6, 0x7f080069

    invoke-virtual {v5, v6}, Lcom/car/carsetting/BarCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/car/carsetting/BarCodeActivity;->access$902(Lcom/car/carsetting/BarCodeActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    invoke-static {v3}, Lcom/car/carsetting/BarCodeActivity;->access$1000(Lcom/car/carsetting/BarCodeActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    invoke-static {v4}, Lcom/car/carsetting/BarCodeActivity;->access$200(Lcom/car/carsetting/BarCodeActivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v0, v4, v7}, Lcom/car/carsetting/BarCodeActivity;->access$300(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v3, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    invoke-static {v3}, Lcom/car/carsetting/BarCodeActivity;->access$1100(Lcom/car/carsetting/BarCodeActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/car/carsetting/BarCodeActivity$1;->this$0:Lcom/car/carsetting/BarCodeActivity;

    invoke-static {v4}, Lcom/car/carsetting/BarCodeActivity;->access$900(Lcom/car/carsetting/BarCodeActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
