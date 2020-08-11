.class Lcom/car/carsetting/SensityPreference$2;
.super Landroid/database/ContentObserver;
.source "SensityPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/SensityPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/SensityPreference;


# direct methods
.method constructor <init>(Lcom/car/carsetting/SensityPreference;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/SensityPreference$2;->this$0:Lcom/car/carsetting/SensityPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v1, p0, Lcom/car/carsetting/SensityPreference$2;->this$0:Lcom/car/carsetting/SensityPreference;

    iget-object v1, v1, Lcom/car/carsetting/SensityPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getWakeupSensity(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/car/carsetting/SensityPreference$2;->this$0:Lcom/car/carsetting/SensityPreference;

    iget v1, v1, Lcom/car/carsetting/SensityPreference;->mLevel:I

    if-eq v1, v0, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/car/carsetting/SensityPreference$2;->this$0:Lcom/car/carsetting/SensityPreference;

    invoke-virtual {v1, v0}, Lcom/car/carsetting/SensityPreference;->setStatus(I)V

    iget-object v1, p0, Lcom/car/carsetting/SensityPreference$2;->this$0:Lcom/car/carsetting/SensityPreference;

    iput v0, v1, Lcom/car/carsetting/SensityPreference;->mLevel:I

    :cond_0
    return-void
.end method
