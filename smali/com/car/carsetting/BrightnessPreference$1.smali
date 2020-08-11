.class Lcom/car/carsetting/BrightnessPreference$1;
.super Landroid/database/ContentObserver;
.source "BrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/BrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/car/carsetting/BrightnessPreference;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/BrightnessPreference$1;->this$0:Lcom/car/carsetting/BrightnessPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/car/carsetting/BrightnessPreference$1;->this$0:Lcom/car/carsetting/BrightnessPreference;

    iget-object v1, v1, Lcom/car/carsetting/BrightnessPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget-object v3, p0, Lcom/car/carsetting/BrightnessPreference$1;->this$0:Lcom/car/carsetting/BrightnessPreference;

    invoke-static {v3}, Lcom/car/carsetting/BrightnessPreference;->access$000(Lcom/car/carsetting/BrightnessPreference;)I

    move-result v3

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/car/carsetting/BrightnessPreference$1;->this$0:Lcom/car/carsetting/BrightnessPreference;

    iget v1, v1, Lcom/car/carsetting/BrightnessPreference;->mBrightnessVal:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/car/carsetting/BrightnessPreference$1;->this$0:Lcom/car/carsetting/BrightnessPreference;

    iput v0, v1, Lcom/car/carsetting/BrightnessPreference;->mBrightnessVal:I

    iget-object v1, p0, Lcom/car/carsetting/BrightnessPreference$1;->this$0:Lcom/car/carsetting/BrightnessPreference;

    iget-object v1, v1, Lcom/car/carsetting/BrightnessPreference;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/carsetting/BrightnessPreference$1;->this$0:Lcom/car/carsetting/BrightnessPreference;

    iget-object v1, v1, Lcom/car/carsetting/BrightnessPreference;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/car/carsetting/BrightnessPreference$1;->this$0:Lcom/car/carsetting/BrightnessPreference;

    invoke-static {v2}, Lcom/car/carsetting/BrightnessPreference;->access$100(Lcom/car/carsetting/BrightnessPreference;)I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
