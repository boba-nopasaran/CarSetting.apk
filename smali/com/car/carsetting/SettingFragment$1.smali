.class Lcom/car/carsetting/SettingFragment$1;
.super Landroid/database/ContentObserver;
.source "SettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/SettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/SettingFragment;


# direct methods
.method constructor <init>(Lcom/car/carsetting/SettingFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/SettingFragment$1;->this$0:Lcom/car/carsetting/SettingFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/car/carsetting/SettingFragment$1;->this$0:Lcom/car/carsetting/SettingFragment;

    iget-object v1, v1, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getTTSMute(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/car/carsetting/SettingFragment$1;->this$0:Lcom/car/carsetting/SettingFragment;

    iget-boolean v1, v1, Lcom/car/carsetting/SettingFragment;->mVoicePromptEnabled:Z

    if-eq v0, v1, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/car/carsetting/SettingFragment$1;->this$0:Lcom/car/carsetting/SettingFragment;

    iget-object v1, v1, Lcom/car/carsetting/SettingFragment;->mVoicePromptPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/car/carsetting/SettingFragment$1;->this$0:Lcom/car/carsetting/SettingFragment;

    iput-boolean v0, v1, Lcom/car/carsetting/SettingFragment;->mVoicePromptEnabled:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
