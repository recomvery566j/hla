# classes.dex

.class public Lcom/android/server/display/aiautobrt/CbmStateTracker;
.super Ljava/lang/Object;
.source "CbmStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;,
        Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;
    }
.end annotation


# static fields
.field protected static final CUSTOM_BRT_ADJ_SCENE_IN_BRIGHT_ROOM:I = 0x2

.field protected static final CUSTOM_BRT_ADJ_SCENE_IN_DARK_ROOM:I = 0x1

.field protected static final CUSTOM_BRT_ADJ_SCENE_IN_DEFAULT:I = 0x0

.field private static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final MAX_HISTORY_CBM_EVENTS_CAPACITY:I = 0x1e

.field private static final MAX_PREDICT_DURATION:J = 0x3e8L

.field private static final MAX_RECORD_CAPACITY:I = 0xc8

.field private static final MINIMUM_AUTO_ADJUST_TIMES:I = 0x64

.field private static final MINIMUM_COMPARED_MODEL_NUM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CbmController-Tracker"

.field private static sDebug:Z


# instance fields
.field private final mBgHandler:Landroid/os/Handler;

.field private final mCbmEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCustomController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

.field private final mHandler:Landroid/os/Handler;

.field private final mHistoryCbmEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mNoteMaxPredictDurationRunnable:Ljava/lang/Runnable;

.field private final mResultRecords:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-CiQgz0tfjg4PcWMY7qeZJ3FIMw(Lcom/android/server/display/aiautobrt/CbmStateTracker;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->lambda$noteStopCbmStateTracking$3(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$1hGF-nuVFOde-L4cZNykaA0o5oM(Lcom/android/server/display/aiautobrt/CbmStateTracker;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->lambda$noteStopPredictTracking$5(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$4diJMlVf6KpSZYYYZyF4ueAOMR0(Lcom/android/server/display/aiautobrt/CbmStateTracker;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->lambda$noteStartPredictTracking$4(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$AWss4TNqrqenQWVRa_4Q8imlLc0(Lcom/android/server/display/aiautobrt/CbmStateTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->lambda$startEvaluateCustomCurve$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$QE7TiXb4zWLLNzePl-KW56WtTBc(Lcom/android/server/display/aiautobrt/CbmStateTracker;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->lambda$noteStartCbmStateTracking$2(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$SO2SiZ8zWEDXP_AdGKTU7edHdDA(Lcom/android/server/display/aiautobrt/CbmStateTracker;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->lambda$noteManualAdjustmentTimes$1(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z2NGCPuh_lPxjoVuNwc93Ba18Y0(Lcom/android/server/display/aiautobrt/CbmStateTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->lambda$resetBrtAdjSceneCount$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$_FxjL3hN_HBXtX6cig7aq29htGI(Lcom/android/server/display/aiautobrt/CbmStateTracker;FIFJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->lambda$noteIndividualResult$6(FIFJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$f_w1aiD56FDbitmpJDFs7UVQ9kg(Lcom/android/server/display/aiautobrt/CbmStateTracker;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->lambda$noteAutoAdjustmentTimes$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iIzVPUhtN26TSMnBywYdFfVyzsI(Lcom/android/server/display/aiautobrt/CbmStateTracker;IF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->lambda$startCbmStats$7(IF)V

    return-void
.end method

.method public static synthetic $r8$lambda$zAVj8Xqz7_Dvm5gj0JSf-qgBltI(Lcom/android/server/display/aiautobrt/CbmStateTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->noteMaxPredictDuration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetFORMAT()Ljava/text/SimpleDateFormat;
    .registers 1

    sget-object v0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsDebug()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->sDebug:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "bgHandler"  # Landroid/os/Handler;
    .param p3, "handler"  # Landroid/os/Handler;
    .param p4, "customController"  # Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mCbmEvents:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mResultRecords:Ljava/util/ArrayDeque;

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mHistoryCbmEvents:Ljava/util/ArrayDeque;

    .line 53
    new-instance v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/display/aiautobrt/CbmStateTracker;)V

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mNoteMaxPredictDurationRunnable:Ljava/lang/Runnable;

    .line 57
    iput-object p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mBgHandler:Landroid/os/Handler;

    .line 59
    iput-object p3, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p4, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mCustomController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    .line 61
    return-void
.end method

.method private getCbmEvent(I)Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;
    .registers 5
    .param p1, "state"  # I

    .line 64
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mCbmEvents:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;

    .line 65
    .local v0, "event":Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;
    if-nez v0, :cond_1d

    .line 66
    new-instance v1, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;

    invoke-direct {v1, p1}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;-><init>(I)V

    move-object v0, v1

    .line 67
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mCbmEvents:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_1d
    return-object v0
.end method

.method static synthetic lambda$dump$10(Ljava/io/PrintWriter;Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;)V
    .registers 4
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "resultRecord"  # Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dump$11(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)V
    .registers 4
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "type"  # Ljava/lang/Integer;
    .param p2, "stateRecord"  # Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;

    .line 316
    invoke-virtual {p2}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dump$12(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)V
    .registers 4
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "type"  # Ljava/lang/Integer;
    .param p2, "stateRecord"  # Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;

    .line 322
    invoke-virtual {p2}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dump$13(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "time"  # Ljava/lang/String;
    .param p2, "historyMap"  # Ljava/util/Map;

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    new-instance v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda5;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {p2, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 323
    return-void
.end method

.method private synthetic lambda$noteAutoAdjustmentTimes$0(I)V
    .registers 5
    .param p1, "cbmState"  # I

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->getCbmEvent(I)Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;

    move-result-object v0

    .line 82
    .local v0, "event":Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;
    iget-boolean v1, v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->tracking:Z

    if-nez v1, :cond_9

    .line 83
    return-void

    .line 85
    :cond_9
    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fgetautoAdjustTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fputautoAdjustTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;F)V

    .line 86
    sget-boolean v1, Lcom/android/server/display/aiautobrt/CbmStateTracker;->sDebug:Z

    if-eqz v1, :cond_40

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteAutoAdjustmentTimes: cbm state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", auto adjust times: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fgetautoAdjustTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CbmController-Tracker"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_40
    return-void
.end method

.method private synthetic lambda$noteIndividualResult$6(FIFJ)V
    .registers 12
    .param p1, "lux"  # F
    .param p2, "appId"  # I
    .param p3, "brightness"  # F
    .param p4, "now"  # J

    .line 212
    new-instance v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .end local p1  # "lux":F
    .end local p2  # "appId":I
    .end local p3  # "brightness":F
    .end local p4  # "now":J
    .local v1, "lux":F
    .local v2, "appId":I
    .local v3, "brightness":F
    .local v4, "now":J
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;-><init>(FIFJ)V

    .line 213
    .local v0, "resultRecord":Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;
    iget-object p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mResultRecords:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_18

    .line 214
    iget-object p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mResultRecords:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    .line 216
    :cond_18
    iget-object p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mResultRecords:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;

    .line 217
    .local p1, "peekFirst":Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;
    if-eqz p1, :cond_29

    invoke-virtual {p1, v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_29

    .line 218
    return-void

    .line 220
    :cond_29
    iget-object p2, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mResultRecords:Ljava/util/ArrayDeque;

    invoke-virtual {p2, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method private synthetic lambda$noteManualAdjustmentTimes$1(II)V
    .registers 7
    .param p1, "cbmState"  # I
    .param p2, "brtAdjSceneState"  # I

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->getCbmEvent(I)Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;

    move-result-object v0

    .line 100
    .local v0, "event":Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;
    iget-boolean v1, v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->tracking:Z

    if-nez v1, :cond_9

    .line 101
    return-void

    .line 103
    :cond_9
    const/4 v1, 0x1

    if-ne p2, v1, :cond_15

    .line 104
    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fgetdarkRoomAdjTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fputdarkRoomAdjTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;I)V

    goto :goto_2b

    .line 105
    :cond_15
    const/4 v2, 0x2

    if-ne p2, v2, :cond_21

    .line 106
    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fgetbrightRoomAdjTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fputbrightRoomAdjTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;I)V

    goto :goto_2b

    .line 108
    :cond_21
    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fgetmanualAdjustTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fputmanualAdjustTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;F)V

    .line 110
    :goto_2b
    sget-boolean v1, Lcom/android/server/display/aiautobrt/CbmStateTracker;->sDebug:Z

    if-eqz v1, :cond_8e

    .line 111
    const-string v1, "CbmController-Tracker"

    if-nez p2, :cond_5b

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "noteManualAdjustmentTimes: cbm state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", manually adjust times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fgetmanualAdjustTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 115
    :cond_5b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "noteManualAdjustmentTimes: brt scene state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dark room adjust times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fgetdarkRoomAdjTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bright room adjust times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fgetbrightRoomAdjTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_8e
    :goto_8e
    return-void
.end method

.method private synthetic lambda$noteStartCbmStateTracking$2(IJ)V
    .registers 8
    .param p1, "state"  # I
    .param p2, "timeMills"  # J

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->getCbmEvent(I)Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;

    move-result-object v0

    .line 126
    .local v0, "event":Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;
    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fgetinitialize(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_11

    .line 127
    invoke-static {v0, v2}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fputinitialize(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;Z)V

    .line 128
    invoke-static {v0, p2, p3}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fputstartTimeMills(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;J)V

    .line 130
    :cond_11
    iget-boolean v1, v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->tracking:Z

    if-eqz v1, :cond_16

    .line 131
    return-void

    .line 133
    :cond_16
    invoke-static {v0, p2, p3}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fputstartTimeMills(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;J)V

    .line 134
    iput-boolean v2, v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->tracking:Z

    .line 135
    sget-boolean v1, Lcom/android/server/display/aiautobrt/CbmStateTracker;->sDebug:Z

    if-eqz v1, :cond_4c

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteStartCbmStateTracking: state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", usage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fgetusageDurations(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)J

    move-result-wide v2

    .line 137
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    const-string v2, "CbmController-Tracker"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_4c
    return-void
.end method

.method private synthetic lambda$noteStartPredictTracking$4(J)V
    .registers 8
    .param p1, "timeMills"  # J

    .line 171
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->getCbmEvent(I)Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;

    move-result-object v0

    .line 172
    .local v0, "event":Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;
    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fgetpredictTracking(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 173
    return-void

    .line 175
    :cond_c
    invoke-static {v0, p1, p2}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fputstartPredictTimeMills(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;J)V

    .line 176
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fputpredictTracking(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;Z)V

    .line 178
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mNoteMaxPredictDurationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mNoteMaxPredictDurationRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    sget-boolean v1, Lcom/android/server/display/aiautobrt/CbmStateTracker;->sDebug:Z

    if-eqz v1, :cond_48

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteStartCbmPredictTracking: duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->getPredictDurations()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    const-string v2, "CbmController-Tracker"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_48
    return-void
.end method

.method private synthetic lambda$noteStopCbmStateTracking$3(IJ)V
    .registers 10
    .param p1, "state"  # I
    .param p2, "timeMills"  # J

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->getCbmEvent(I)Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;

    move-result-object v0

    .line 145
    .local v0, "event":Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;
    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fgetinitialize(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 146
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fputinitialize(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;Z)V

    .line 147
    invoke-static {v0, p2, p3}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fputstartTimeMills(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;J)V

    .line 149
    :cond_11
    iget-boolean v1, v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->tracking:Z

    if-nez v1, :cond_16

    .line 150
    return-void

    .line 152
    :cond_16
    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fgetstartTimeMills(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)J

    move-result-wide v1

    sub-long v1, p2, v1

    .line 153
    .local v1, "duration":J
    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fgetusageDurations(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-static {v0, v3, v4}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fputusageDurations(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;J)V

    .line 154
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->tracking:Z

    .line 156
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mCustomController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    long-to-float v4, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->noteBrightnessUsageToAggregate(FI)V

    .line 157
    sget-boolean v3, Lcom/android/server/display/aiautobrt/CbmStateTracker;->sDebug:Z

    if-eqz v3, :cond_6c

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "noteStopCbmStateTracking: state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    long-to-float v4, v1

    const/high16 v5, 0x447a0000  # 1000.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", usage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 160
    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->getUsageDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    const-string v4, "CbmController-Tracker"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_6c
    return-void
.end method

.method private synthetic lambda$noteStopPredictTracking$5(J)V
    .registers 8
    .param p1, "timeMills"  # J

    .line 193
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->getCbmEvent(I)Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;

    move-result-object v0

    .line 194
    .local v0, "event":Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;
    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fgetpredictTracking(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 195
    return-void

    .line 197
    :cond_c
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mNoteMaxPredictDurationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fgetpredictDurations(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)J

    move-result-wide v1

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fgetstartPredictTimeMills(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)J

    move-result-wide v3

    sub-long v3, p1, v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fputpredictDurations(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;J)V

    .line 199
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fputpredictTracking(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;Z)V

    .line 200
    sget-boolean v1, Lcom/android/server/display/aiautobrt/CbmStateTracker;->sDebug:Z

    if-eqz v1, :cond_4a

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteStopPredictTracking: duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 202
    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->getPredictDurations()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    const-string v2, "CbmController-Tracker"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_4a
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mCustomController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fgetpredictDurations(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->notePredictDurationToAggregate(J)V

    .line 205
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fputpredictDurations(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;J)V

    .line 206
    return-void
.end method

.method private synthetic lambda$resetBrtAdjSceneCount$9()V
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mCbmEvents:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;

    .line 284
    .local v0, "stateRecord":Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;
    if-eqz v0, :cond_12

    .line 285
    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$mresetBrtAdjSceneCount(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)V

    .line 287
    :cond_12
    return-void
.end method

.method private synthetic lambda$startCbmStats$7(IF)V
    .registers 4
    .param p1, "minimumType"  # I
    .param p2, "minimumRatio"  # F

    .line 251
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mCustomController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->updateModelValid(IF)V

    return-void
.end method

.method private synthetic lambda$startEvaluateCustomCurve$8()V
    .registers 5

    .line 274
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mCbmEvents:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;

    .line 275
    .local v0, "stateRecord":Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;
    if-eqz v0, :cond_24

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$msatisfyMaxBrtAdjTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 276
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mCustomController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda11;

    invoke-direct {v3, v2}, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    :cond_24
    return-void
.end method

.method private noteMaxPredictDuration()V
    .registers 5

    .line 304
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->getCbmEvent(I)Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;

    move-result-object v0

    .line 305
    .local v0, "event":Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fputpredictTracking(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;Z)V

    .line 306
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mCustomController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->notePredictDurationToAggregate(J)V

    .line 307
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->-$$Nest$fputpredictDurations(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;J)V

    .line 308
    return-void
.end method

.method private storeHistoryCbmEvents()V
    .registers 7

    .line 261
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mCbmEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 263
    .local v0, "historyStateRecordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;>;>;"
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mHistoryCbmEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_1c

    .line 264
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mHistoryCbmEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    .line 266
    :cond_1c
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mCbmEvents:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 267
    .local v1, "historyEvents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;>;"
    sget-object v2, Lcom/android/server/display/aiautobrt/CbmStateTracker;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mHistoryCbmEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 270
    .end local v0  # "historyStateRecordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;>;>;"
    .end local v1  # "historyEvents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;>;"
    :cond_3a
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 311
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_CBM:Z

    sput-boolean v0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->sDebug:Z

    .line 312
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mResultRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    .line 313
    .local v0, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Latest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " individual events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mResultRecords:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->forEach(Ljava/util/function/Consumer;)V

    .line 315
    const-string v1, "  Brt adj times stats: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mCbmEvents:Ljava/util/Map;

    new-instance v2, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda3;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 317
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mHistoryCbmEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_67

    .line 318
    const-string v1, "  History brt adj times stats: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mHistoryCbmEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 320
    .local v2, "events":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;>;>;"
    new-instance v3, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1}, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda4;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 324
    .end local v2  # "events":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;>;>;"
    goto :goto_52

    .line 326
    :cond_67
    return-void
.end method

.method protected isBrightnessAdjustNoted(I)Z
    .registers 3
    .param p1, "cbmState"  # I

    .line 296
    invoke-direct {p0, p1}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->getCbmEvent(I)Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->tracking:Z

    return v0
.end method

.method protected noteAutoAdjustmentTimes(I)V
    .registers 4
    .param p1, "cbmState"  # I

    .line 80
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/aiautobrt/CbmStateTracker;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method public noteIndividualResult(FIF)V
    .registers 12
    .param p1, "lux"  # F
    .param p2, "appId"  # I
    .param p3, "brightness"  # F

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 211
    .local v5, "now":J
    iget-object v7, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .end local p1  # "lux":F
    .end local p2  # "appId":I
    .end local p3  # "brightness":F
    .local v2, "lux":F
    .local v3, "appId":I
    .local v4, "brightness":F
    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/aiautobrt/CbmStateTracker;FIFJ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void
.end method

.method protected noteManualAdjustmentTimes(I)V
    .registers 3
    .param p1, "cbmState"  # I

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->noteManualAdjustmentTimes(II)V

    .line 95
    return-void
.end method

.method protected noteManualAdjustmentTimes(II)V
    .registers 5
    .param p1, "cbmState"  # I
    .param p2, "brtAdjSceneState"  # I

    .line 98
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/display/aiautobrt/CbmStateTracker;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method

.method protected noteStartCbmStateTracking(IJ)V
    .registers 6
    .param p1, "state"  # I
    .param p2, "timeMills"  # J

    .line 124
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/display/aiautobrt/CbmStateTracker;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

.method protected noteStartPredictTracking(J)V
    .registers 5
    .param p1, "timeMills"  # J

    .line 170
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/display/aiautobrt/CbmStateTracker;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method protected noteStopCbmStateTracking(IJ)V
    .registers 6
    .param p1, "state"  # I
    .param p2, "timeMills"  # J

    .line 143
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/aiautobrt/CbmStateTracker;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void
.end method

.method protected noteStopPredictTracking(J)V
    .registers 5
    .param p1, "timeMills"  # J

    .line 192
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/display/aiautobrt/CbmStateTracker;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method

.method protected resetBrtAdjSceneCount()V
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/aiautobrt/CbmStateTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method

.method protected startCbmStats()V
    .registers 12

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "minType":I
    const/high16 v1, -0x40800000  # -1.0f

    .line 227
    .local v1, "minRatio":F
    const/4 v2, 0x0

    .line 228
    .local v2, "minComparedModelNum":I
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->storeHistoryCbmEvents()V

    .line 229
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 230
    .local v3, "tempCbmEvents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;>;"
    iget-object v4, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mCbmEvents:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 231
    .local v5, "stateRecord":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;>;"
    new-instance v6, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;

    invoke-direct {v6}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;-><init>()V

    .line 232
    .local v6, "tempRecord":Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 233
    .local v7, "type":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;

    .line 234
    .local v8, "record":Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;
    invoke-virtual {v8}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->getManualAdjustRatio()F

    move-result v9

    .line 235
    .local v9, "ratio":F
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_54

    .line 236
    add-int/lit8 v2, v2, 0x1

    .line 237
    const/high16 v10, -0x40800000  # -1.0f

    cmpl-float v10, v1, v10

    if-nez v10, :cond_4b

    move v10, v9

    goto :goto_4c

    :cond_4b
    move v10, v1

    .line 238
    .end local v1  # "minRatio":F
    .local v10, "minRatio":F
    :goto_4c
    cmpg-float v1, v9, v10

    if-gtz v1, :cond_53

    .line 239
    move v0, v7

    .line 240
    move v1, v9

    .end local v10  # "minRatio":F
    .restart local v1  # "minRatio":F
    goto :goto_54

    .line 238
    .end local v1  # "minRatio":F
    .restart local v10  # "minRatio":F
    :cond_53
    move v1, v10

    .line 243
    .end local v10  # "minRatio":F
    .restart local v1  # "minRatio":F
    :cond_54
    :goto_54
    invoke-virtual {v6, v8}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->copyFrom(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)V

    .line 244
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .end local v5  # "stateRecord":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;>;"
    .end local v6  # "tempRecord":Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;
    .end local v7  # "type":I
    .end local v8  # "record":Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;
    .end local v9  # "ratio":F
    goto :goto_16

    .line 246
    :cond_5f
    iget-object v4, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mCbmEvents:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 247
    iget-object v4, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mCbmEvents:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 248
    const/4 v4, 0x2

    if-lt v2, v4, :cond_79

    .line 249
    move v4, v0

    .line 250
    .local v4, "minimumType":I
    move v5, v1

    .line 251
    .local v5, "minimumRatio":F
    iget-object v6, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda12;

    invoke-direct {v7, p0, v4, v5}, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/display/aiautobrt/CbmStateTracker;IF)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    .end local v4  # "minimumType":I
    .end local v5  # "minimumRatio":F
    goto :goto_80

    .line 253
    :cond_79
    const-string v4, "CbmController-Tracker"

    const-string v5, "Model switch cannot be satisfied."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_80
    return-void
.end method

.method protected startEvaluateCustomCurve()V
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/display/aiautobrt/CbmStateTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method
