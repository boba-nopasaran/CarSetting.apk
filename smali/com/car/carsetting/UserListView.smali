.class public Lcom/car/carsetting/UserListView;
.super Landroid/widget/LinearLayout;
.source "UserListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/car/carsetting/MyApplication$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/carsetting/UserListView$CarCloudCallback;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.car.cloud.cloudmsgprovider"

.field private static final MSG_RECEIVE_MESSAGE:I = 0x65

.field private static final MSG_REFRESH_USERLIST:I = 0x64

.field private static final MSG_REFRESH_USERSTATUS:I = 0x66

.field private static final SERIALNO:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CarSetting_UserListView"

.field public static final URI:Landroid/net/Uri;

.field public static final URI_DEVICE:Landroid/net/Uri;

.field public static final URI_MSG:Landroid/net/Uri;

.field public static final URI_USER:Landroid/net/Uri;


# instance fields
.field private mCarCloud:Lcom/car/common/ICarCloud;

.field private mCarCloudCallback:Lcom/car/carsetting/UserListView$CarCloudCallback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastMessage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mNoneTip:Landroid/widget/TextView;

.field private mUserAdapter:Lcom/car/carsetting/UserAdapter;

.field private mUserInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/carsetting/UserListView;->SERIALNO:Ljava/lang/String;

    const-string v0, "content://com.car.cloud.cloudmsgprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/carsetting/UserListView;->URI:Landroid/net/Uri;

    const-string v0, "content://com.car.cloud.cloudmsgprovider/msg/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/carsetting/UserListView;->URI_MSG:Landroid/net/Uri;

    const-string v0, "content://com.car.cloud.cloudmsgprovider/device/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/carsetting/UserListView;->URI_DEVICE:Landroid/net/Uri;

    const-string v0, "content://com.car.cloud.cloudmsgprovider/user/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/carsetting/UserListView;->URI_USER:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/carsetting/UserListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/car/carsetting/UserListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/car/carsetting/UserListView;->mUserInfoList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/car/carsetting/UserListView;->mUserStatus:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/car/carsetting/UserListView;->mLastMessage:Ljava/util/HashMap;

    new-instance v1, Lcom/car/carsetting/UserListView$CarCloudCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/car/carsetting/UserListView$CarCloudCallback;-><init>(Lcom/car/carsetting/UserListView;Lcom/car/carsetting/UserListView$1;)V

    iput-object v1, p0, Lcom/car/carsetting/UserListView;->mCarCloudCallback:Lcom/car/carsetting/UserListView$CarCloudCallback;

    new-instance v1, Lcom/car/carsetting/UserListView$1;

    invoke-direct {v1, p0}, Lcom/car/carsetting/UserListView$1;-><init>(Lcom/car/carsetting/UserListView;)V

    iput-object v1, p0, Lcom/car/carsetting/UserListView;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/car/carsetting/UserListView;->mListView:Landroid/widget/ListView;

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/car/carsetting/UserListView;->mNoneTip:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/car/carsetting/UserListView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/carsetting/UserListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/car/carsetting/UserListView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/UserListView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/carsetting/UserListView;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/UserListView;->mUserStatus:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/carsetting/UserListView;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/carsetting/UserListView;->setUserList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/car/carsetting/UserListView;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/UserListView;->mLastMessage:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/carsetting/UserListView;)Lcom/car/carsetting/UserAdapter;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/UserListView;->mUserAdapter:Lcom/car/carsetting/UserAdapter;

    return-object v0
.end method

.method private getCarCloud()V
    .locals 3

    invoke-static {}, Lcom/car/carsetting/MyApplication;->getCarCloud()Lcom/car/common/ICarCloud;

    move-result-object v1

    iput-object v1, p0, Lcom/car/carsetting/UserListView;->mCarCloud:Lcom/car/common/ICarCloud;

    iget-object v1, p0, Lcom/car/carsetting/UserListView;->mCarCloud:Lcom/car/common/ICarCloud;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/car/carsetting/UserListView;->mCarCloud:Lcom/car/common/ICarCloud;

    iget-object v2, p0, Lcom/car/carsetting/UserListView;->mCarCloudCallback:Lcom/car/carsetting/UserListView$CarCloudCallback;

    invoke-interface {v1, v2}, Lcom/car/common/ICarCloud;->registerCallback(Lcom/car/common/ICarCloudCallback;)V

    iget-object v1, p0, Lcom/car/carsetting/UserListView;->mCarCloud:Lcom/car/common/ICarCloud;

    invoke-interface {v1}, Lcom/car/common/ICarCloud;->getUserListAsync()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getLastMessage()V
    .locals 14

    iget-object v0, p0, Lcom/car/carsetting/UserListView;->mUserInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/car/cloud/Type$UserInfo;

    iget-object v0, p0, Lcom/car/carsetting/UserListView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/car/carsetting/UserListView;->URI_MSG:Landroid/net/Uri;

    sget-object v2, Lcom/car/carsetting/UserListView;->SERIALNO:Ljava/lang/String;

    iget-object v3, v12, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const-string v7, "text"

    invoke-static/range {v0 .. v7}, Lcom/car/cloud/CloudMsgProviderUtils;->getMsgList(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/car/cloud/Type$MsgInfo;

    const/4 v13, 0x0

    sget-object v0, Lcom/car/carsetting/UserListView;->SERIALNO:Ljava/lang/String;

    iget-object v1, v11, Lcom/car/cloud/Type$MsgInfo;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v13, v11, Lcom/car/cloud/Type$MsgInfo;->to:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/car/carsetting/UserListView;->mLastMessage:Ljava/util/HashMap;

    iget-object v1, v11, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v13, v11, Lcom/car/cloud/Type$MsgInfo;->from:Ljava/lang/String;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private getUserStatus()V
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/car/carsetting/UserListView;->mCarCloud:Lcom/car/common/ICarCloud;

    if-eqz v6, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/car/carsetting/UserListView;->mCarCloud:Lcom/car/common/ICarCloud;

    invoke-interface {v6}, Lcom/car/common/ICarCloud;->getUserStatus()Ljava/lang/String;

    move-result-object v2

    const-string v6, "CarSetting_UserListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UserStatus:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/car/carsetting/UserListView;->mUserStatus:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v9, p0, Lcom/car/carsetting/UserListView;->mUserStatus:Ljava/util/HashMap;

    if-ne v4, v7, :cond_2

    move v6, v7

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "CarSetting_UserListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/car/carsetting/UserListView;->mUserAdapter:Lcom/car/carsetting/UserAdapter;

    if-eqz v6, :cond_0

    iget-object v9, p0, Lcom/car/carsetting/UserListView;->mUserAdapter:Lcom/car/carsetting/UserAdapter;

    if-ne v4, v7, :cond_3

    move v6, v7

    :goto_2
    invoke-virtual {v9, v5, v6}, Lcom/car/carsetting/UserAdapter;->setUserStatus(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "CarSetting_UserListView"

    const-string v7, "get or set UserStatus failed, "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    move v6, v8

    goto :goto_1

    :cond_3
    move v6, v8

    goto :goto_2
.end method

.method private setUserList(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$UserInfo;",
            ">;)V"
        }
    .end annotation

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v0, "CarSetting_UserListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserList, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/carsetting/UserListView;->mUserInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/car/carsetting/UserListView;->mUserInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/car/carsetting/UserListView;->getUserStatus()V

    invoke-direct {p0}, Lcom/car/carsetting/UserListView;->getLastMessage()V

    iget-object v0, p0, Lcom/car/carsetting/UserListView;->mUserAdapter:Lcom/car/carsetting/UserAdapter;

    if-eqz v0, :cond_0

    const-string v0, "CarSetting_UserListView"

    const-string v1, "setUserList, notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/carsetting/UserListView;->mUserAdapter:Lcom/car/carsetting/UserAdapter;

    iget-object v1, p0, Lcom/car/carsetting/UserListView;->mUserStatus:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/car/carsetting/UserAdapter;->setUserStatus(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/car/carsetting/UserListView;->mUserAdapter:Lcom/car/carsetting/UserAdapter;

    iget-object v1, p0, Lcom/car/carsetting/UserListView;->mUserInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/car/carsetting/UserAdapter;->setUserList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/car/carsetting/UserListView;->mUserAdapter:Lcom/car/carsetting/UserAdapter;

    invoke-virtual {v0}, Lcom/car/carsetting/UserAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/car/carsetting/UserListView;->mUserInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/car/carsetting/UserListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/carsetting/UserListView;->mNoneTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/carsetting/UserListView;->mNoneTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/car/carsetting/UserListView;->mContext:Landroid/content/Context;

    const v2, 0x7f080064

    invoke-static {v1, v2}, Lcom/car/common/OEM;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/carsetting/UserListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/carsetting/UserListView;->mNoneTip:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 10

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string v6, "CarSetting_UserListView"

    const-string v7, "onAttachedToWindow"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/car/carsetting/MyApplication;->registerListener(Lcom/car/carsetting/MyApplication$Listener;)V

    invoke-direct {p0}, Lcom/car/carsetting/UserListView;->getCarCloud()V

    invoke-direct {p0}, Lcom/car/carsetting/UserListView;->getLastMessage()V

    new-instance v6, Lcom/car/carsetting/UserAdapter;

    iget-object v7, p0, Lcom/car/carsetting/UserListView;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/car/carsetting/UserListView;->mUserInfoList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/car/carsetting/UserListView;->mLastMessage:Ljava/util/HashMap;

    invoke-direct {v6, v7, v8, v9}, Lcom/car/carsetting/UserAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    iput-object v6, p0, Lcom/car/carsetting/UserListView;->mUserAdapter:Lcom/car/carsetting/UserAdapter;

    iget-object v6, p0, Lcom/car/carsetting/UserListView;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/car/carsetting/UserListView;->mUserAdapter:Lcom/car/carsetting/UserAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, p0, Lcom/car/carsetting/UserListView;->mUserStatus:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/car/carsetting/UserListView;->mUserAdapter:Lcom/car/carsetting/UserAdapter;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/car/carsetting/UserAdapter;->setUserStatus(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    long-to-int v3, v6

    div-int/lit8 v0, v3, 0x10

    iget-object v6, p0, Lcom/car/carsetting/UserListView;->mContext:Landroid/content/Context;

    const/high16 v7, 0xa00000

    invoke-static {v6, v0, v7}, Lcom/car/common/ThumbnailCacheManager;->create(Landroid/content/Context;II)V

    invoke-static {}, Lcom/car/common/ThumbnailCacheManager;->instance()Lcom/car/common/ThumbnailCacheManager;

    move-result-object v6

    iget-object v7, p0, Lcom/car/carsetting/UserListView;->mUserAdapter:Lcom/car/carsetting/UserAdapter;

    invoke-virtual {v6, v7}, Lcom/car/common/ThumbnailCacheManager;->addThumbnailCacheListener(Lcom/car/common/ThumbnailCacheManager$ThumbnailCacheListener;)V

    return-void
.end method

.method public onCarCloudChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/car/carsetting/UserListView;->getCarCloud()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-string v1, "CarSetting_UserListView"

    const-string v2, "onDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/common/ThumbnailCacheManager;->destory()V

    invoke-static {p0}, Lcom/car/carsetting/MyApplication;->unregisterListener(Lcom/car/carsetting/MyApplication$Listener;)V

    iget-object v1, p0, Lcom/car/carsetting/UserListView;->mCarCloud:Lcom/car/common/ICarCloud;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/car/carsetting/UserListView;->mCarCloud:Lcom/car/common/ICarCloud;

    iget-object v2, p0, Lcom/car/carsetting/UserListView;->mCarCloudCallback:Lcom/car/carsetting/UserListView$CarCloudCallback;

    invoke-interface {v1, v2}, Lcom/car/common/ICarCloud;->unregisterCallback(Lcom/car/common/ICarCloudCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method
