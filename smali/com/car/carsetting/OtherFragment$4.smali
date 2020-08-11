.class Lcom/car/carsetting/OtherFragment$4;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/car/carsetting/OtherFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/OtherFragment$4;->this$0:Lcom/car/carsetting/OtherFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string v2, "gsensor_enable"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/car/carsetting/OtherFragment$4;->this$0:Lcom/car/carsetting/OtherFragment;

    iget-object v2, v2, Lcom/car/carsetting/OtherFragment;->mGsensorEnable:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/car/carsetting/OtherFragment$4;->this$0:Lcom/car/carsetting/OtherFragment;

    iget-object v3, v3, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/common/ProviderUtils;->getGsensorEnbale(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "video_lock_enable"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/car/carsetting/OtherFragment$4;->this$0:Lcom/car/carsetting/OtherFragment;

    iget-object v2, v2, Lcom/car/carsetting/OtherFragment;->mLockEnable:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/car/carsetting/OtherFragment$4;->this$0:Lcom/car/carsetting/OtherFragment;

    iget-object v3, v3, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/common/ProviderUtils;->getVideoLockEnbale(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v0, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    const-string v0, "autosleeptime"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment$4;->this$0:Lcom/car/carsetting/OtherFragment;

    iget-object v0, v0, Lcom/car/carsetting/OtherFragment;->mAutoSleepTimePrefence:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment$4;->this$0:Lcom/car/carsetting/OtherFragment;

    iget-object v1, v1, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getAutoSleepTime(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "slow_time"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment$4;->this$0:Lcom/car/carsetting/OtherFragment;

    iget-object v0, v0, Lcom/car/carsetting/OtherFragment;->mDvrSlowTimePrefence:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment$4;->this$0:Lcom/car/carsetting/OtherFragment;

    iget-object v1, v1, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getDvrSlowTime(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method
