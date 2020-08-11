.class public Lcom/car/carsetting/DataInfoPreference;
.super Lcom/car/carsetting/SwitchPreference;
.source "DataInfoPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/carsetting/DataInfoPreference$AppItem;
    }
.end annotation


# static fields
.field static final DATA_TYPE_CHECK:I = 0x64

.field static final DATA_TYPE_CHECK_TIMER:I = 0xea60

.field private static final KEY_APP:Ljava/lang/String; = "app"

.field private static final KEY_FIELDS:Ljava/lang/String; = "fields"

.field private static final KEY_TEMPLATE:Ljava/lang/String; = "template"

.field private static final LOADER_CHART_DATA:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CarSetting.DataInfoPreference"

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/car/carsetting/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mPolicyEditor:Lcom/car/carsetting/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSummary:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/car/carsetting/DataInfoPreference;->sBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/car/carsetting/DataInfoPreference;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/car/carsetting/DataInfoPreference;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/car/carsetting/SwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/carsetting/DataInfoPreference;->mTitleId:I

    new-instance v0, Lcom/car/carsetting/DataInfoPreference$1;

    invoke-direct {v0, p0}, Lcom/car/carsetting/DataInfoPreference$1;-><init>(Lcom/car/carsetting/DataInfoPreference;)V

    iput-object v0, p0, Lcom/car/carsetting/DataInfoPreference;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/carsetting/DataInfoPreference$3;

    invoke-direct {v0, p0}, Lcom/car/carsetting/DataInfoPreference$3;-><init>(Lcom/car/carsetting/DataInfoPreference;)V

    iput-object v0, p0, Lcom/car/carsetting/DataInfoPreference;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {p0}, Lcom/car/carsetting/DataInfoPreference;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/car/carsetting/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/carsetting/DataInfoPreference;->mTitleId:I

    new-instance v0, Lcom/car/carsetting/DataInfoPreference$1;

    invoke-direct {v0, p0}, Lcom/car/carsetting/DataInfoPreference$1;-><init>(Lcom/car/carsetting/DataInfoPreference;)V

    iput-object v0, p0, Lcom/car/carsetting/DataInfoPreference;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/carsetting/DataInfoPreference$3;

    invoke-direct {v0, p0}, Lcom/car/carsetting/DataInfoPreference$3;-><init>(Lcom/car/carsetting/DataInfoPreference;)V

    iput-object v0, p0, Lcom/car/carsetting/DataInfoPreference;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {p0}, Lcom/car/carsetting/DataInfoPreference;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/car/carsetting/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/carsetting/DataInfoPreference;->mTitleId:I

    new-instance v0, Lcom/car/carsetting/DataInfoPreference$1;

    invoke-direct {v0, p0}, Lcom/car/carsetting/DataInfoPreference$1;-><init>(Lcom/car/carsetting/DataInfoPreference;)V

    iput-object v0, p0, Lcom/car/carsetting/DataInfoPreference;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/carsetting/DataInfoPreference$3;

    invoke-direct {v0, p0}, Lcom/car/carsetting/DataInfoPreference$3;-><init>(Lcom/car/carsetting/DataInfoPreference;)V

    iput-object v0, p0, Lcom/car/carsetting/DataInfoPreference;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {p0}, Lcom/car/carsetting/DataInfoPreference;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/car/carsetting/DataInfoPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/carsetting/DataInfoPreference;->updateDataInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/car/carsetting/DataInfoPreference;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/DataInfoPreference;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/carsetting/DataInfoPreference;)Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/DataInfoPreference;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/carsetting/DataInfoPreference;)Lcom/car/carsetting/net/NetworkPolicyEditor;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/DataInfoPreference;->mPolicyEditor:Lcom/car/carsetting/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/carsetting/DataInfoPreference;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/DataInfoPreference;->mSubInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/carsetting/DataInfoPreference;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/car/carsetting/DataInfoPreference;->isMobileDataEnabled(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/car/carsetting/DataInfoPreference;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/car/carsetting/DataInfoPreference;J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/car/carsetting/DataInfoPreference;->fileSizeMsg(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fileSizeMsg(J)Ljava/lang/String;
    .locals 13

    const-wide/16 v10, 0x400

    const/high16 v8, 0x4e800000

    const/high16 v7, 0x49800000    # 1048576.0f

    const/high16 v6, 0x44800000    # 1024.0f

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v0, ""

    const-wide/32 v2, 0x40000000

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    long-to-float v2, p1

    div-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v4, p1

    div-float/2addr v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-wide/32 v2, 0x100000

    cmp-long v2, p1, v2

    if-ltz v2, :cond_2

    long-to-float v2, p1

    div-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v4, p1

    div-float/2addr v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    cmp-long v2, p1, v10

    if-ltz v2, :cond_3

    long-to-float v2, p1

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v4, p1

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    cmp-long v2, p1, v10

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 11

    const v8, 0x10010

    sget-object v9, Lcom/car/carsetting/DataInfoPreference;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lcom/car/carsetting/DataInfoPreference;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v1, Lcom/car/carsetting/DataInfoPreference;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarSetting.DataInfoPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveSubscriberId()...subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SubscriberId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getSortedSubInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/car/carsetting/DataInfoPreference$2;

    invoke-direct {v1}, Lcom/car/carsetting/DataInfoPreference$2;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-object v0
.end method

.method private initView()V
    .locals 4

    const-string v1, "netstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, p0, Lcom/car/carsetting/DataInfoPreference;->mStatsService:Landroid/net/INetworkStatsService;

    :try_start_0
    iget-object v1, p0, Lcom/car/carsetting/DataInfoPreference;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v1

    iput-object v1, p0, Lcom/car/carsetting/DataInfoPreference;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-virtual {p0}, Lcom/car/carsetting/DataInfoPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/car/carsetting/DataInfoPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/car/carsetting/DataInfoPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/car/carsetting/DataInfoPreference;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    new-instance v1, Lcom/car/carsetting/net/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/car/carsetting/DataInfoPreference;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v1, v2}, Lcom/car/carsetting/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, p0, Lcom/car/carsetting/DataInfoPreference;->mPolicyEditor:Lcom/car/carsetting/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/car/carsetting/DataInfoPreference;->mPolicyEditor:Lcom/car/carsetting/net/NetworkPolicyEditor;

    invoke-virtual {v1}, Lcom/car/carsetting/net/NetworkPolicyEditor;->read()V

    invoke-virtual {p0}, Lcom/car/carsetting/DataInfoPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/car/carsetting/DataInfoPreference;->getSortedSubInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/car/carsetting/DataInfoPreference;->mSubInfoList:Ljava/util/List;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    const-string v1, "CarSetting.DataInfoPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception happen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isMobileDataEnabled(J)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/car/carsetting/DataInfoPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method private updateDataInfo()V
    .locals 4

    iget-object v1, p0, Lcom/car/carsetting/DataInfoPreference;->mSubInfoList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/carsetting/DataInfoPreference;->mSubInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/car/carsetting/DataInfoPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/car/carsetting/DataInfoPreference;->mSubInfoList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v2, v1}, Lcom/car/carsetting/DataInfoPreference;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    iput-object v1, p0, Lcom/car/carsetting/DataInfoPreference;->mTemplate:Landroid/net/NetworkTemplate;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "template"

    iget-object v2, p0, Lcom/car/carsetting/DataInfoPreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "app"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "fields"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/car/carsetting/DataInfoPreference;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/car/carsetting/DataInfoPreference;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/car/carsetting/SwitchPreference;->onBindView(Landroid/view/View;)V

    iget v0, p0, Lcom/car/carsetting/DataInfoPreference;->mTitleId:I

    if-nez v0, :cond_0

    const v0, 0x7f080052

    invoke-virtual {p0, v0}, Lcom/car/carsetting/DataInfoPreference;->setTitle(I)V

    :goto_0
    iget-object v0, p0, Lcom/car/carsetting/DataInfoPreference;->mSummary:Ljava/lang/String;

    if-nez v0, :cond_1

    const v0, 0x7f080053

    invoke-virtual {p0, v0}, Lcom/car/carsetting/DataInfoPreference;->setSummary(I)V

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lcom/car/carsetting/DataInfoPreference;->mTitleId:I

    invoke-virtual {p0, v0}, Lcom/car/carsetting/DataInfoPreference;->setTitle(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/car/carsetting/DataInfoPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/car/carsetting/DataInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setMobileDataEnabled(Landroid/net/ConnectivityManager;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-ne v0, p2, :cond_1

    const-string v1, "CarSetting.DataInfoPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataEnabled("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), already "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v0, "enabled"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", do nothing"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    const-string v0, "disabled"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/car/carsetting/DataInfoPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    iget-object v0, p0, Lcom/car/carsetting/DataInfoPreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public startLoadData(Landroid/app/LoaderManager;)V
    .locals 2

    iput-object p1, p0, Lcom/car/carsetting/DataInfoPreference;->mLoaderManager:Landroid/app/LoaderManager;

    iget-object v0, p0, Lcom/car/carsetting/DataInfoPreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopLoadData(Landroid/app/LoaderManager;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method
