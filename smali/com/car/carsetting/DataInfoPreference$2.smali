.class final Lcom/car/carsetting/DataInfoPreference$2;
.super Ljava/lang/Object;
.source "DataInfoPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/carsetting/DataInfoPreference;->getSortedSubInfoList(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/telephony/SubscriptionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I
    .locals 5

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    sub-int v0, v1, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    sub-int v0, v3, v4

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    check-cast p2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0, p1, p2}, Lcom/car/carsetting/DataInfoPreference$2;->compare(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    return v0
.end method
