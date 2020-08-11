.class Lcom/car/carsetting/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/carsetting/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/MainActivity;


# direct methods
.method constructor <init>(Lcom/car/carsetting/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/MainActivity$1;->this$0:Lcom/car/carsetting/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/car/carsetting/MainActivity$1;->this$0:Lcom/car/carsetting/MainActivity;

    iget-object v2, p0, Lcom/car/carsetting/MainActivity$1;->this$0:Lcom/car/carsetting/MainActivity;

    invoke-virtual {v2}, Lcom/car/carsetting/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/car/carsetting/MainActivity;->fragIndexFromIntent(Landroid/content/Intent;)I

    move-result v0

    iget-object v1, p0, Lcom/car/carsetting/MainActivity$1;->this$0:Lcom/car/carsetting/MainActivity;

    iget-object v1, v1, Lcom/car/carsetting/MainActivity;->mLabList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/car/carsetting/MainActivity$1;->this$0:Lcom/car/carsetting/MainActivity;

    iget v1, v1, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/car/carsetting/MainActivity$1;->this$0:Lcom/car/carsetting/MainActivity;

    iput v0, v1, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    const-string v1, "CarSetting.MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSelectedNavigationItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/carsetting/MainActivity$1;->this$0:Lcom/car/carsetting/MainActivity;

    iget v3, v3, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/carsetting/MainActivity$1;->this$0:Lcom/car/carsetting/MainActivity;

    invoke-virtual {v1}, Lcom/car/carsetting/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/car/carsetting/MainActivity$1;->this$0:Lcom/car/carsetting/MainActivity;

    iget v2, v2, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    iget-object v1, p0, Lcom/car/carsetting/MainActivity$1;->this$0:Lcom/car/carsetting/MainActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/car/carsetting/MainActivity;->jump2CurFragment(Z)V

    :cond_1
    return-void
.end method
