.class Lcom/car/carsetting/DataInfoPreference$1;
.super Landroid/os/Handler;
.source "DataInfoPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/DataInfoPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/DataInfoPreference;


# direct methods
.method constructor <init>(Lcom/car/carsetting/DataInfoPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/DataInfoPreference$1;->this$0:Lcom/car/carsetting/DataInfoPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/16 v2, 0x64

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/DataInfoPreference$1;->this$0:Lcom/car/carsetting/DataInfoPreference;

    invoke-static {v0}, Lcom/car/carsetting/DataInfoPreference;->access$000(Lcom/car/carsetting/DataInfoPreference;)V

    invoke-virtual {p0, v2}, Lcom/car/carsetting/DataInfoPreference$1;->removeMessages(I)V

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v2, v0, v1}, Lcom/car/carsetting/DataInfoPreference$1;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
