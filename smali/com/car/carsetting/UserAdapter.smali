.class public Lcom/car/carsetting/UserAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserAdapter.java"

# interfaces
.implements Lcom/car/common/ThumbnailCacheManager$ThumbnailCacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/carsetting/UserAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

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

.field mLock:Ljava/lang/Object;

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
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$UserInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/carsetting/UserAdapter;->mUserStatus:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/car/carsetting/UserAdapter;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/car/carsetting/UserAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/car/carsetting/UserAdapter;->mUserInfoList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/car/carsetting/UserAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/car/carsetting/UserAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/car/carsetting/UserAdapter;->mLastMessage:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$100(Lcom/car/carsetting/UserAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/UserAdapter;->mUserInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/carsetting/UserAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/UserAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public clearUserStatus()V
    .locals 2

    iget-object v1, p0, Lcom/car/carsetting/UserAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/carsetting/UserAdapter;->mUserStatus:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lcom/car/carsetting/UserAdapter;->notifyDataSetChanged()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/UserAdapter;->mUserInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Lcom/car/carsetting/UserAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/carsetting/UserAdapter;->mUserInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v8, 0x0

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/car/carsetting/UserAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/car/carsetting/UserAdapter;->mUserInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/car/cloud/Type$UserInfo;

    move-object v3, v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    iget-object v6, p0, Lcom/car/carsetting/UserAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03000c

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/carsetting/UserAdapter$ViewHolder;

    if-nez v2, :cond_1

    new-instance v2, Lcom/car/carsetting/UserAdapter$ViewHolder;

    invoke-direct {v2, p0, v8}, Lcom/car/carsetting/UserAdapter$ViewHolder;-><init>(Lcom/car/carsetting/UserAdapter;Lcom/car/carsetting/UserAdapter$1;)V

    const v6, 0x7f0a0025

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/car/carsetting/UserAdapter$ViewHolder;->mNameView:Landroid/widget/TextView;

    const v6, 0x7f0a0024

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/car/carsetting/UserAdapter$ViewHolder;->mHeadImage:Landroid/widget/ImageView;

    const v6, 0x7f0a0026

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/car/carsetting/UserAdapter$ViewHolder;->mMessageView:Landroid/widget/TextView;

    const v6, 0x7f0a0027

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/car/carsetting/UserAdapter$ViewHolder;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    const-string v6, "0"

    const-string v7, "ro.carassist.unbind"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v2, Lcom/car/carsetting/UserAdapter$ViewHolder;->mDelete:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v6, v2, Lcom/car/carsetting/UserAdapter$ViewHolder;->mDelete:Landroid/widget/ImageView;

    new-instance v7, Lcom/car/carsetting/UserAdapter$1;

    invoke-direct {v7, p0, p1}, Lcom/car/carsetting/UserAdapter$1;-><init>(Lcom/car/carsetting/UserAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v2, Lcom/car/carsetting/UserAdapter$ViewHolder;->mNameView:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/car/cloud/Type$UserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/car/carsetting/UserAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    iget-object v6, p0, Lcom/car/carsetting/UserAdapter;->mUserStatus:Ljava/util/HashMap;

    iget-object v8, v3, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_5

    iget-object v6, v2, Lcom/car/carsetting/UserAdapter$ViewHolder;->mMessageView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/car/carsetting/UserAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f08005a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 v1, 0x0

    iget-object v6, v3, Lcom/car/cloud/Type$UserInfo;->headImgUrl:Ljava/lang/String;

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/car/common/ThumbnailCacheManager;->instance()Lcom/car/common/ThumbnailCacheManager;

    move-result-object v6

    iget-object v7, v3, Lcom/car/cloud/Type$UserInfo;->headImgUrl:Ljava/lang/String;

    iget-object v8, v3, Lcom/car/cloud/Type$UserInfo;->headImgUrl:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v8, v9}, Lcom/car/common/ThumbnailCacheManager;->getThumbnail(Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_6

    iget-object v6, v2, Lcom/car/carsetting/UserAdapter$ViewHolder;->mHeadImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    return-object p2

    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    iget-object v6, v2, Lcom/car/carsetting/UserAdapter$ViewHolder;->mMessageView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/car/carsetting/UserAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f08005b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v6, v2, Lcom/car/carsetting/UserAdapter$ViewHolder;->mHeadImage:Landroid/widget/ImageView;

    const v7, 0x7f020002

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public onThumbnailCacheDone(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0}, Lcom/car/carsetting/UserAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setUserList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$UserInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/car/carsetting/UserAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/car/carsetting/UserAdapter;->mUserInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/car/carsetting/UserAdapter;->notifyDataSetChanged()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUserStatus(Ljava/lang/String;Z)V
    .locals 3

    iget-object v1, p0, Lcom/car/carsetting/UserAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/carsetting/UserAdapter;->mUserStatus:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/car/carsetting/UserAdapter;->notifyDataSetChanged()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUserStatus(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/car/carsetting/UserAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/car/carsetting/UserAdapter;->mUserStatus:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/car/carsetting/UserAdapter;->notifyDataSetChanged()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
