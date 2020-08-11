.class public Lcom/amap/api/services/a/g;
.super Lcom/amap/api/services/a/e;
.source "CloudSearchKeywordsHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/services/a/e",
        "<",
        "Lcom/amap/api/services/cloud/CloudSearch$Query;",
        "Lcom/amap/api/services/cloud/CloudResult;",
        ">;"
    }
.end annotation


# instance fields
.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/cloud/CloudSearch$Query;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/e;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/a/g;->i:I

    return-void
.end method

.method private b(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/cloud/CloudItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "datas"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "datas"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v0, "count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/a/g;->i:I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/amap/api/services/a/g;->a(Lorg/json/JSONObject;)Lcom/amap/api/services/cloud/CloudItemDetail;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/amap/api/services/a/g;->a(Lcom/amap/api/services/cloud/CloudItem;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getSortingrules()Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getSortingrules()Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private k()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getFilterString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getFilterNumString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/amap/api/services/a/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/g;->f(Ljava/lang/String;)Lcom/amap/api/services/cloud/CloudResult;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/amap/api/services/cloud/CloudResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    iget v3, p0, Lcom/amap/api/services/a/g;->i:I

    iget-object v1, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v4

    iget-object v1, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getPageSize()I

    move-result v1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/amap/api/services/cloud/CloudResult;->createPagedResult(Lcom/amap/api/services/cloud/CloudSearch$Query;ILcom/amap/api/services/cloud/CloudSearch$SearchBound;ILjava/util/ArrayList;)Lcom/amap/api/services/cloud/CloudResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/g;->b(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v2, v0

    :goto_1
    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    iget v3, p0, Lcom/amap/api/services/a/g;->i:I

    iget-object v1, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v4

    iget-object v1, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getPageSize()I

    move-result v1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/amap/api/services/cloud/CloudResult;->createPagedResult(Lcom/amap/api/services/cloud/CloudSearch$Query;ILcom/amap/api/services/cloud/CloudSearch$SearchBound;ILjava/util/ArrayList;)Lcom/amap/api/services/cloud/CloudResult;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected g()Ljava/lang/String;
    .locals 11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "output=json"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Bound"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getCenter()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v2

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getCenter()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v4

    const-string v0, "&center="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&radius="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getRange()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&tableid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getTableID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/amap/api/services/a/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/services/a/g;->k()Ljava/lang/String;

    invoke-direct {p0}, Lcom/amap/api/services/a/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&filter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/services/a/g;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "&sortrule="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/amap/api/services/a/g;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, ""

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getQueryString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&keywords="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&limit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getPageSize()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&page="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getPageNum()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/services/a/g;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/services/a/az;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Rectangle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getLowerLeft()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getUpperRight()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&polygon="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Polygon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getPolyGonList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&polygon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-static {v0, v3}, Lcom/amap/api/services/a/i;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Local"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&city="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    const-string v0, "&keywords="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public i()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/services/a/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/datasearch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Bound"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/around?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "Polygon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Rectangle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/polygon?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "Local"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/local?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
