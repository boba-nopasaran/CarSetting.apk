.class Lcom/car/carsetting/DataInfoPreference$3;
.super Ljava/lang/Object;
.source "DataInfoPreference.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/DataInfoPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/car/carsetting/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/DataInfoPreference;


# direct methods
.method constructor <init>(Lcom/car/carsetting/DataInfoPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/car/carsetting/net/ChartData;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/car/carsetting/net/ChartDataLoader;

    iget-object v1, p0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    invoke-virtual {v1}, Lcom/car/carsetting/DataInfoPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    invoke-static {v2}, Lcom/car/carsetting/DataInfoPreference;->access$100(Lcom/car/carsetting/DataInfoPreference;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/car/carsetting/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/car/carsetting/net/ChartData;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/car/carsetting/net/ChartData;",
            ">;",
            "Lcom/car/carsetting/net/ChartData;",
            ")V"
        }
    .end annotation

    const-string v5, "CarSetting.DataInfoPreference"

    const-string v12, "onLoadFinished..."

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/car/carsetting/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v22

    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm"

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v22

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CarSetting.DataInfoPreference"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "start = "

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/car/carsetting/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v22

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v22

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CarSetting.DataInfoPreference"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "end = "

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "CarSetting.DataInfoPreference"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "total bytes = "

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/car/carsetting/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    invoke-static {v5}, Lcom/car/carsetting/DataInfoPreference;->access$300(Lcom/car/carsetting/DataInfoPreference;)Lcom/car/carsetting/net/NetworkPolicyEditor;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    invoke-static {v12}, Lcom/car/carsetting/DataInfoPreference;->access$200(Lcom/car/carsetting/DataInfoPreference;)Landroid/net/NetworkTemplate;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/car/carsetting/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v20

    const-wide v18, 0x7fffffffffffffffL

    const-wide/high16 v16, -0x8000000000000000L

    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/car/carsetting/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v18

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/car/carsetting/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide v26, 0x7fffffffffffffffL

    cmp-long v5, v18, v26

    if-nez v5, :cond_0

    move-wide/from16 v18, v10

    :cond_0
    const-wide/high16 v26, -0x8000000000000000L

    cmp-long v5, v16, v26

    if-nez v5, :cond_1

    const-wide/16 v26, 0x1

    add-long v16, v10, v26

    :cond_1
    const/4 v14, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    if-eqz v20, :cond_2

    move-wide/from16 v0, v16

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    cmp-long v5, v8, v18

    if-lez v5, :cond_2

    move-object/from16 v0, v20

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    const-string v5, "CarSetting.DataInfoPreference"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "generating cs="

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v26, " to ce="

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v26, " waiting for hs="

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    :cond_2
    if-nez v14, :cond_3

    move-wide/from16 v8, v16

    cmp-long v5, v8, v18

    if-lez v5, :cond_3

    const-wide v26, 0x90321000L

    sub-long v6, v8, v26

    :cond_3
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CarSetting.DataInfoPreference"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cycle start = "

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CarSetting.DataInfoPreference"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cycle end = "

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/car/carsetting/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v13

    if-eqz v13, :cond_6

    iget-wide v0, v13, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v26, v0

    iget-wide v0, v13, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v28, v0

    add-long v24, v26, v28

    :goto_0
    const-string v5, "CarSetting.DataInfoPreference"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cycle total bytes = "

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, v24

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    invoke-static {v5}, Lcom/car/carsetting/DataInfoPreference;->access$400(Lcom/car/carsetting/DataInfoPreference;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    invoke-static {v5}, Lcom/car/carsetting/DataInfoPreference;->access$400(Lcom/car/carsetting/DataInfoPreference;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    invoke-static {v5}, Lcom/car/carsetting/DataInfoPreference;->access$400(Lcom/car/carsetting/DataInfoPreference;)Ljava/util/List;

    move-result-object v5

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-static {v12, v0, v1}, Lcom/car/carsetting/DataInfoPreference;->access$500(Lcom/car/carsetting/DataInfoPreference;J)Z

    move-result v15

    :cond_4
    const-string v5, "CarSetting.DataInfoPreference"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mobile data is enable = "

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    const v12, 0x7f080050

    iput v12, v5, Lcom/car/carsetting/DataInfoPreference;->mTitleId:I

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    iget v12, v12, Lcom/car/carsetting/DataInfoPreference;->mTitleId:I

    invoke-virtual {v5, v12}, Lcom/car/carsetting/DataInfoPreference;->setTitle(I)V

    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string v5, "MM-dd"

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/car/carsetting/DataInfoPreference;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v0, v6, v7, v8, v9}, Lcom/car/carsetting/DataInfoPreference;->access$600(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/car/carsetting/DataInfoPreference;->getContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f080054

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/car/carsetting/DataInfoPreference;->access$700(Lcom/car/carsetting/DataInfoPreference;J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/car/carsetting/DataInfoPreference;->getContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f080055

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/car/carsetting/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/car/carsetting/DataInfoPreference;->access$700(Lcom/car/carsetting/DataInfoPreference;J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/car/carsetting/DataInfoPreference;->mSummary:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    iget-object v12, v12, Lcom/car/carsetting/DataInfoPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {v5, v12}, Lcom/car/carsetting/DataInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    return-void

    :cond_6
    const-wide/16 v24, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/carsetting/DataInfoPreference$3;->this$0:Lcom/car/carsetting/DataInfoPreference;

    const v12, 0x7f080051

    iput v12, v5, Lcom/car/carsetting/DataInfoPreference;->mTitleId:I

    goto/16 :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/car/carsetting/net/ChartData;

    invoke-virtual {p0, p1, p2}, Lcom/car/carsetting/DataInfoPreference$3;->onLoadFinished(Landroid/content/Loader;Lcom/car/carsetting/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/car/carsetting/net/ChartData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
