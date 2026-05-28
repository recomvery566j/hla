# classes.dex

.class public Lcom/android/server/display/eyecare/EffectScopeManager;
.super Ljava/lang/Object;
.source "EffectScopeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;,
        Lcom/android/server/display/eyecare/EffectScopeManager$EnteredReadAppScopeListener;
    }
.end annotation


# static fields
.field private static final COLUMN_ENABLE:Ljava/lang/String; = "enable"

.field private static final COLUMN_PKG_NAME:Ljava/lang/String; = "pkgName"

.field private static final COLUMN_USER_ID:Ljava/lang/String; = "userId"

.field private static final EFFECT_SCOPE_APP_CATEGORY_TYPE_DEFAULT:I = 0x0

.field private static final EFFECT_SCOPE_APP_CATEGORY_TYPE_READ:I = 0x1

.field private static final OPEN_CONTINUITY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EffectScopeManager"

.field private static final UPDATESTATE_ENTRANCE_ENABLE:I = 0x3

.field private static final UPDATESTATE_ENTRANCE_FOREGROUND_CHANGED:I = 0x5

.field private static final UPDATESTATE_ENTRANCE_KEYGUARD:I = 0x4

.field private static final UPDATESTATE_ENTRANCE_NOT_FULLSCREEN:I = 0x6

.field private static final UPDATESTATE_ENTRANCE_PROCESS_CHANGE:I = 0x1

.field private static final UPDATESTATE_ENTRANCE_PROCESS_DIE:I = 0x2

.field private static final UPDATESTATE_ENTRANCE_TASK:I

.field private static mCurrentAppType:I


# instance fields
.field private EFFECT_SCOPE_READ_OPEN_STATE_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private listener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;

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

.field private mCurrentAppUserId:I

.field private mCurrentSystemUserId:I

.field private mDebug:Z

.field private mEffectiveScopeApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnteredReadAppScopeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/eyecare/EffectScopeManager$EnteredReadAppScopeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mIForegroundInfoListener:Lmiui/process/IForegroundInfoListener;

.field private mIsDeskTopMode:Z

.field private mIsFullScreenMode:Z

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLock:Ljava/lang/Object;

.field private mPartiallyEffective:Z

.field private mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private final mProcessObserver:Landroid/app/IProcessObserver$Stub;

.field private final mTaskStackListener:Landroid/app/TaskStackListener;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$BKq2xrExC8obi-OVR0L_rovTSCM(Lcom/android/server/display/eyecare/EffectScopeManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/eyecare/EffectScopeManager;->lambda$enablePartiallyEffective$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/eyecare/EffectScopeManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateState(Lcom/android/server/display/eyecare/EffectScopeManager;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/eyecare/EffectScopeManager;->updateState(ZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/eyecare/EffectScopeManager;->mCurrentAppType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->EFFECT_SCOPE_READ_OPEN_STATE_MAP:Landroid/util/SparseArray;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mAppChanged:Z

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mPartiallyEffective:Z

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mEnteredReadAppScopeListeners:Ljava/util/List;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mEffectiveScopeApps:Ljava/util/List;

    .line 83
    iput v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mCurrentSystemUserId:I

    .line 84
    iput v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mCurrentAppUserId:I

    .line 86
    iput-boolean v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mDebug:Z

    .line 107
    new-instance v0, Lcom/android/server/display/eyecare/EffectScopeManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/eyecare/EffectScopeManager$1;-><init>(Lcom/android/server/display/eyecare/EffectScopeManager;)V

    iput-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mIForegroundInfoListener:Lmiui/process/IForegroundInfoListener;

    .line 114
    new-instance v0, Lcom/android/server/display/eyecare/EffectScopeManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/eyecare/EffectScopeManager$2;-><init>(Lcom/android/server/display/eyecare/EffectScopeManager;)V

    iput-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->listener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    .line 410
    new-instance v0, Lcom/android/server/display/eyecare/EffectScopeManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/eyecare/EffectScopeManager$3;-><init>(Lcom/android/server/display/eyecare/EffectScopeManager;)V

    iput-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 417
    new-instance v0, Lcom/android/server/display/eyecare/EffectScopeManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/eyecare/EffectScopeManager$4;-><init>(Lcom/android/server/display/eyecare/EffectScopeManager;)V

    iput-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    .line 89
    iput-object p1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mContext:Landroid/content/Context;

    .line 90
    iget-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mHandler:Landroid/os/Handler;

    .line 92
    const-class v0, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 93
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 94
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 95
    return-void
.end method

.method private applyChange(ZI)V
    .registers 10
    .param p1, "forceApply"  # Z
    .param p2, "type"  # I

    .line 375
    iget-boolean v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mAppChanged:Z

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-nez v0, :cond_a

    if-eq p2, v2, :cond_a

    if-ne p2, v1, :cond_6c

    .line 376
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mAppChanged:Z

    .line 377
    iget-object v3, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mEnteredReadAppScopeListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "EffectScopeManager"

    if-lez v3, :cond_66

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fw applyChange, appType="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/android/server/display/eyecare/EffectScopeManager;->mCurrentAppType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v3, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mEnteredReadAppScopeListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/eyecare/EffectScopeManager$EnteredReadAppScopeListener;

    .line 380
    .local v4, "listener":Lcom/android/server/display/eyecare/EffectScopeManager$EnteredReadAppScopeListener;
    if-eqz p1, :cond_52

    if-eq p2, v2, :cond_56

    if-eq p2, v1, :cond_56

    :cond_52
    iget-boolean v5, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mIsFullScreenMode:Z

    if-nez v5, :cond_5a

    .line 381
    :cond_56
    invoke-interface {v4, v0}, Lcom/android/server/display/eyecare/EffectScopeManager$EnteredReadAppScopeListener;->onEnteredEffectAppScope(Z)V

    goto :goto_64

    .line 383
    :cond_5a
    sget v5, Lcom/android/server/display/eyecare/EffectScopeManager;->mCurrentAppType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_60

    goto :goto_61

    :cond_60
    move v6, v0

    :goto_61
    invoke-interface {v4, v6}, Lcom/android/server/display/eyecare/EffectScopeManager$EnteredReadAppScopeListener;->onEnteredEffectAppScope(Z)V

    .line 385
    .end local v4  # "listener":Lcom/android/server/display/eyecare/EffectScopeManager$EnteredReadAppScopeListener;
    :goto_64
    goto :goto_40

    :cond_65
    goto :goto_6c

    .line 387
    :cond_66
    const-string/jumbo v0, "updateState error mReadAppOperationListener is null"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_6c
    :goto_6c
    return-void
.end method

.method private disablePartiallyEffective()V
    .registers 3

    .line 451
    iget-boolean v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mPartiallyEffective:Z

    if-nez v0, :cond_5

    .line 452
    return-void

    .line 454
    :cond_5
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/eyecare/EffectScopeManager;->mCurrentAppType:I

    .line 455
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mAppChanged:Z

    .line 456
    iput-boolean v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mPartiallyEffective:Z

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mComponentName:Landroid/content/ComponentName;

    .line 458
    invoke-direct {p0}, Lcom/android/server/display/eyecare/EffectScopeManager;->unregisterForegroundAppObserver()V

    .line 459
    return-void
.end method

.method private enablePartiallyEffective()V
    .registers 3

    .line 442
    iget-boolean v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mPartiallyEffective:Z

    if-eqz v0, :cond_5

    .line 443
    return-void

    .line 445
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mPartiallyEffective:Z

    .line 446
    invoke-direct {p0}, Lcom/android/server/display/eyecare/EffectScopeManager;->registerForegroundAppObserver()V

    .line 447
    iget-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/eyecare/EffectScopeManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/eyecare/EffectScopeManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/eyecare/EffectScopeManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 448
    return-void
.end method

.method private getAppTypeByPkgName(Ljava/lang/String;I)I
    .registers 9
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 135
    const/4 v0, -0x1

    .line 136
    .local v0, "appType":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->EFFECT_SCOPE_READ_OPEN_STATE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 137
    iget-object v2, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->EFFECT_SCOPE_READ_OPEN_STATE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 138
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;>;"
    if-nez v2, :cond_15

    .line 139
    goto :goto_3f

    .line 142
    :cond_15
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3f

    .line 143
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3f

    .line 144
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;

    .line 145
    .local v4, "info":Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;
    invoke-virtual {v4}, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 146
    invoke-virtual {v4}, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;->isEnable()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 147
    const/4 v0, 0x1

    goto :goto_3b

    .line 149
    :cond_3a
    const/4 v0, 0x0

    .line 151
    :goto_3b
    return v0

    .line 143
    .end local v4  # "info":Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 136
    .end local v2  # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;>;"
    .end local v3  # "j":I
    :cond_3f
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 157
    .end local v1  # "i":I
    :cond_42
    const/4 v1, -0x1

    if-ne v0, v1, :cond_6a

    .line 158
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_46
    iget-object v2, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6a

    .line 159
    iget-object v2, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 160
    iget-object v2, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 161
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_5f

    .line 162
    goto :goto_67

    .line 164
    :cond_5f
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 165
    const/4 v0, 0x1

    .line 166
    return v0

    .line 158
    .end local v2  # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_67
    :goto_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 170
    .end local v1  # "i":I
    :cond_6a
    const/4 v1, 0x0

    return v1
.end method

.method private synthetic lambda$enablePartiallyEffective$0()V
    .registers 3

    .line 447
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/eyecare/EffectScopeManager;->updateState(ZI)V

    return-void
.end method

.method private registerForegroundAppObserver()V
    .registers 4

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 464
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 465
    iget-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mIForegroundInfoListener:Lmiui/process/IForegroundInfoListener;

    invoke-static {v0}, Lmiui/process/ProcessManager;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    .line 466
    iget-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->listener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/KeyguardManager;->addKeyguardLockedStateListener(Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    .line 469
    goto :goto_2c

    .line 467
    :catch_23
    move-exception v0

    .line 468
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EffectScopeManager"

    const-string/jumbo v2, "registerForegroundAppObserver failed."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_2c
    return-void
.end method

.method private settingsCacheMapToString(I)Ljava/lang/String;
    .registers 14
    .param p1, "currentUserId"  # I

    .line 229
    const-string v0, ""

    .line 231
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->EFFECT_SCOPE_READ_OPEN_STATE_MAP:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 232
    .local v1, "readOpenStateSet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;>;"
    iget-object v2, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->EFFECT_SCOPE_READ_OPEN_STATE_MAP:Landroid/util/SparseArray;

    const/16 v3, 0x3e7

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 233
    .local v2, "readOpenStateXspaceSet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;>;"
    const/4 v4, 0x0

    .line 234
    .local v4, "readOpenStateSecondSet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;>;"
    if-eqz p1, :cond_23

    if-eq p1, v3, :cond_23

    .line 235
    iget-object v3, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->EFFECT_SCOPE_READ_OPEN_STATE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    .line 238
    :cond_23
    const-string v3, "]\n"

    const-string v5, ";"

    const-string v6, ", enable="

    const-string/jumbo v7, "pkgName="

    if-eqz v1, :cond_8b

    .line 239
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[userID 0:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_42
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_7a

    .line 241
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;

    .line 242
    .local v9, "info":Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;->isEnable()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .end local v9  # "info":Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;
    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    .line 244
    .end local v8  # "i":I
    :cond_7a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    :cond_8b
    if-eqz v2, :cond_ea

    .line 248
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[userID 999:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    const/4 v8, 0x0

    .restart local v8  # "i":I
    :goto_a1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_d9

    .line 250
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;

    .line 251
    .restart local v9  # "info":Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;->isEnable()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .end local v9  # "info":Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;
    add-int/lit8 v8, v8, 0x1

    goto :goto_a1

    .line 253
    .end local v8  # "i":I
    :cond_d9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    :cond_ea
    if-eqz v4, :cond_155

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "[userID "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ":"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_142

    .line 259
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;

    .line 260
    .local v8, "info":Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;->isEnable()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    .end local v8  # "info":Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_10a

    .line 262
    .end local v3  # "i":I
    :cond_142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_155
    return-object v0
.end method

.method private unregisterForegroundAppObserver()V
    .registers 4

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 475
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 476
    iget-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mIForegroundInfoListener:Lmiui/process/IForegroundInfoListener;

    invoke-static {v0}, Lmiui/process/ProcessManager;->unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    .line 477
    iget-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->listener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->removeKeyguardLockedStateListener(Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 480
    goto :goto_26

    .line 478
    :catch_1d
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EffectScopeManager"

    const-string/jumbo v2, "unregisterForegroundAppObserver failed."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_26
    return-void
.end method

.method private updateAppType(I)Z
    .registers 3
    .param p1, "appType"  # I

    .line 357
    sget v0, Lcom/android/server/display/eyecare/EffectScopeManager;->mCurrentAppType:I

    if-eq v0, p1, :cond_a

    .line 358
    sput p1, Lcom/android/server/display/eyecare/EffectScopeManager;->mCurrentAppType:I

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mAppChanged:Z

    .line 360
    return v0

    .line 362
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private updateData()V
    .registers 1

    .line 354
    return-void
.end method

.method private updateForegroundAppType()Z
    .registers 13

    .line 269
    const-string v0, "EffectScopeManager"

    const/4 v1, 0x0

    .line 270
    .local v1, "topActivity":Landroid/content/ComponentName;
    const/4 v2, -0x1

    .line 271
    .local v2, "userId":I
    const/4 v3, 0x1

    .line 272
    .local v3, "topActivityFullScreenOrNotOccluded":Z
    const/4 v4, 0x0

    .line 274
    .local v4, "visibleTaskNum":I
    const/4 v5, 0x0

    :try_start_7
    iget-object v6, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v6}, Landroid/app/IActivityTaskManager;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v6

    .line 275
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

    .line 276
    .local v8, "info":Landroid/app/ActivityTaskManager$RootTaskInfo;
    iget v10, v8, Landroid/app/ActivityTaskManager$RootTaskInfo;->displayId:I

    if-nez v10, :cond_11

    iget-boolean v10, v8, Landroid/app/ActivityTaskManager$RootTaskInfo;->visible:Z

    if-eqz v10, :cond_11

    iget-object v10, v8, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 277
    invoke-static {v10}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v10, :cond_2e

    .line 278
    goto :goto_11

    .line 280
    :cond_2e
    invoke-virtual {v8}, Landroid/app/ActivityTaskManager$RootTaskInfo;->getWindowingMode()I

    move-result v10

    .line 281
    .local v10, "windowingMode":I
    iget-boolean v11, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mIsDeskTopMode:Z

    if-nez v11, :cond_50

    .line 282
    if-nez v4, :cond_4b

    .line 283
    iget-object v11, v8, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object v1, v11

    .line 284
    iget v11, v8, Landroid/app/ActivityTaskManager$RootTaskInfo;->userId:I

    move v2, v11

    .line 285
    if-ne v10, v9, :cond_49

    iget-object v11, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v11}, Landroid/app/IActivityTaskManager;->isInSplitScreenWindowingMode()Z

    move-result v11

    if-nez v11, :cond_49

    goto :goto_4a

    :cond_49
    move v9, v5

    :goto_4a
    move v3, v9

    .line 287
    :cond_4b
    iget-object v9, v8, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    array-length v9, v9

    add-int/2addr v4, v9

    goto :goto_61

    .line 292
    :cond_50
    if-ne v10, v9, :cond_59

    .line 293
    iget-object v7, v8, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object v1, v7

    .line 294
    iget v7, v8, Landroid/app/ActivityTaskManager$RootTaskInfo;->userId:I

    move v2, v7

    .line 295
    goto :goto_62

    .line 297
    :cond_59
    if-eqz v3, :cond_61

    .line 299
    const/4 v11, 0x5

    if-ne v10, v11, :cond_5f

    goto :goto_60

    :cond_5f
    move v9, v5

    :goto_60
    move v3, v9

    .line 302
    .end local v8  # "info":Landroid/app/ActivityTaskManager$RootTaskInfo;
    .end local v10  # "windowingMode":I
    :cond_61
    :goto_61
    goto :goto_11

    .line 304
    :cond_62
    :goto_62
    iget-boolean v7, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mIsFullScreenMode:Z

    const/4 v8, 0x6

    if-eqz v7, :cond_6f

    if-nez v3, :cond_6f

    .line 305
    iput-boolean v3, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mIsFullScreenMode:Z

    .line 306
    invoke-direct {p0, v9, v8}, Lcom/android/server/display/eyecare/EffectScopeManager;->applyChange(ZI)V

    goto :goto_87

    .line 307
    :cond_6f
    iget-boolean v7, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mIsFullScreenMode:Z

    if-nez v7, :cond_87

    if-eqz v3, :cond_87

    .line 309
    invoke-static {v1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v1, :cond_87

    iget-object v7, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mComponentName:Landroid/content/ComponentName;

    .line 310
    invoke-virtual {v1, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 311
    iput-boolean v3, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mIsFullScreenMode:Z

    .line 312
    invoke-direct {p0, v5, v8}, Lcom/android/server/display/eyecare/EffectScopeManager;->applyChange(ZI)V

    .line 315
    :cond_87
    :goto_87
    iget-boolean v7, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mDebug:Z

    if-eqz v7, :cond_dd

    .line 316
    invoke-static {v1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v1, :cond_97

    .line 317
    const-string/jumbo v7, "updateForegroundAppType, Objects.isNull(topActivity)"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dd

    .line 319
    :cond_97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateForegroundAppType, visibleTaskNum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", currentName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 320
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", lastName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 321
    iget-object v8, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mComponentName:Landroid/content/ComponentName;

    if-nez v8, :cond_c2

    const-string v8, ""

    goto :goto_c8

    :cond_c2
    iget-object v8, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    :goto_c8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", topActivityFullScreenOrNotOccluded = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 319
    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_dd
    :goto_dd
    invoke-static {v1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v1, :cond_138

    if-le v4, v9, :cond_108

    .line 329
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.miui.home"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_108

    .line 331
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.bytedance.writer_assistant_flutter"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_108

    .line 333
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.qidian.QDReader.ui.activity.GuidanceActivity"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_138

    :cond_108
    if-eqz v3, :cond_138

    iget-object v7, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mComponentName:Landroid/content/ComponentName;

    .line 335
    invoke-virtual {v1, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_138

    .line 337
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.permissioncontroller"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_138

    iget-object v7, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 338
    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v7

    if-eqz v7, :cond_127

    goto :goto_138

    .line 342
    :cond_127
    iput v2, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mCurrentAppUserId:I

    .line 343
    iput-object v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mComponentName:Landroid/content/ComponentName;

    .line 344
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v2}, Lcom/android/server/display/eyecare/EffectScopeManager;->getAppTypeByPkgName(Ljava/lang/String;I)I

    move-result v7

    .line 345
    .local v7, "appType":I
    invoke-direct {p0, v7}, Lcom/android/server/display/eyecare/EffectScopeManager;->updateAppType(I)Z

    move-result v0
    :try_end_137
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_137} :catch_139

    return v0

    .line 339
    .end local v7  # "appType":I
    :cond_138
    :goto_138
    return v5

    .line 346
    .end local v1  # "topActivity":Landroid/content/ComponentName;
    .end local v2  # "userId":I
    .end local v3  # "topActivityFullScreenOrNotOccluded":Z
    .end local v4  # "visibleTaskNum":I
    .end local v6  # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :catch_139
    move-exception v1

    .line 347
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "updateForegroundAppType failed."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    .end local v1  # "e":Landroid/os/RemoteException;
    return v5
.end method

.method private updateState(ZI)V
    .registers 5
    .param p1, "forceApply"  # Z
    .param p2, "type"  # I

    .line 366
    iget-boolean v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mDebug:Z

    if-eqz v0, :cond_27

    .line 367
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

    const-string v1, "EffectScopeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_27
    invoke-direct {p0}, Lcom/android/server/display/eyecare/EffectScopeManager;->updateForegroundAppType()Z

    move-result v0

    if-nez v0, :cond_32

    if-nez p1, :cond_32

    const/4 v0, 0x4

    if-ne p2, v0, :cond_35

    .line 370
    :cond_32
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/eyecare/EffectScopeManager;->applyChange(ZI)V

    .line 372
    :cond_35
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 485
    invoke-static {}, Lcom/android/server/display/DisplayDebugConfig;->updateDisplayDebug()V

    .line 486
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_DMS:Z

    iput-boolean v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mDebug:Z

    .line 487
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 488
    const-string v0, "EffectScopeManager:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  NeedOpenPartiallyEffective="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mPartiallyEffective:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  EFFECT_SCOPE_READ_OPEN_STATE_MAP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->EFFECT_SCOPE_READ_OPEN_STATE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentSystemUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mCurrentSystemUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentAppUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mCurrentAppUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AppType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/display/eyecare/EffectScopeManager;->mCurrentAppType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public getReadAppList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_16

    .line 403
    iget-object v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 405
    :cond_16
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 407
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public registerEnteredReadAppScopeListener(Lcom/android/server/display/eyecare/EffectScopeManager$EnteredReadAppScopeListener;)V
    .registers 4
    .param p1, "listener"  # Lcom/android/server/display/eyecare/EffectScopeManager$EnteredReadAppScopeListener;

    .line 127
    if-nez p1, :cond_b

    .line 128
    const-string v0, "EffectScopeManager"

    const-string/jumbo v1, "registerEnteredReadAppScopeListener: listener is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 131
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mEnteredReadAppScopeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public setPartiallyEffectiveChanged(Z)V
    .registers 2
    .param p1, "enable"  # Z

    .line 393
    if-eqz p1, :cond_6

    .line 394
    invoke-direct {p0}, Lcom/android/server/display/eyecare/EffectScopeManager;->enablePartiallyEffective()V

    goto :goto_9

    .line 396
    :cond_6
    invoke-direct {p0}, Lcom/android/server/display/eyecare/EffectScopeManager;->disablePartiallyEffective()V

    .line 398
    :goto_9
    return-void
.end method

.method public updateAllReadAppList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "readAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 100
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public updateDeskTopMode(Z)V
    .registers 2
    .param p1, "deskTopModeEnabled"  # Z

    .line 104
    iput-boolean p1, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mIsDeskTopMode:Z

    .line 105
    return-void
.end method

.method public updateReadEffectScopeOpenState(Landroid/net/Uri;I)V
    .registers 16
    .param p1, "uri"  # Landroid/net/Uri;
    .param p2, "currentUserId"  # I

    .line 174
    const-string v1, "EffectScopeManager"

    iput p2, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mCurrentSystemUserId:I

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 176
    .local v2, "startTime":J
    invoke-static {p1, p2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v5

    .line 178
    .end local p1  # "uri":Landroid/net/Uri;
    .local v5, "uri":Landroid/net/Uri;
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local p1, "systemScopeSql":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 180
    .local v10, "XspaceSetSql":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 182
    .local v11, "secondSystemScopeSql":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;>;"
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v4, v0

    .line 183
    .local v4, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    const/16 v6, 0x3e7

    if-eqz v4, :cond_bd

    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EffectScopeAppInfoList onChange uri"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cursor="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_69

    .line 186
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_68} :catch_10d

    .line 187
    return-void

    .line 190
    :cond_69
    :goto_69
    :try_start_69
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 191
    const-string/jumbo v7, "pkgName"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "pkgName":Ljava/lang/String;
    const-string v8, "enable"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_88

    goto :goto_89

    :cond_88
    move v9, v0

    .line 193
    .local v9, "enabled":Z
    :goto_89
    const-string/jumbo v8, "userId"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 194
    .local v8, "userId":I
    if-nez v8, :cond_9f

    .line 195
    new-instance v12, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;

    invoke-direct {v12, p0, v7, v9}, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;-><init>(Lcom/android/server/display/eyecare/EffectScopeManager;Ljava/lang/String;Z)V

    invoke-interface {p1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b2

    .line 196
    :cond_9f
    if-ne v8, v6, :cond_aa

    .line 197
    new-instance v12, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;

    invoke-direct {v12, p0, v7, v9}, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;-><init>(Lcom/android/server/display/eyecare/EffectScopeManager;Ljava/lang/String;Z)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b2

    .line 199
    :cond_aa
    new-instance v12, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;

    invoke-direct {v12, p0, v7, v9}, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;-><init>(Lcom/android/server/display/eyecare/EffectScopeManager;Ljava/lang/String;Z)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b2
    .catchall {:try_start_69 .. :try_end_b2} :catchall_b7

    .line 201
    .end local v7  # "pkgName":Ljava/lang/String;
    .end local v8  # "userId":I
    .end local v9  # "enabled":Z
    :goto_b2
    goto :goto_69

    .line 203
    :cond_b3
    :try_start_b3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 204
    goto :goto_bd

    .line 203
    :catchall_b7
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 204
    nop

    .end local v2  # "startTime":J
    .end local v5  # "uri":Landroid/net/Uri;
    .end local v10  # "XspaceSetSql":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;>;"
    .end local v11  # "secondSystemScopeSql":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;>;"
    .end local p0  # "this":Lcom/android/server/display/eyecare/EffectScopeManager;
    .end local p1  # "systemScopeSql":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;>;"
    .end local p2  # "currentUserId":I
    throw v0

    .line 206
    .restart local v2  # "startTime":J
    .restart local v5  # "uri":Landroid/net/Uri;
    .restart local v10  # "XspaceSetSql":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;>;"
    .restart local v11  # "secondSystemScopeSql":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;>;"
    .restart local p0  # "this":Lcom/android/server/display/eyecare/EffectScopeManager;
    .restart local p1  # "systemScopeSql":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;>;"
    .restart local p2  # "currentUserId":I
    :cond_bd
    :goto_bd
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_c8

    .line 207
    iget-object v7, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->EFFECT_SCOPE_READ_OPEN_STATE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v7, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    :cond_c8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d3

    .line 211
    iget-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->EFFECT_SCOPE_READ_OPEN_STATE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, v6, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    :cond_d3
    if-eqz p2, :cond_e2

    if-eq p2, v6, :cond_e2

    .line 216
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e2

    .line 217
    iget-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager;->EFFECT_SCOPE_READ_OPEN_STATE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    :cond_e2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 221
    .local v6, "took":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EffectScopeAppInfoList onChange EFFECT_SCOPE_READ_OPEN_STATE_MAP"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/server/display/eyecare/EffectScopeManager;->settingsCacheMapToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " took="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_10b} :catch_10d

    .line 225
    nop

    .end local v4  # "cursor":Landroid/database/Cursor;
    .end local v6  # "took":J
    goto :goto_113

    .line 223
    :catch_10d
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Catch some exceptions."

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_113
    return-void
.end method
