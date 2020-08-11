.class Lcom/car/carsetting/OtherFragment$1;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/car/carsetting/OtherFragment$1;->this$0:Lcom/car/carsetting/OtherFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment$1;->this$0:Lcom/car/carsetting/OtherFragment;

    iput v2, v0, Lcom/car/carsetting/OtherFragment;->mCountClickVersion:I

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment$1;->this$0:Lcom/car/carsetting/OtherFragment;

    iput v2, v0, Lcom/car/carsetting/OtherFragment;->mCountClickAdb:I

    :cond_0
    return-void
.end method
