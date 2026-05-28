# classes.dex

.class public Lcom/android/server/display/eyecare/RhythmicEyeCareManager;
.super Ljava/lang/Object;
.source "RhythmicEyeCareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;,
        Lcom/android/server/display/eyecare/RhythmicEyeCareManager$RhythmicEyeCareListener;,
        Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;
    }
.end annotation


# static fields
.field private static final ALARM_TAG:Ljava/lang/String; = "rhythmic_eyecare_alarm"

.field private static DEBUG_EYECARE:Z = false

.field private static final DEFAULT_END_HOUR:I = 0x16

.field private static final DEFAULT_START_HOUR:I = 0x7

.field private static final MAX_DAYS:I = 0x7

.field private static final RHYTHMIC_APP_CATEGORY_TYPE_DEFAULT:I = 0x0

.field private static final RHYTHMIC_APP_CATEGORY_TYPE_IMAGE:I = 0x1

.field private static final RHYTHMIC_APP_CATEGORY_TYPE_READ:I = 0x2

.field private static final SLEEP_END_HOUR:I = 0x18

.field private static final SLEEP_START_HOUR:I = 0x14

.field private static final TAG:Ljava/lang/String; = "RhythmicEyeCareManager"

.field private static final WAKE_END_HOUR:I = 0x9

.field private static final WAKE_START_HOUR:I = 0x5

.field private static mAppType:I

.field private static mIsEnabled:Z

.field private static mLastAppType:I

.field private static mLastDayOfMinute:I

.field private static final mRhythmicModeV2Supported:Z


# instance fields
.field private mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private mAlarmIndex:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmTimePoints:[I

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

.field private mDefaultAlarmTimePoints:[I

.field private mDisplayState:I

.field private mHandler:Landroid/os/Handler;

.field private mIsDeskTopMode:Z

.field private final mKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

.field private final mOnAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private final mProcessObserver:Landroid/app/IProcessObserver$Stub;

.field private final mRhythmicEyeCareAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mRhythmicEyeCareListener:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$RhythmicEyeCareListener;

.field private mScreenDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;",
            ">;"
        }
    .end annotation
.end field

.field private mSleepOffset:I

.field private final mTaskStackListener:Landroid/app/TaskStackListener;

.field private mTime:I

.field private mWakeupOffset:I

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

.field mdefaultSleepTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

.field mdefaultWakeUpTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;


# direct methods
.method public static synthetic $r8$lambda$Tr1L12s1dp18AS20Ff1MgYO3RxA(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->lambda$notifyScreenStateChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$w7r3mTxFBc674BYDCzi2-Natsq8(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->lambda$enableRhythmicEyeCareMode$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAlarmIndex(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAlarmManager(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)Landroid/app/AlarmManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAlarmTimePoints(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmTimePoints:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnAlarmListener(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)Landroid/app/AlarmManager$OnAlarmListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mOnAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAlarmIndex(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleRhythmicAlarm(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->scheduleRhythmicAlarm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAlarm(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->setAlarm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateState(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->updateState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmIsEnabled()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mIsEnabled:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 52
    nop

    .line 53
    const-string/jumbo v0, "is_rhythmic_mode_v2_supported"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mRhythmicModeV2Supported:Z

    .line 67
    sput v1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppType:I

    .line 68
    sget v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppType:I

    sput v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mLastAppType:I

    .line 69
    const/4 v0, -0x1

    sput v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mLastDayOfMinute:I

    .line 91
    sput-boolean v1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->DEBUG_EYECARE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mDisplayState:I

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppChanged:Z

    .line 84
    iput v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mWakeupOffset:I

    .line 85
    iput v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mSleepOffset:I

    .line 88
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mScreenDataMap:Ljava/util/Map;

    .line 89
    new-instance v1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;-><init>(II)V

    iput-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mdefaultWakeUpTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    .line 90
    new-instance v1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    const/16 v2, 0x16

    invoke-direct {v1, v2, v0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;-><init>(II)V

    iput-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mdefaultSleepTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    .line 94
    new-instance v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$1;-><init>(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)V

    iput-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mOnAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 103
    new-instance v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$2;-><init>(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)V

    iput-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mRhythmicEyeCareAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$3;-><init>(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)V

    iput-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 128
    new-instance v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$4;-><init>(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)V

    iput-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

    .line 138
    new-instance v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$5;-><init>(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)V

    iput-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    .line 164
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 165
    const v1, 0x1103004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmTimePoints:[I

    .line 166
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmTimePoints:[I

    iput-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mDefaultAlarmTimePoints:[I

    .line 167
    iput-object p1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mContext:Landroid/content/Context;

    .line 168
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mHandler:Landroid/os/Handler;

    .line 169
    const-class v0, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 170
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->registerReceiver(Landroid/content/Context;)V

    .line 172
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 173
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 174
    return-void
.end method

.method private cleanupOldData()V
    .registers 10

    .line 685
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 688
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mScreenDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_25

    .line 689
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mScreenDataMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 690
    .local v1, "sortedEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;>;>;"
    new-instance v2, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$$ExternalSyntheticLambda1;-><init>(Ljava/text/SimpleDateFormat;)V

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    goto :goto_30

    .line 704
    .end local v1  # "sortedEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;>;>;"
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mScreenDataMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 708
    .restart local v1  # "sortedEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;>;>;"
    :goto_30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v2, "latestDates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 710
    .local v3, "count":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 711
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;>;"
    const/4 v6, 0x7

    if-ge v3, v6, :cond_56

    .line 712
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    nop

    .end local v5  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;>;"
    add-int/lit8 v3, v3, 0x1

    .line 717
    goto :goto_3a

    .line 720
    :cond_56
    iget-object v4, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mScreenDataMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 721
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;>;>;"
    :goto_60
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_99

    .line 722
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 723
    .restart local v5  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 724
    .local v6, "dateStr":Ljava/lang/String;
    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_98

    .line 725
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 726
    sget-boolean v7, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->DEBUG_EYECARE:Z

    if-eqz v7, :cond_98

    .line 727
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "success remove dateStr: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "RhythmicEyeCareManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .end local v5  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;>;"
    .end local v6  # "dateStr":Ljava/lang/String;
    :cond_98
    goto :goto_60

    .line 731
    :cond_99
    return-void
.end method

.method private disableRhythmicEyeCareMode()V
    .registers 4

    .line 196
    sget-boolean v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mIsEnabled:Z

    if-nez v0, :cond_5

    .line 197
    return-void

    .line 199
    :cond_5
    sget-boolean v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mRhythmicModeV2Supported:Z

    if-eqz v0, :cond_c

    .line 200
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->resetRhythmicEyeCareTime()V

    .line 202
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mRhythmicEyeCareListener:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$RhythmicEyeCareListener;

    sget v1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppType:I

    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getMinuteOfDay()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$RhythmicEyeCareListener;->onRhythmicEyeCareChange(II)V

    .line 203
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppType:I

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppChanged:Z

    .line 205
    sput-boolean v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mIsEnabled:Z

    .line 206
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mComponentName:Landroid/content/ComponentName;

    .line 207
    iput v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmIndex:I

    .line 208
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mOnAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v0, :cond_2f

    .line 209
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mOnAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 211
    :cond_2f
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->unregisterForegroundAppObserver()V

    .line 212
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->removeKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V

    .line 213
    return-void
.end method

.method private enableRhythmicEyeCareMode()V
    .registers 3

    .line 185
    sget-boolean v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mIsEnabled:Z

    if-eqz v0, :cond_5

    .line 186
    return-void

    .line 188
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mIsEnabled:Z

    .line 189
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->registerForegroundAppObserver()V

    .line 190
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->addKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V

    .line 191
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->scheduleRhythmicAlarm()V

    .line 192
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method private getAlarmDateString(J)Ljava/lang/String;
    .registers 11
    .param p1, "mills"  # J

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "next alarm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 307
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 308
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 309
    .local v2, "month":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 311
    .local v3, "day":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 313
    .local v5, "hour":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 315
    .local v6, "minute":I
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 317
    .local v4, "second":I
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private getAlarmInMills(I)J
    .registers 6
    .param p1, "time"  # I

    .line 289
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getMinuteOfDay()I

    move-result v0

    .line 290
    .local v0, "currentTime":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 291
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 292
    if-lt v0, p1, :cond_16

    .line 293
    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 295
    :cond_16
    div-int/lit8 v2, p1, 0x3c

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 296
    const/16 v2, 0xc

    rem-int/lit8 v3, p1, 0x3c

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 297
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 298
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 299
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getAlarmDateString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RhythmicEyeCareManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private getAppTypeByPkgName(Ljava/lang/String;)I
    .registers 6
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 275
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 276
    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 277
    .local v1, "appType":I
    iget-object v2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 278
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_1a

    .line 279
    goto :goto_21

    .line 281
    :cond_1a
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 282
    return v1

    .line 275
    .end local v1  # "appType":I
    .end local v2  # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_21
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 285
    .end local v0  # "i":I
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method private getDateKey(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 5
    .param p1, "calendar"  # Ljava/util/Calendar;

    .line 501
    nop

    .line 502
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 503
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 504
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 501
    const-string v1, "%04d%02d%02d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMinuteOfDay()I
    .registers 5

    .line 255
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 256
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 257
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 258
    .local v1, "hour":I
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 259
    .local v2, "minute":I
    mul-int/lit8 v3, v1, 0x3c

    add-int/2addr v3, v2

    return v3
.end method

.method private getNextAlarmTimeIndex()I
    .registers 4

    .line 263
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getMinuteOfDay()I

    move-result v0

    .line 264
    .local v0, "currentTime":I
    const/4 v1, 0x0

    .line 265
    .local v1, "index":I
    :goto_5
    iget-object v2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmTimePoints:[I

    array-length v2, v2

    if-ge v1, v2, :cond_13

    iget-object v2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmTimePoints:[I

    aget v2, v2, v1

    if-gt v2, v0, :cond_13

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 268
    :cond_13
    iget-object v2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmTimePoints:[I

    array-length v2, v2

    if-ne v1, v2, :cond_19

    .line 269
    const/4 v1, 0x0

    .line 271
    :cond_19
    return v1
.end method

.method static synthetic lambda$cleanupOldData$4(Ljava/text/SimpleDateFormat;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 6
    .param p0, "sdf"  # Ljava/text/SimpleDateFormat;
    .param p1, "entry1"  # Ljava/util/Map$Entry;
    .param p2, "entry2"  # Ljava/util/Map$Entry;

    .line 692
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 693
    .local v0, "dateKey1":Ljava/util/Calendar;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 694
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 695
    .local v1, "dateKey2":Ljava/util/Calendar;
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 697
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2
    :try_end_26
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_26} :catch_27

    return v2

    .line 698
    .end local v0  # "dateKey1":Ljava/util/Calendar;
    .end local v1  # "dateKey2":Ljava/util/Calendar;
    :catch_27
    move-exception v0

    .line 699
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid date format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RhythmicEyeCareManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v1, 0x0

    return v1
.end method

.method private synthetic lambda$enableRhythmicEyeCareMode$0()V
    .registers 2

    .line 192
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->updateState(Z)V

    return-void
.end method

.method static synthetic lambda$getAverageSleepTime$3(Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;)Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;
    .registers 2
    .param p0, "record"  # Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;

    .line 638
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;->lastScreenOffTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    return-object v0
.end method

.method static synthetic lambda$getAverageWakeUpTime$2(Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;)Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;
    .registers 2
    .param p0, "record"  # Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;

    .line 633
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;->firstScreenOnTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    return-object v0
.end method

.method private synthetic lambda$notifyScreenStateChanged$1()V
    .registers 2

    .line 440
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->updateState(Z)V

    return-void
.end method

.method private registerForegroundAppObserver()V
    .registers 4

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 239
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 242
    goto :goto_1a

    .line 240
    :catch_11
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RhythmicEyeCareManager"

    const-string/jumbo v2, "registerForegroundAppObserver failed."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mRhythmicEyeCareAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    return-void
.end method

.method private resetRhythmicEyeCareTime()V
    .registers 3

    .line 745
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mScreenDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 747
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->saveRecords()V

    .line 748
    const-string v0, "RhythmicEyeCareManager"

    const-string v1, "Screendata times reset to default time."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return-void
.end method

.method private restoreRecords()V
    .registers 15

    .line 509
    const-string v0, "RhythmicEyeCareManager"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_time_records"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "recordsString":Ljava/lang/String;
    if-eqz v1, :cond_bc

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    goto/16 :goto_bc

    .line 514
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get store setting screen_time_records: {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, "records":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mScreenDataMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 518
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_45
    if-ge v5, v3, :cond_a4

    aget-object v6, v2, v5

    .line 519
    .local v6, "record":Ljava/lang/String;
    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 520
    .local v7, "parts":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x3

    if-eq v8, v9, :cond_6a

    .line 521
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid record format: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    goto :goto_a1

    .line 524
    :cond_6a
    aget-object v8, v7, v4

    .line 525
    .local v8, "date":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v7, v9

    .line 526
    .local v9, "wakeUpTime":Ljava/lang/String;
    const/4 v10, 0x2

    aget-object v10, v7, v10
    :try_end_72
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_72} :catch_df
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_72} :catch_c3

    .line 528
    .local v10, "sleepTime":Ljava/lang/String;
    :try_start_72
    new-instance v11, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;-><init>(Lcom/android/server/display/eyecare/RhythmicEyeCareManager-IA;)V

    .line 529
    .local v11, "data":Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;
    invoke-static {v9}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;->fromString(Ljava/lang/String;)Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;->firstScreenOnTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    .line 530
    invoke-static {v10}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;->fromString(Ljava/lang/String;)Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;->lastScreenOffTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    .line 531
    iget-object v12, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mScreenDataMap:Ljava/util/Map;

    invoke-interface {v12, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_89} :catch_8a
    .catch Ljava/lang/SecurityException; {:try_start_72 .. :try_end_89} :catch_df

    .line 534
    .end local v11  # "data":Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;
    goto :goto_a1

    .line 532
    :catch_8a
    move-exception v11

    .line 533
    .local v11, "e":Ljava/lang/Exception;
    :try_start_8b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error parsing time data for record: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    .end local v6  # "record":Ljava/lang/String;
    .end local v7  # "parts":[Ljava/lang/String;
    .end local v8  # "date":Ljava/lang/String;
    .end local v9  # "wakeUpTime":Ljava/lang/String;
    .end local v10  # "sleepTime":Ljava/lang/String;
    .end local v11  # "e":Ljava/lang/Exception;
    :goto_a1
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 537
    :cond_a4
    iget-object v3, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mDefaultAlarmTimePoints:[I

    invoke-virtual {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getAverageWakeUpTime()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getAverageSleepTime()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->remapAlarmTimes([III)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmTimePoints:[I

    .line 538
    sget-boolean v3, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->DEBUG_EYECARE:Z

    if-eqz v3, :cond_e5

    .line 539
    invoke-virtual {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->printRecords()V

    goto :goto_e5

    .line 511
    .end local v2  # "records":[Ljava/lang/String;
    :cond_bc
    :goto_bc
    const-string/jumbo v2, "get setting: screen_time_records is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catch Ljava/lang/SecurityException; {:try_start_8b .. :try_end_c2} :catch_df
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_c2} :catch_c3

    .line 512
    return-void

    .line 543
    .end local v1  # "recordsString":Ljava/lang/String;
    :catch_c3
    move-exception v1

    .line 544
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore time error! Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e6

    .line 541
    .end local v1  # "e":Ljava/lang/Exception;
    :catch_df
    move-exception v1

    .line 542
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission is denied: cannot restore the time"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    .end local v1  # "e":Ljava/lang/SecurityException;
    :cond_e5
    :goto_e5
    nop

    .line 546
    :goto_e6
    return-void
.end method

.method private saveRecords()V
    .registers 11

    .line 550
    const-string v0, "-"

    const-string v1, "RhythmicEyeCareManager"

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mScreenDataMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 552
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;>;>;"
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 553
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 554
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 555
    .local v5, "date":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;

    .line 556
    .local v6, "data":Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;
    iget-object v7, v6, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;->firstScreenOnTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    invoke-virtual {v7}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;->toString()Ljava/lang/String;

    move-result-object v7

    .line 557
    .local v7, "wakeUpTime":Ljava/lang/String;
    iget-object v8, v6, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;->lastScreenOffTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    invoke-virtual {v8}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;->toString()Ljava/lang/String;

    move-result-object v8

    .line 559
    .local v8, "sleepTime":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 560
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 561
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 562
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 563
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_55

    .line 566
    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .end local v4  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;>;"
    .end local v5  # "date":Ljava/lang/String;
    .end local v6  # "data":Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;
    .end local v7  # "wakeUpTime":Ljava/lang/String;
    .end local v8  # "sleepTime":Ljava/lang/String;
    :cond_55
    goto :goto_13

    .line 571
    :cond_56
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "screen_time_records"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 573
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mDefaultAlarmTimePoints:[I

    invoke-virtual {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getAverageWakeUpTime()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getAverageSleepTime()I

    move-result v5

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->remapAlarmTimes([III)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmTimePoints:[I

    .line 574
    sget-boolean v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->DEBUG_EYECARE:Z

    if-eqz v0, :cond_8b

    .line 575
    invoke-virtual {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->printRecords()V
    :try_end_7d
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_7d} :catch_85
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7d} :catch_7e

    goto :goto_8b

    .line 579
    .end local v2  # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v3  # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;>;>;"
    :catch_7e
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Store time error!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8c

    .line 577
    .end local v0  # "e":Ljava/lang/Exception;
    :catch_85
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission is denied: cannot store the time"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    .end local v0  # "e":Ljava/lang/SecurityException;
    :cond_8b
    :goto_8b
    nop

    .line 582
    :goto_8c
    return-void
.end method

.method private scheduleRhythmicAlarm()V
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmTimePoints:[I

    array-length v0, v0

    const-string v1, "RhythmicEyeCareManager"

    if-nez v0, :cond_e

    .line 323
    const-string/jumbo v0, "no alarm exists"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void

    .line 326
    :cond_e
    sget-boolean v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mRhythmicModeV2Supported:Z

    if-eqz v0, :cond_15

    .line 327
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->restoreRecords()V

    .line 329
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleRhythmicAlarm: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmTimePoints:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getNextAlarmTimeIndex()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmIndex:I

    .line 331
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->setAlarm()V

    .line 332
    return-void
.end method

.method private setAlarm()V
    .registers 9

    .line 335
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmTimePoints:[I

    iget v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmIndex:I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getAlarmInMills(I)J

    move-result-wide v3

    .line 336
    .local v3, "startTime":J
    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mOnAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v7, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-string/jumbo v5, "rhythmic_eyecare_alarm"

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 338
    return-void
.end method

.method private unregisterForegroundAppObserver()V
    .registers 4

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 248
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 251
    goto :goto_1a

    .line 249
    :catch_11
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RhythmicEyeCareManager"

    const-string/jumbo v2, "unregisterForegroundAppObserver failed."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method private updateAppType(I)Z
    .registers 3
    .param p1, "appType"  # I

    .line 399
    sget v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppType:I

    if-eq v0, p1, :cond_a

    .line 400
    sput p1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppType:I

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppChanged:Z

    .line 402
    return v0

    .line 404
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private updateForegroundAppType()Z
    .registers 11

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "topActivity":Landroid/content/ComponentName;
    const/4 v1, 0x1

    .line 344
    .local v1, "topActivityFullScreenOrNotOccluded":Z
    const/4 v2, 0x0

    .line 346
    .local v2, "visibleTaskNum":I
    const/4 v3, 0x0

    :try_start_4
    iget-object v4, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v4}, Landroid/app/IActivityTaskManager;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v4

    .line 347
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_59

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 348
    .local v6, "info":Landroid/app/ActivityTaskManager$RootTaskInfo;
    iget v8, v6, Landroid/app/ActivityTaskManager$RootTaskInfo;->displayId:I

    if-nez v8, :cond_e

    iget-boolean v8, v6, Landroid/app/ActivityTaskManager$RootTaskInfo;->visible:Z

    if-eqz v8, :cond_e

    iget-object v8, v6, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 349
    invoke-static {v8}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v8, :cond_2b

    .line 350
    goto :goto_e

    .line 352
    :cond_2b
    invoke-virtual {v6}, Landroid/app/ActivityTaskManager$RootTaskInfo;->getWindowingMode()I

    move-result v8

    .line 353
    .local v8, "windowingMode":I
    iget-boolean v9, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mIsDeskTopMode:Z

    if-nez v9, :cond_4a

    .line 354
    if-nez v2, :cond_45

    .line 355
    iget-object v9, v6, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object v0, v9

    .line 356
    if-ne v8, v7, :cond_43

    iget-object v9, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v9}, Landroid/app/IActivityTaskManager;->isInSplitScreenWindowingMode()Z

    move-result v9

    if-nez v9, :cond_43

    goto :goto_44

    :cond_43
    move v7, v3

    :goto_44
    move v1, v7

    .line 358
    :cond_45
    iget-object v7, v6, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    array-length v7, v7

    add-int/2addr v2, v7

    goto :goto_58

    .line 363
    :cond_4a
    if-ne v8, v7, :cond_50

    .line 364
    iget-object v5, v6, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object v0, v5

    .line 365
    goto :goto_59

    .line 367
    :cond_50
    if-eqz v1, :cond_58

    .line 369
    const/4 v9, 0x5

    if-ne v8, v9, :cond_56

    goto :goto_57

    :cond_56
    move v7, v3

    :goto_57
    move v1, v7

    .line 372
    .end local v6  # "info":Landroid/app/ActivityTaskManager$RootTaskInfo;
    .end local v8  # "windowingMode":I
    :cond_58
    :goto_58
    goto :goto_e

    .line 374
    :cond_59
    :goto_59
    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_b4

    if-le v2, v7, :cond_84

    .line 377
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.miui.home"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_84

    .line 379
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.bytedance.writer_assistant_flutter"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_84

    .line 381
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.qidian.QDReader.ui.activity.GuidanceActivity"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b4

    :cond_84
    if-eqz v1, :cond_b4

    iget-object v5, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mComponentName:Landroid/content/ComponentName;

    .line 383
    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b4

    .line 385
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.permissioncontroller"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9b

    goto :goto_b4

    .line 388
    :cond_9b
    iput-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mComponentName:Landroid/content/ComponentName;

    .line 389
    iget-object v5, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 390
    move v5, v3

    goto :goto_af

    :cond_a7
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getAppTypeByPkgName(Ljava/lang/String;)I

    move-result v5

    .line 391
    .local v5, "appType":I
    :goto_af
    invoke-direct {p0, v5}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->updateAppType(I)Z

    move-result v3
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b3} :catch_b5

    return v3

    .line 386
    .end local v5  # "appType":I
    :cond_b4
    :goto_b4
    return v3

    .line 392
    .end local v0  # "topActivity":Landroid/content/ComponentName;
    .end local v1  # "topActivityFullScreenOrNotOccluded":Z
    .end local v2  # "visibleTaskNum":I
    .end local v4  # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :catch_b5
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RhythmicEyeCareManager"

    const-string/jumbo v2, "updateForegroundAppType failed."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    .end local v0  # "e":Landroid/os/RemoteException;
    return v3
.end method

.method private updateState(Z)V
    .registers 6
    .param p1, "forceApply"  # Z

    .line 408
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->updateForegroundAppType()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p1, :cond_92

    :cond_8
    iget v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mDisplayState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_92

    .line 410
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getMinuteOfDay()I

    move-result v0

    .line 411
    .local v0, "minute":I
    move v1, v0

    .line 412
    .local v1, "dminute":I
    iget-boolean v2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppChanged:Z

    if-nez v2, :cond_1a

    iget v2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mTime:I

    if-eq v2, v0, :cond_92

    .line 413
    :cond_1a
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppChanged:Z

    .line 414
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getMinuteOfDay()I

    move-result v2

    iput v2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mTime:I

    .line 415
    sget-boolean v2, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mRhythmicModeV2Supported:Z

    if-eqz v2, :cond_3e

    .line 417
    const/16 v2, 0x122

    if-lt v1, v2, :cond_33

    const/16 v2, 0x226

    if-gt v1, v2, :cond_33

    .line 418
    iget v2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mWakeupOffset:I

    sub-int/2addr v1, v2

    goto :goto_3e

    .line 419
    :cond_33
    const/16 v2, 0x3fc

    if-lt v1, v2, :cond_3e

    const/16 v2, 0x578

    if-gt v1, v2, :cond_3e

    .line 420
    iget v2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mSleepOffset:I

    sub-int/2addr v1, v2

    .line 423
    :cond_3e
    :goto_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fw applyChange, appType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", wakeupOffset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mWakeupOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sleepOffset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mSleepOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual minute="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pass vitual minute="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RhythmicEyeCareManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    sget v2, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppType:I

    sput v2, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mLastAppType:I

    .line 430
    sput v1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mLastDayOfMinute:I

    .line 431
    iget-object v2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mRhythmicEyeCareListener:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$RhythmicEyeCareListener;

    sget v3, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppType:I

    invoke-interface {v2, v3, v1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$RhythmicEyeCareListener;->onRhythmicEyeCareChange(II)V

    .line 434
    .end local v0  # "minute":I
    .end local v1  # "dminute":I
    :cond_92
    return-void
.end method


# virtual methods
.method public calculateAverageTimes(Ljava/util/function/Function;II)I
    .registers 9
    .param p2, "defaultHour"  # I
    .param p3, "defaultMinute"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;",
            "Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;",
            ">;II)I"
        }
    .end annotation

    .line 610
    .local p1, "timeExtractor":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v0, "times":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;>;"
    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mScreenDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;

    .line 612
    .local v2, "record":Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    .line 613
    .local v3, "time":Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;
    if-eqz v3, :cond_26

    .line 614
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    .end local v2  # "record":Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;
    .end local v3  # "time":Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;
    :cond_26
    goto :goto_f

    .line 618
    :cond_27
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 619
    mul-int/lit8 v1, p2, 0x3c

    return v1

    .line 622
    :cond_30
    const/4 v1, 0x0

    .line 623
    .local v1, "totalMinutes":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    .line 624
    .restart local v3  # "time":Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;
    invoke-virtual {v3}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;->toTotalMinutes()I

    move-result v4

    add-int/2addr v1, v4

    .line 625
    .end local v3  # "time":Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;
    goto :goto_35

    .line 626
    :cond_47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    div-int v2, v1, v2

    .line 628
    .local v2, "averageMinutes":I
    int-to-float v3, v2

    const/high16 v4, 0x42700000  # 60.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    return v3
.end method

.method public checkEffectScope()V
    .registers 4

    .line 795
    sget v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mLastDayOfMinute:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 796
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getMinuteOfDay()I

    move-result v0

    sput v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mLastDayOfMinute:I

    .line 798
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mRhythmicEyeCareListener:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$RhythmicEyeCareListener;

    sget v1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mLastAppType:I

    sget v2, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mLastDayOfMinute:I

    invoke-interface {v0, v1, v2}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$RhythmicEyeCareListener;->onRhythmicEyeCareChange(II)V

    .line 799
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRhythmicEyeCareModeEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRhythmicEyeCareAppType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRhythmicModeV2Supported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mRhythmicModeV2Supported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public getAverageSleepTime()I
    .registers 4

    .line 638
    new-instance v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$$ExternalSyntheticLambda0;-><init>()V

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->calculateAverageTimes(Ljava/util/function/Function;II)I

    move-result v0

    return v0
.end method

.method public getAverageWakeUpTime()I
    .registers 4

    .line 633
    new-instance v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$$ExternalSyntheticLambda3;-><init>()V

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->calculateAverageTimes(Ljava/util/function/Function;II)I

    move-result v0

    return v0
.end method

.method public notifyScreenStateChanged(I)V
    .registers 4
    .param p1, "state"  # I

    .line 437
    iget v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mDisplayState:I

    if-eq v0, p1, :cond_19

    .line 438
    iput p1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mDisplayState:I

    .line 439
    sget-boolean v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mIsEnabled:Z

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mDisplayState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 440
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 443
    :cond_19
    return-void
.end method

.method public onEarlyInteractivityChange(Z)V
    .registers 3
    .param p1, "interactive"  # Z

    .line 758
    sget-boolean v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mIsEnabled:Z

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mRhythmicModeV2Supported:Z

    if-nez v0, :cond_9

    goto :goto_13

    .line 760
    :cond_9
    if-eqz p1, :cond_f

    .line 762
    invoke-virtual {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->onScreenOn()V

    goto :goto_12

    .line 765
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->onScreenOff()V

    .line 767
    :goto_12
    return-void

    .line 759
    :cond_13
    :goto_13
    return-void
.end method

.method public onScreenOff()V
    .registers 8

    .line 664
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 665
    .local v0, "today":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 667
    .local v1, "hour":I
    const/16 v2, 0x14

    if-lt v1, v2, :cond_48

    const/16 v2, 0x18

    if-gt v1, v2, :cond_48

    .line 668
    invoke-direct {p0, v0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getDateKey(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, "dateKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mScreenDataMap:Ljava/util/Map;

    new-instance v4, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;-><init>(Lcom/android/server/display/eyecare/RhythmicEyeCareManager-IA;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;

    .line 670
    .local v3, "data":Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;
    new-instance v4, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct {v4, v1, v5}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;-><init>(II)V

    iput-object v4, v3, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;->lastScreenOffTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    .line 671
    iget-object v4, v3, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;->firstScreenOnTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    if-nez v4, :cond_3d

    .line 672
    iget-object v4, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mdefaultWakeUpTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    iput-object v4, v3, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;->firstScreenOnTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    .line 675
    :cond_3d
    iget-object v4, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mScreenDataMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->cleanupOldData()V

    .line 679
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->saveRecords()V

    .line 681
    .end local v2  # "dateKey":Ljava/lang/String;
    .end local v3  # "data":Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;
    :cond_48
    return-void
.end method

.method public onScreenOn()V
    .registers 8

    .line 642
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 643
    .local v0, "today":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 645
    .local v1, "hour":I
    const/4 v2, 0x5

    if-lt v1, v2, :cond_4b

    const/16 v2, 0x9

    if-gt v1, v2, :cond_4b

    .line 646
    invoke-direct {p0, v0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getDateKey(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    .line 647
    .local v2, "dateKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mScreenDataMap:Ljava/util/Map;

    new-instance v4, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;-><init>(Lcom/android/server/display/eyecare/RhythmicEyeCareManager-IA;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;

    .line 648
    .local v3, "data":Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;
    iget-object v4, v3, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;->firstScreenOnTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    if-nez v4, :cond_4b

    .line 649
    new-instance v4, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct {v4, v1, v5}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;-><init>(II)V

    iput-object v4, v3, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;->firstScreenOnTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    .line 650
    iget-object v4, v3, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;->lastScreenOffTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    if-nez v4, :cond_40

    .line 651
    iget-object v4, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mdefaultSleepTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    iput-object v4, v3, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;->lastScreenOffTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    .line 654
    :cond_40
    iget-object v4, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mScreenDataMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->cleanupOldData()V

    .line 658
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->saveRecords()V

    .line 661
    .end local v2  # "dateKey":Ljava/lang/String;
    .end local v3  # "data":Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;
    :cond_4b
    return-void
.end method

.method public printRecords()V
    .registers 11

    .line 770
    const/4 v0, 0x0

    .line 771
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_time_records"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 772
    .local v1, "recordsString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get store string setting: {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RhythmicEyeCareManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mScreenDataMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 774
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 775
    .local v5, "dateKey":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;

    .line 776
    .local v6, "dayRecord":Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;
    move-object v7, v5

    .line 777
    .local v7, "formattedDate":Ljava/lang/String;
    iget-object v8, v6, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;->lastScreenOffTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    if-eqz v8, :cond_9a

    iget-object v8, v6, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;->firstScreenOnTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    if-eqz v8, :cond_9a

    .line 778
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", get store date: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", firstScreenOnTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;->firstScreenOnTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    .line 779
    invoke-virtual {v9}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", lastScreenOffTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;->lastScreenOffTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    .line 780
    invoke-virtual {v9}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 778
    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_9a
    nop

    .end local v4  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;>;"
    .end local v5  # "dateKey":Ljava/lang/String;
    .end local v6  # "dayRecord":Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;
    .end local v7  # "formattedDate":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 782
    goto :goto_38

    .line 784
    :cond_9e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Average WakeUp Time: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getAverageWakeUpTime()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;->fromTotalMinutes(I)Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 785
    invoke-virtual {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getAverageWakeUpTime()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "min), Average Sleep Time: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 786
    invoke-virtual {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getAverageSleepTime()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;->fromTotalMinutes(I)Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 787
    invoke-virtual {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->getAverageSleepTime()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "min)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 784
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default schRhythmicAlarm: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mDefaultAlarmTimePoints:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changed schRhythmicAlarm: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAlarmTimePoints:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return-void
.end method

.method public remapAlarmTimes([III)[I
    .registers 8
    .param p1, "alarmTimePoints"  # [I
    .param p2, "averageWakeUpTime"  # I
    .param p3, "averageSleepTime"  # I

    .line 585
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mdefaultWakeUpTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    invoke-virtual {v0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;->toTotalMinutes()I

    move-result v0

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mWakeupOffset:I

    .line 586
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mdefaultSleepTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    invoke-virtual {v0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;->toTotalMinutes()I

    move-result v0

    sub-int v0, p3, v0

    iput v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mSleepOffset:I

    .line 588
    array-length v0, p1

    new-array v0, v0, [I

    .line 589
    .local v0, "mTmpAlarmTimePoints":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_3e

    .line 590
    aget v2, p1, v1

    .line 591
    .local v2, "t":I
    const/16 v3, 0x12c

    if-lt v2, v3, :cond_2b

    const/16 v3, 0x21c

    if-gt v2, v3, :cond_2b

    .line 592
    iget v3, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mWakeupOffset:I

    add-int/2addr v3, v2

    aput v3, v0, v1

    goto :goto_3b

    .line 593
    :cond_2b
    const/16 v3, 0x3fc

    if-lt v2, v3, :cond_39

    const/16 v3, 0x5a0

    if-gt v2, v3, :cond_39

    .line 594
    iget v3, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mSleepOffset:I

    add-int/2addr v3, v2

    aput v3, v0, v1

    goto :goto_3b

    .line 596
    :cond_39
    aput v2, v0, v1

    .line 589
    .end local v2  # "t":I
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 599
    .end local v1  # "i":I
    :cond_3e
    sget-boolean v1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->DEBUG_EYECARE:Z

    if-eqz v1, :cond_6f

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get mWakeupOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mWakeupOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(min), mSleepOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mSleepOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(min)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RhythmicEyeCareManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_6f
    return-object v0
.end method

.method public setModeEnable(Z)V
    .registers 4
    .param p1, "enable"  # Z

    .line 225
    if-eqz p1, :cond_28

    .line 226
    sget-boolean v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mRhythmicModeV2Supported:Z

    if-eqz v0, :cond_24

    .line 227
    sget-boolean v0, Lcom/android/server/power/PowerDebugConfig;->DEBUG_PMS:Z

    sput-boolean v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->DEBUG_EYECARE:Z

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET PowerDebugConfig.DEBUG_PMS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->DEBUG_EYECARE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RhythmicEyeCareManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_24
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->enableRhythmicEyeCareMode()V

    goto :goto_2b

    .line 232
    :cond_28
    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->disableRhythmicEyeCareMode()V

    .line 234
    :goto_2b
    return-void
.end method

.method public setRhythmicEyeCareListener(Lcom/android/server/display/eyecare/RhythmicEyeCareManager$RhythmicEyeCareListener;)V
    .registers 2
    .param p1, "listener"  # Lcom/android/server/display/eyecare/RhythmicEyeCareManager$RhythmicEyeCareListener;

    .line 216
    iput-object p1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mRhythmicEyeCareListener:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$RhythmicEyeCareListener;

    .line 217
    return-void
.end method

.method public updateDeskTopMode(Z)V
    .registers 2
    .param p1, "deskTopModeEnabled"  # Z

    .line 446
    iput-boolean p1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mIsDeskTopMode:Z

    .line 447
    return-void
.end method

.method public updateRhythmicAppCategoryList(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 220
    .local p1, "imageAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "readAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->mAppCategoryMapper:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    return-void
.end method
