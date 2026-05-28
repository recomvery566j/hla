# classes.dex

.class public Lcom/android/server/display/eyecare/NotifyPopUpManager;
.super Ljava/lang/Object;
.source "NotifyPopUpManager.java"


# static fields
.field private static final NOTIFY_APP_CATEGORY_TYPE_READ:I = 0x1

.field private static final READ_APP_CATEGORY_TYPE_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NotifyPopUpManager"

.field private static final USER_ID_DEFAULT:I

.field private static mAppType:I

.field private static mUserId:I


# instance fields
.field private mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private mAppCategoryMapper:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppChanged:Z

.field private mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mDebug:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsDeskTopMode:Z

.field private mNeedShowOpenConfirmNotification:Z

.field private mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private final mProcessObserver:Landroid/app/IProcessObserver$Stub;

.field private mReadAppOperationListenerMaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Lmiui/hardware/display/IReadAppOperationListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTaskStackListener:Landroid/app/TaskStackListener;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$g7qtWU9wl70HkcnU1Z4OFVoBsig(Lcom/android/server/display/eyecare/NotifyPopUpManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->lambda$enableRhythmicEyeCareNotification$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/eyecare/NotifyPopUpManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateState(Lcom/android/server/display/eyecare/NotifyPopUpManager;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->updateState(ZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppType:I

    .line 51
    sput v0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mUserId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mDebug:Z

    .line 60
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppChanged:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mNeedShowOpenConfirmNotification:Z

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mReadAppOperationListenerMaps:Landroid/util/SparseArray;

    .line 319
    new-instance v0, Lcom/android/server/display/eyecare/NotifyPopUpManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager$2;-><init>(Lcom/android/server/display/eyecare/NotifyPopUpManager;)V

    iput-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 326
    new-instance v0, Lcom/android/server/display/eyecare/NotifyPopUpManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager$3;-><init>(Lcom/android/server/display/eyecare/NotifyPopUpManager;)V

    iput-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    .line 67
    iput-object p1, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mHandler:Landroid/os/Handler;

    .line 69
    const-class v0, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 70
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 71
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 72
    return-void
.end method

.method private broadcastToListeners(Landroid/os/RemoteCallbackList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Lmiui/hardware/display/IReadAppOperationListener;",
            ">;)V"
        }
    .end annotation

    .line 295
    .local p1, "listenerList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lmiui/hardware/display/IReadAppOperationListener;>;"
    if-nez p1, :cond_3

    .line 296
    return-void

    .line 298
    :cond_3
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 300
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_26

    .line 301
    :try_start_a
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lmiui/hardware/display/IReadAppOperationListener;

    .line 302
    .local v2, "listener":Lmiui/hardware/display/IReadAppOperationListener;
    invoke-interface {v2}, Lmiui/hardware/display/IReadAppOperationListener;->onStartReadApp()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_18
    .catchall {:try_start_a .. :try_end_13} :catchall_16

    .line 300
    .end local v2  # "listener":Lmiui/hardware/display/IReadAppOperationListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 307
    .end local v1  # "i":I
    :catchall_16
    move-exception v1

    goto :goto_22

    .line 304
    :catch_18
    move-exception v1

    .line 305
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v2, "NotifyPopUpManager"

    const-string v3, "Error in onStartReadApp"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    .line 307
    nop

    .end local v1  # "e":Landroid/os/RemoteException;
    goto :goto_27

    :goto_22
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 308
    throw v1

    .line 307
    :cond_26
    nop

    :goto_27
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 308
    nop

    .line 309
    return-void
.end method

.method private disableRhythmicEyeCareNotification()V
    .registers 3

    .line 360
    iget-boolean v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mNeedShowOpenConfirmNotification:Z

    if-nez v0, :cond_5

    .line 361
    return-void

    .line 363
    :cond_5
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppType:I

    .line 364
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppChanged:Z

    .line 365
    iput-boolean v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mNeedShowOpenConfirmNotification:Z

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mComponentName:Landroid/content/ComponentName;

    .line 367
    invoke-direct {p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->unregisterForegroundAppObserver()V

    .line 368
    return-void
.end method

.method private enableRhythmicEyeCareNotification()V
    .registers 3

    .line 351
    iget-boolean v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mNeedShowOpenConfirmNotification:Z

    if-eqz v0, :cond_5

    .line 352
    return-void

    .line 354
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mNeedShowOpenConfirmNotification:Z

    .line 355
    invoke-direct {p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->registerForegroundAppObserver()V

    .line 356
    iget-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/eyecare/NotifyPopUpManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/eyecare/NotifyPopUpManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    return-void
.end method

.method private getAppTypeByPkgName(Ljava/lang/String;)I
    .registers 6
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 119
    iget-object v1, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 120
    .local v1, "appType":I
    iget-object v2, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 121
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_1a

    .line 122
    goto :goto_21

    .line 124
    :cond_1a
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 125
    return v1

    .line 118
    .end local v1  # "appType":I
    .end local v2  # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_21
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    .end local v0  # "i":I
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method private handleAppChangedOperation(I)V
    .registers 5
    .param p1, "type"  # I

    .line 242
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->shouldProcessReadApp()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 243
    invoke-direct {p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->processReadAppOperation()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 247
    :cond_9
    goto :goto_12

    .line 245
    :catch_a
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotifyPopUpManager"

    const-string v2, "Error in app operation handling"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method private incrementNotificationCount()I
    .registers 6

    .line 280
    iget-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_show_count"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 285
    .local v0, "count":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fw appChange - NOTIFY_APP_CATEGORY_TYPE_READ: userId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", count = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NotifyPopUpManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v2, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 291
    return v0
.end method

.method private synthetic lambda$enableRhythmicEyeCareNotification$0()V
    .registers 3

    .line 356
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->updateState(ZI)V

    return-void
.end method

.method private logApplyDetails(I)V
    .registers 4
    .param p1, "type"  # I

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "fw applyChange, appType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifyPopUpManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method private logInitialState(ZI)V
    .registers 5
    .param p1, "forceApply"  # Z
    .param p2, "type"  # I

    .line 227
    iget-boolean v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mDebug:Z

    if-eqz v0, :cond_27

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "fw applyChange, forceApply = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifyPopUpManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_27
    return-void
.end method

.method private processReadAppOperation()V
    .registers 4

    .line 256
    invoke-direct {p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->resolveListenerList()Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 257
    .local v0, "listenerList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lmiui/hardware/display/IReadAppOperationListener;>;"
    if-nez v0, :cond_f

    .line 258
    const-string v1, "NotifyPopUpManager"

    const-string/jumbo v2, "updateState error mReadAppOperationListener is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 262
    :cond_f
    invoke-direct {p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->incrementNotificationCount()I

    move-result v1

    .line 263
    .local v1, "newCount":I
    const/4 v2, 0x3

    if-le v1, v2, :cond_1b

    .line 264
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->setNeedShowOpenConfirmNotification(Z)V

    .line 265
    return-void

    .line 268
    :cond_1b
    invoke-direct {p0, v0}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->broadcastToListeners(Landroid/os/RemoteCallbackList;)V

    .line 269
    return-void
.end method

.method private registerForegroundAppObserver()V
    .registers 4

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 373
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 376
    goto :goto_1a

    .line 374
    :catch_11
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NotifyPopUpManager"

    const-string/jumbo v2, "registerForegroundAppObserver failed."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method private resolveListenerList()Landroid/os/RemoteCallbackList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lmiui/hardware/display/IReadAppOperationListener;",
            ">;"
        }
    .end annotation

    .line 272
    sget v0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mUserId:I

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_10

    .line 273
    iget-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mReadAppOperationListenerMaps:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    return-object v0

    .line 275
    :cond_10
    iget-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mReadAppOperationListenerMaps:Landroid/util/SparseArray;

    sget v1, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method private shouldApplyChanges(Z)Z
    .registers 3
    .param p1, "forceApply"  # Z

    .line 233
    invoke-direct {p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->updateForegroundAppType()Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private shouldProcessReadApp()Z
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mReadAppOperationListenerMaps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_e

    sget v0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private unregisterForegroundAppObserver()V
    .registers 4

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 382
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 385
    goto :goto_1a

    .line 383
    :catch_11
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NotifyPopUpManager"

    const-string/jumbo v2, "unregisterForegroundAppObserver failed."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method private updateAppType(II)Z
    .registers 5
    .param p1, "appType"  # I
    .param p2, "userId"  # I

    .line 203
    iget-boolean v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAppType, mCurrentAppType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifyPopUpManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_29
    sget v0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppType:I

    if-eq v0, p1, :cond_35

    .line 207
    sput p1, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppType:I

    .line 208
    sput p2, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mUserId:I

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppChanged:Z

    .line 210
    return v0

    .line 212
    :cond_35
    const/4 v0, 0x0

    return v0
.end method

.method private updateForegroundAppType()Z
    .registers 13

    .line 133
    const-string v0, "NotifyPopUpManager"

    const/4 v1, 0x0

    .line 134
    .local v1, "topActivity":Landroid/content/ComponentName;
    const/4 v2, 0x1

    .line 135
    .local v2, "topActivityFullScreenOrNotOccluded":Z
    const/4 v3, 0x0

    .line 136
    .local v3, "visibleTaskNum":I
    const/4 v4, -0x1

    .line 138
    .local v4, "userId":I
    const/4 v5, 0x0

    :try_start_7
    iget-object v6, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v6}, Landroid/app/IActivityTaskManager;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v6

    .line 139
    .local v6, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_11
    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_62

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 140
    .local v8, "info":Landroid/app/ActivityTaskManager$RootTaskInfo;
    iget v10, v8, Landroid/app/ActivityTaskManager$RootTaskInfo;->displayId:I

    if-nez v10, :cond_11

    iget-boolean v10, v8, Landroid/app/ActivityTaskManager$RootTaskInfo;->visible:Z

    if-eqz v10, :cond_11

    iget-object v10, v8, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 141
    invoke-static {v10}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v10, :cond_2e

    .line 142
    goto :goto_11

    .line 144
    :cond_2e
    invoke-virtual {v8}, Landroid/app/ActivityTaskManager$RootTaskInfo;->getWindowingMode()I

    move-result v10

    .line 145
    .local v10, "windowingMode":I
    iget-boolean v11, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mIsDeskTopMode:Z

    if-nez v11, :cond_50

    .line 146
    if-nez v3, :cond_4b

    .line 147
    iget v11, v8, Landroid/app/ActivityTaskManager$RootTaskInfo;->userId:I

    move v4, v11

    .line 148
    iget-object v11, v8, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object v1, v11

    .line 149
    if-ne v10, v9, :cond_49

    iget-object v11, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v11}, Landroid/app/IActivityTaskManager;->isInSplitScreenWindowingMode()Z

    move-result v11

    if-nez v11, :cond_49

    goto :goto_4a

    :cond_49
    move v9, v5

    :goto_4a
    move v2, v9

    .line 151
    :cond_4b
    iget-object v9, v8, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    array-length v9, v9

    add-int/2addr v3, v9

    goto :goto_61

    .line 156
    :cond_50
    if-ne v10, v9, :cond_59

    .line 157
    iget v7, v8, Landroid/app/ActivityTaskManager$RootTaskInfo;->userId:I

    move v4, v7

    .line 158
    iget-object v7, v8, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object v1, v7

    .line 159
    goto :goto_62

    .line 161
    :cond_59
    if-eqz v2, :cond_61

    .line 163
    const/4 v11, 0x5

    if-ne v10, v11, :cond_5f

    goto :goto_60

    :cond_5f
    move v9, v5

    :goto_60
    move v2, v9

    .line 166
    .end local v8  # "info":Landroid/app/ActivityTaskManager$RootTaskInfo;
    .end local v10  # "windowingMode":I
    :cond_61
    :goto_61
    goto :goto_11

    .line 168
    :cond_62
    :goto_62
    iget-boolean v7, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mDebug:Z

    if-eqz v7, :cond_b8

    .line 169
    invoke-static {v1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v1, :cond_72

    .line 170
    const-string/jumbo v7, "updateForegroundAppType, Objects.isNull(topActivity)"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    .line 172
    :cond_72
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateForegroundAppType, visibleTaskNum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", currentName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 173
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", lastName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 174
    iget-object v8, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mComponentName:Landroid/content/ComponentName;

    if-nez v8, :cond_9d

    const-string v8, ""

    goto :goto_a3

    :cond_9d
    iget-object v8, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    :goto_a3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", topActivityFullScreenOrNotOccluded = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 172
    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_b8
    :goto_b8
    invoke-static {v1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v1, :cond_111

    if-le v3, v9, :cond_e3

    .line 181
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.miui.home"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e3

    .line 183
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.bytedance.writer_assistant_flutter"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e3

    .line 185
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.qidian.QDReader.ui.activity.GuidanceActivity"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_111

    :cond_e3
    if-eqz v2, :cond_111

    iget-object v7, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mComponentName:Landroid/content/ComponentName;

    .line 187
    invoke-virtual {v1, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_111

    .line 189
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.permissioncontroller"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_111

    iget-object v7, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 190
    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v7

    if-eqz v7, :cond_102

    goto :goto_111

    .line 193
    :cond_102
    iput-object v1, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mComponentName:Landroid/content/ComponentName;

    .line 194
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->getAppTypeByPkgName(Ljava/lang/String;)I

    move-result v7

    .line 195
    .local v7, "appType":I
    invoke-direct {p0, v7, v4}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->updateAppType(II)Z

    move-result v0
    :try_end_110
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_110} :catch_112

    return v0

    .line 191
    .end local v7  # "appType":I
    :cond_111
    :goto_111
    return v5

    .line 196
    .end local v1  # "topActivity":Landroid/content/ComponentName;
    .end local v2  # "topActivityFullScreenOrNotOccluded":Z
    .end local v3  # "visibleTaskNum":I
    .end local v4  # "userId":I
    .end local v6  # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :catch_112
    move-exception v1

    .line 197
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "updateForegroundAppType failed."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .end local v1  # "e":Landroid/os/RemoteException;
    return v5
.end method

.method private updateState(ZI)V
    .registers 4
    .param p1, "forceApply"  # Z
    .param p2, "type"  # I

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->logInitialState(ZI)V

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->shouldApplyChanges(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 218
    invoke-direct {p0, p2}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->logApplyDetails(I)V

    .line 219
    iget-boolean v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppChanged:Z

    if-eqz v0, :cond_16

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppChanged:Z

    .line 221
    invoke-direct {p0, p2}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->handleAppChangedOperation(I)V

    .line 224
    :cond_16
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 389
    invoke-static {}, Lcom/android/server/display/DisplayDebugConfig;->updateDisplayDebug()V

    .line 390
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_DMS:Z

    iput-boolean v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mDebug:Z

    .line 391
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 392
    const-string v0, "NotifyPopUpManager:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  NeedShowOpenConfirmNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mNeedShowOpenConfirmNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReadAppOperationListenerMaps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mReadAppOperationListenerMaps:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AppType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public getReadAppList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 111
    iget-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 113
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerReadAppOperationListener(Lmiui/hardware/display/IReadAppOperationListener;II)V
    .registers 6
    .param p1, "listener"  # Lmiui/hardware/display/IReadAppOperationListener;
    .param p2, "userId"  # I
    .param p3, "userPid"  # I

    .line 84
    if-nez p1, :cond_b

    .line 85
    const-string v0, "NotifyPopUpManager"

    const-string/jumbo v1, "registerReadAppOperationListener: listener is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 88
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mReadAppOperationListenerMaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 89
    .local v0, "listenerList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lmiui/hardware/display/IReadAppOperationListener;>;"
    if-nez v0, :cond_1b

    .line 90
    new-instance v1, Lcom/android/server/display/eyecare/NotifyPopUpManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager$1;-><init>(Lcom/android/server/display/eyecare/NotifyPopUpManager;)V

    move-object v0, v1

    .line 98
    :cond_1b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mReadAppOperationListenerMaps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    return-void
.end method

.method public setNeedShowOpenConfirmNotification(Z)V
    .registers 2
    .param p1, "enable"  # Z

    .line 312
    if-eqz p1, :cond_6

    .line 313
    invoke-direct {p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->enableRhythmicEyeCareNotification()V

    goto :goto_9

    .line 315
    :cond_6
    invoke-direct {p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->disableRhythmicEyeCareNotification()V

    .line 317
    :goto_9
    return-void
.end method

.method public unregisterReadAppOperationListener(Lmiui/hardware/display/IReadAppOperationListener;I)V
    .registers 5
    .param p1, "listener"  # Lmiui/hardware/display/IReadAppOperationListener;
    .param p2, "userId"  # I

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterReadAppOperationListener: userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifyPopUpManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mReadAppOperationListenerMaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 105
    .local v0, "listenerList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lmiui/hardware/display/IReadAppOperationListener;>;"
    if-nez v0, :cond_24

    return-void

    .line 106
    :cond_24
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 107
    return-void
.end method

.method public updateAllReadAppList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p1, "readAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    return-void
.end method

.method public updateDeskTopMode(Z)V
    .registers 2
    .param p1, "deskTopModeEnabled"  # Z

    .line 80
    iput-boolean p1, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager;->mIsDeskTopMode:Z

    .line 81
    return-void
.end method
