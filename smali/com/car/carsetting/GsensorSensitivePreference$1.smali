.class Lcom/car/carsetting/GsensorSensitivePreference$1;
.super Landroid/database/ContentObserver;
.source "GsensorSensitivePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/GsensorSensitivePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/GsensorSensitivePreference;


# direct methods
.method constructor <init>(Lcom/car/carsetting/GsensorSensitivePreference;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/GsensorSensitivePreference$1;->this$0:Lcom/car/carsetting/GsensorSensitivePreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v1, p0, Lcom/car/carsetting/GsensorSensitivePreference$1;->this$0:Lcom/car/carsetting/GsensorSensitivePreference;

    iget-object v1, v1, Lcom/car/carsetting/GsensorSensitivePreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getGsensorSensitive(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/car/carsetting/GsensorSensitivePreference$1;->this$0:Lcom/car/carsetting/GsensorSensitivePreference;

    iget v1, v1, Lcom/car/carsetting/GsensorSensitivePreference;->mLevel:I

    if-eq v1, v0, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/car/carsetting/GsensorSensitivePreference$1;->this$0:Lcom/car/carsetting/GsensorSensitivePreference;

    invoke-virtual {v1, v0}, Lcom/car/carsetting/GsensorSensitivePreference;->setStatus(I)V

    iget-object v1, p0, Lcom/car/carsetting/GsensorSensitivePreference$1;->this$0:Lcom/car/carsetting/GsensorSensitivePreference;

    iput v0, v1, Lcom/car/carsetting/GsensorSensitivePreference;->mLevel:I

    :cond_0
    return-void
.end method
