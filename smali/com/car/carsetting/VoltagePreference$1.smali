.class Lcom/car/carsetting/VoltagePreference$1;
.super Landroid/database/ContentObserver;
.source "VoltagePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/VoltagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/VoltagePreference;


# direct methods
.method constructor <init>(Lcom/car/carsetting/VoltagePreference;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/VoltagePreference$1;->this$0:Lcom/car/carsetting/VoltagePreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    iget-object v2, p0, Lcom/car/carsetting/VoltagePreference$1;->this$0:Lcom/car/carsetting/VoltagePreference;

    iget-object v2, v2, Lcom/car/carsetting/VoltagePreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/ProviderUtils;->getMcuVoltage(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/car/carsetting/VoltagePreference$1;->this$0:Lcom/car/carsetting/VoltagePreference;

    iget v2, v2, Lcom/car/carsetting/VoltagePreference;->mCurVoltage:I

    if-eq v2, v1, :cond_0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/car/carsetting/VoltagePreference$1;->this$0:Lcom/car/carsetting/VoltagePreference;

    invoke-virtual {v2, v1}, Lcom/car/carsetting/VoltagePreference;->setStatus(I)V

    iget-object v2, p0, Lcom/car/carsetting/VoltagePreference$1;->this$0:Lcom/car/carsetting/VoltagePreference;

    iput v1, v2, Lcom/car/carsetting/VoltagePreference;->mCurVoltage:I

    iget-object v2, p0, Lcom/car/carsetting/VoltagePreference$1;->this$0:Lcom/car/carsetting/VoltagePreference;

    iget-object v2, v2, Lcom/car/carsetting/VoltagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/car/carsetting/VoltagePreference$1;->this$0:Lcom/car/carsetting/VoltagePreference;

    iget-object v2, v2, Lcom/car/carsetting/VoltagePreference;->mSummary:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/car/carsetting/VoltagePreference$1;->this$0:Lcom/car/carsetting/VoltagePreference;

    iget v6, v6, Lcom/car/carsetting/VoltagePreference;->mCurVoltage:I

    div-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/car/carsetting/VoltagePreference$1;->this$0:Lcom/car/carsetting/VoltagePreference;

    iget v6, v6, Lcom/car/carsetting/VoltagePreference;->mCurVoltage:I

    rem-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
