.class public Lcom/car/carsetting/StorageFragment;
.super Landroid/preference/PreferenceFragment;
.source "StorageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/carsetting/StorageFragment$IndexComparator;
    }
.end annotation


# static fields
.field static final AUTOCLEAR_KEY:Ljava/lang/String; = "autoclear"

.field private static final CAPTURE_PATH:Ljava/lang/String;

.field static final DVR_KEY:Ljava/lang/String; = "dvr"

.field private static final DVR_PATH:Ljava/lang/String;

.field static final FORMAT_KEY:Ljava/lang/String; = "format"

.field private static final LOCKED_PATH:Ljava/lang/String;

.field private static final LOST_PATH:Ljava/lang/String;

.field static final MANUAL_KEY:Ljava/lang/String; = "manual"

.field static final MSG_RESET_COUNT:I = 0x2

.field static final OTHER_KEY:Ljava/lang/String; = "other"

.field private static final PHOTO_PATH:Ljava/lang/String;

.field private static final SD_STORAGE_PATH:Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "CarSetting.StorageFragment"

.field static final TOTAL_KEY:Ljava/lang/String; = "total"

.field private static final VIDEO_PATH:Ljava/lang/String;

.field static final VOLUME_CHECK:I = 0x1

.field static final VOLUME_CHECK_FINISHED:I = 0x3


# instance fields
.field mAutoCheckBoxPreference:Landroid/preference/CheckBoxPreference;

.field mAvailableSize:J

.field mCaptureSize:J

.field mContext:Landroid/content/Context;

.field mCountClickVersion:I

.field mDVRPreference:Landroid/preference/Preference;

.field mDVRSize:J

.field mFormatPreference:Landroid/preference/Preference;

.field mHandler:Landroid/os/Handler;

.field mLockSize:J

.field mManualPreference:Landroid/preference/Preference;

.field mOtherPreference:Landroid/preference/Preference;

.field mPaused:Z

.field mPhotoSize:J

.field mSDVolume:Landroid/os/storage/StorageVolume;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;

.field mTotalPreference:Landroid/preference/PreferenceCategory;

.field mTotalSize:J

.field mVideoSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/car/common/CarPath;->getDVRRootPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/carsetting/StorageFragment;->SD_STORAGE_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/car/common/CarPath;->getDVRPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/carsetting/StorageFragment;->DVR_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/car/common/CarPath;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/carsetting/StorageFragment;->VIDEO_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/car/common/CarPath;->getLockPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/carsetting/StorageFragment;->LOCKED_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/car/common/CarPath;->getCapturePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/carsetting/StorageFragment;->CAPTURE_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/car/common/CarPath;->getPhotoPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/carsetting/StorageFragment;->PHOTO_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/car/common/CarPath;->getLostPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/carsetting/StorageFragment;->LOST_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/car/carsetting/StorageFragment;->mCountClickVersion:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/carsetting/StorageFragment;->mPaused:Z

    new-instance v0, Lcom/car/carsetting/StorageFragment$1;

    invoke-direct {v0, p0}, Lcom/car/carsetting/StorageFragment$1;-><init>(Lcom/car/carsetting/StorageFragment;)V

    iput-object v0, p0, Lcom/car/carsetting/StorageFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/carsetting/StorageFragment$2;

    invoke-direct {v0, p0}, Lcom/car/carsetting/StorageFragment$2;-><init>(Lcom/car/carsetting/StorageFragment;)V

    iput-object v0, p0, Lcom/car/carsetting/StorageFragment;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/carsetting/StorageFragment;->SD_STORAGE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/carsetting/StorageFragment;->DVR_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/io/File;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/car/carsetting/StorageFragment;->getFileSizes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/carsetting/StorageFragment;->LOCKED_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/carsetting/StorageFragment;->CAPTURE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/carsetting/StorageFragment;->PHOTO_PATH:Ljava/lang/String;

    return-object v0
.end method

.method private filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    const-string v2, "CarSetting.StorageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Volume : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    iget-object v5, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/carsetting/StorageFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v5, p1, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , emulated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/carsetting/StorageFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v2, p1, v0

    iput-object v2, p0, Lcom/car/carsetting/StorageFragment;->mSDVolume:Landroid/os/storage/StorageVolume;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/storage/StorageVolume;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/storage/StorageVolume;

    return-object v2
.end method

.method private static getFileSize(Ljava/io/File;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private static getFileSizes(Ljava/io/File;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move-wide v4, v2

    :goto_0
    return-wide v4

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    move-wide v4, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_3

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v0, v1

    invoke-static {v6}, Lcom/car/carsetting/StorageFragment;->getFileSizes(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v2, v6

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    aget-object v6, v0, v1

    invoke-static {v6}, Lcom/car/carsetting/StorageFragment;->getFileSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_2

    :cond_3
    move-wide v4, v2

    goto :goto_0
.end method


# virtual methods
.method dirSize(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    const-string v1, "0"

    :try_start_0
    invoke-static {p1}, Lcom/car/carsetting/StorageFragment;->getFileSizes(Ljava/io/File;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "CarSetting.StorageFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " total="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method fileManage()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/car/common/CarUtil;->isSp9832Platform()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sprd.fileexplorer"

    const-string v3, "com.sprd.fileexplorer.activities.FileExploreActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/car/carsetting/StorageFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.mediatek.filemanager"

    const-string v3, "com.mediatek.filemanager.FileManagerOperationActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method formatVolume()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.MediaFormat"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "storage_volume"

    iget-object v3, p0, Lcom/car/carsetting/StorageFragment;->mSDVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/car/carsetting/StorageFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method formatVolume2()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.sdformat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/StorageFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/car/carsetting/StorageFragment;->filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/car/carsetting/StorageFragment;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    iget-object v0, p0, Lcom/car/carsetting/StorageFragment;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method getVolumeSize(Ljava/lang/String;)V
    .locals 12

    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v4, v9

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v9

    int-to-long v6, v9

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    mul-long v10, v4, v6

    iput-wide v10, p0, Lcom/car/carsetting/StorageFragment;->mTotalSize:J

    mul-long v10, v0, v4

    iput-wide v10, p0, Lcom/car/carsetting/StorageFragment;->mAvailableSize:J

    iget-object v9, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    iget-wide v10, p0, Lcom/car/carsetting/StorageFragment;->mTotalSize:J

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    iget-wide v10, p0, Lcom/car/carsetting/StorageFragment;->mAvailableSize:J

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const-string v9, "CarSetting.StorageFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "total="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", available="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method ignoredFileDel()V
    .locals 11

    const/4 v10, 0x0

    new-instance v5, Ljava/io/File;

    sget-object v7, Lcom/car/carsetting/StorageFragment;->LOST_PATH:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v7, Lcom/car/carsetting/StorageFragment$IndexComparator;

    invoke-direct {v7}, Lcom/car/carsetting/StorageFragment$IndexComparator;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    const-string v8, "CarSetting.StorageFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "first one is "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method jump2Storage()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.car.carsetting"

    const-string v3, "com.car.carsetting.MainActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "jump2storage"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/car/carsetting/StorageFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/car/carsetting/StorageFragment;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/car/carsetting/StorageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/car/carsetting/StorageFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v0, "manual"

    invoke-virtual {p0, v0}, Lcom/car/carsetting/StorageFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/car/carsetting/StorageFragment;->mManualPreference:Landroid/preference/Preference;

    const-string v0, "format"

    invoke-virtual {p0, v0}, Lcom/car/carsetting/StorageFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/car/carsetting/StorageFragment;->mFormatPreference:Landroid/preference/Preference;

    const-string v0, "total"

    invoke-virtual {p0, v0}, Lcom/car/carsetting/StorageFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/car/carsetting/StorageFragment;->mTotalPreference:Landroid/preference/PreferenceCategory;

    const-string v0, "dvr"

    invoke-virtual {p0, v0}, Lcom/car/carsetting/StorageFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/car/carsetting/StorageFragment;->mDVRPreference:Landroid/preference/Preference;

    const-string v0, "other"

    invoke-virtual {p0, v0}, Lcom/car/carsetting/StorageFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/car/carsetting/StorageFragment;->mOtherPreference:Landroid/preference/Preference;

    const-string v0, "autoclear"

    invoke-virtual {p0, v0}, Lcom/car/carsetting/StorageFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/car/carsetting/StorageFragment;->mAutoCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/car/carsetting/StorageFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/car/carsetting/StorageFragment;->mAutoCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    const-string v1, "com.car.dvr"

    invoke-static {v0, v1}, Lcom/car/common/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/car/carsetting/StorageFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/car/carsetting/StorageFragment;->mOtherPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/car/carsetting/StorageFragment;->getVolumeList()[Landroid/os/storage/StorageVolume;

    const-string v0, "ro.settings.remove02"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dvr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/car/carsetting/StorageFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/car/carsetting/StorageFragment;->mDVRPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    :try_start_0
    const-class v2, Landroid/app/Fragment;

    const-string v3, "mChildFragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    iput-boolean v1, p0, Lcom/car/carsetting/StorageFragment;->mPaused:Z

    iget-object v0, p0, Lcom/car/carsetting/StorageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/carsetting/StorageFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/carsetting/StorageFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/car/carsetting/StorageFragment;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const/4 v6, 0x2

    iget-object v3, p0, Lcom/car/carsetting/StorageFragment;->mFormatPreference:Landroid/preference/Preference;

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Lcom/car/carsetting/StorageFragment;->mSDVolume:Landroid/os/storage/StorageVolume;

    if-eqz v3, :cond_1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080058

    new-instance v5, Lcom/car/carsetting/StorageFragment$3;

    invoke-direct {v5, p0}, Lcom/car/carsetting/StorageFragment$3;-><init>(Lcom/car/carsetting/StorageFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080059

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_1
    iget-object v3, p0, Lcom/car/carsetting/StorageFragment;->mManualPreference:Landroid/preference/Preference;

    if-ne p2, v3, :cond_2

    invoke-virtual {p0}, Lcom/car/carsetting/StorageFragment;->fileManage()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/car/carsetting/StorageFragment;->mAutoCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    iget-object v3, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/car/carsetting/StorageFragment;->mAutoCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/car/common/ProviderUtils;->setAutoClear(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/car/carsetting/StorageFragment;->mDVRPreference:Landroid/preference/Preference;

    if-ne p2, v3, :cond_0

    iget v3, p0, Lcom/car/carsetting/StorageFragment;->mCountClickVersion:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/car/carsetting/StorageFragment;->mCountClickVersion:I

    iget v3, p0, Lcom/car/carsetting/StorageFragment;->mCountClickVersion:I

    if-nez v3, :cond_4

    const/4 v3, 0x5

    iput v3, p0, Lcom/car/carsetting/StorageFragment;->mCountClickVersion:I

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.car.selftest"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/car/carsetting/StorageFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/car/carsetting/StorageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/car/carsetting/StorageFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/carsetting/StorageFragment;->mPaused:Z

    iget-object v0, p0, Lcom/car/carsetting/StorageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/carsetting/StorageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/car/carsetting/StorageFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/car/carsetting/StorageFragment;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method previousLockedVideoDel()V
    .locals 11

    const/4 v10, 0x0

    new-instance v5, Ljava/io/File;

    sget-object v7, Lcom/car/carsetting/StorageFragment;->LOCKED_PATH:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/car/carsetting/StorageFragment$IndexComparator;

    invoke-direct {v7}, Lcom/car/carsetting/StorageFragment$IndexComparator;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    const-string v8, "CarSetting.StorageFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "first one is "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method refreshInfo()V
    .locals 11

    const v10, 0x7f08001a

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/car/carsetting/StorageFragment;->mSDVolume:Landroid/os/storage/StorageVolume;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/car/carsetting/StorageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/car/carsetting/StorageFragment;->mTotalSize:J

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/car/carsetting/StorageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/car/carsetting/StorageFragment;->mAvailableSize:J

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/car/carsetting/StorageFragment;->mTotalPreference:Landroid/preference/PreferenceCategory;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/car/carsetting/StorageFragment;->mSDVolume:Landroid/os/storage/StorageVolume;

    iget-object v6, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/car/carsetting/StorageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/car/carsetting/StorageFragment;->mDVRSize:J

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/car/carsetting/StorageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/car/carsetting/StorageFragment;->mCaptureSize:J

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/car/carsetting/StorageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/car/carsetting/StorageFragment;->mLockSize:J

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/car/carsetting/StorageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/car/carsetting/StorageFragment;->mDVRSize:J

    iget-wide v8, p0, Lcom/car/carsetting/StorageFragment;->mLockSize:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/car/carsetting/StorageFragment;->mCaptureSize:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/car/carsetting/StorageFragment;->mPhotoSize:J

    sub-long/2addr v6, v8

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/car/carsetting/StorageFragment;->mDVRPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/car/carsetting/StorageFragment;->mOtherPreference:Landroid/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/car/carsetting/StorageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/car/carsetting/StorageFragment;->mTotalSize:J

    iget-wide v8, p0, Lcom/car/carsetting/StorageFragment;->mDVRSize:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/car/carsetting/StorageFragment;->mAvailableSize:J

    sub-long/2addr v6, v8

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/car/carsetting/StorageFragment;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    iget-object v3, p0, Lcom/car/carsetting/StorageFragment;->mAutoCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/car/carsetting/StorageFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/ProviderUtils;->getAutoClear(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/car/carsetting/StorageFragment;->mTotalPreference:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/car/carsetting/StorageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/car/carsetting/StorageFragment;->mDVRPreference:Landroid/preference/Preference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/car/carsetting/StorageFragment;->mOtherPreference:Landroid/preference/Preference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/car/carsetting/StorageFragment;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
