# classes.dex

.class public Lcom/android/server/display/TorchModeHelper;
.super Ljava/lang/Object;
.source "TorchModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/TorchModeHelper$TorchCallback;,
        Lcom/android/server/display/TorchModeHelper$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TorchModeHelper"

.field private static volatile sInstance:Lcom/android/server/display/TorchModeHelper;


# instance fields
.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/TorchModeHelper$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mTorchCallback:Lcom/android/server/display/TorchModeHelper$TorchCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraManager(Lcom/android/server/display/TorchModeHelper;)Landroid/hardware/camera2/CameraManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/TorchModeHelper;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/display/TorchModeHelper;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/TorchModeHelper;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/display/TorchModeHelper;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/TorchModeHelper;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/TorchModeHelper;->mLock:Ljava/lang/Object;

    .line 17
    new-instance v0, Lcom/android/server/display/TorchModeHelper$TorchCallback;

    invoke-direct {v0, p0}, Lcom/android/server/display/TorchModeHelper$TorchCallback;-><init>(Lcom/android/server/display/TorchModeHelper;)V

    iput-object v0, p0, Lcom/android/server/display/TorchModeHelper;->mTorchCallback:Lcom/android/server/display/TorchModeHelper$TorchCallback;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/TorchModeHelper;->mListeners:Ljava/util/ArrayList;

    .line 22
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/display/TorchModeHelper;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 23
    return-void
.end method

.method private findListenerIndex(Lcom/android/server/display/TorchModeHelper$Callback;)I
    .registers 5
    .param p1, "callback"  # Lcom/android/server/display/TorchModeHelper$Callback;

    .line 58
    iget-object v0, p0, Lcom/android/server/display/TorchModeHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 59
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 60
    iget-object v2, p0, Lcom/android/server/display/TorchModeHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_12

    .line 61
    return v1

    .line 59
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 64
    .end local v1  # "i":I
    :cond_15
    const/4 v1, -0x1

    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/display/TorchModeHelper;
    .registers 3
    .param p0, "context"  # Landroid/content/Context;

    .line 26
    sget-object v0, Lcom/android/server/display/TorchModeHelper;->sInstance:Lcom/android/server/display/TorchModeHelper;

    if-nez v0, :cond_17

    .line 27
    const-class v0, Lcom/android/server/display/TorchModeHelper;

    monitor-enter v0

    .line 28
    :try_start_7
    sget-object v1, Lcom/android/server/display/TorchModeHelper;->sInstance:Lcom/android/server/display/TorchModeHelper;

    if-nez v1, :cond_12

    .line 29
    new-instance v1, Lcom/android/server/display/TorchModeHelper;

    invoke-direct {v1, p0}, Lcom/android/server/display/TorchModeHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/display/TorchModeHelper;->sInstance:Lcom/android/server/display/TorchModeHelper;

    .line 31
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 33
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/server/display/TorchModeHelper;->sInstance:Lcom/android/server/display/TorchModeHelper;

    return-object v0
.end method


# virtual methods
.method public registerTorchCallback(Lcom/android/server/display/TorchModeHelper$Callback;Landroid/os/Handler;)V
    .registers 6
    .param p1, "callback"  # Lcom/android/server/display/TorchModeHelper$Callback;
    .param p2, "handler"  # Landroid/os/Handler;

    .line 37
    iget-object v0, p0, Lcom/android/server/display/TorchModeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/TorchModeHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_12

    .line 39
    iget-object v1, p0, Lcom/android/server/display/TorchModeHelper;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/server/display/TorchModeHelper;->mTorchCallback:Lcom/android/server/display/TorchModeHelper$TorchCallback;

    invoke-virtual {v1, v2, p2}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 41
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/display/TorchModeHelper;->findListenerIndex(Lcom/android/server/display/TorchModeHelper$Callback;)I

    move-result v1

    .line 42
    .local v1, "listenerIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1e

    .line 43
    iget-object v2, p0, Lcom/android/server/display/TorchModeHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v1  # "listenerIndex":I
    :cond_1e
    monitor-exit v0

    .line 46
    return-void

    .line 45
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public unregisterTorchCallback(Lcom/android/server/display/TorchModeHelper$Callback;)V
    .registers 5
    .param p1, "callback"  # Lcom/android/server/display/TorchModeHelper$Callback;

    .line 49
    iget-object v0, p0, Lcom/android/server/display/TorchModeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/TorchModeHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 51
    iget-object v1, p0, Lcom/android/server/display/TorchModeHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_17

    .line 52
    iget-object v1, p0, Lcom/android/server/display/TorchModeHelper;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/server/display/TorchModeHelper;->mTorchCallback:Lcom/android/server/display/TorchModeHelper$TorchCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 54
    :cond_17
    monitor-exit v0

    .line 55
    return-void

    .line 54
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method
