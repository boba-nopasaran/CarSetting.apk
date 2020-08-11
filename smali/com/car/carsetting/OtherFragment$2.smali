.class Lcom/car/carsetting/OtherFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "OtherFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/OtherFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/OtherFragment;


# direct methods
.method constructor <init>(Lcom/car/carsetting/OtherFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/OtherFragment$2;->this$0:Lcom/car/carsetting/OtherFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.car.otadownload"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "percent"

    const/4 v3, -0x2

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/car/carsetting/OtherFragment$2;->this$0:Lcom/car/carsetting/OtherFragment;

    invoke-virtual {v2, v1}, Lcom/car/carsetting/OtherFragment;->handlePercent(I)V

    :cond_0
    return-void
.end method
