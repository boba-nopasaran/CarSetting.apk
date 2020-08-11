.class Lcom/car/carsetting/QRCode$1;
.super Landroid/os/Handler;
.source "QRCode.java"


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

    iput-object p1, p0, Lcom/car/carsetting/QRCode$1;->this$0:Lcom/car/carsetting/QRCode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/QRCode$1;->this$0:Lcom/car/carsetting/QRCode;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/car/carsetting/QRCode;->access$002(Lcom/car/carsetting/QRCode;I)I

    :cond_0
    return-void
.end method
