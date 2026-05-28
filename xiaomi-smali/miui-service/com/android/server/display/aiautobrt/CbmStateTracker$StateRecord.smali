# classes.dex

.class Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;
.super Ljava/lang/Object;
.source "CbmStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/aiautobrt/CbmStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateRecord"
.end annotation


# instance fields
.field private autoAdjustTimes:F

.field private brightRoomAdjTimes:I

.field private darkRoomAdjTimes:I

.field private initialize:Z

.field private manualAdjustTimes:F

.field private predictDurations:J

.field private predictTracking:Z

.field private startPredictTimeMills:J

.field private startTimeMills:J

.field protected tracking:Z

.field protected type:I

.field private usageDurations:J


# direct methods
.method static bridge synthetic -$$Nest$fgetautoAdjustTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->autoAdjustTimes:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbrightRoomAdjTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->brightRoomAdjTimes:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdarkRoomAdjTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->darkRoomAdjTimes:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinitialize(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->initialize:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmanualAdjustTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->manualAdjustTimes:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpredictDurations(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->predictDurations:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetpredictTracking(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->predictTracking:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstartPredictTimeMills(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->startPredictTimeMills:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetstartTimeMills(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->startTimeMills:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetusageDurations(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->usageDurations:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputautoAdjustTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->autoAdjustTimes:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbrightRoomAdjTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->brightRoomAdjTimes:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdarkRoomAdjTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->darkRoomAdjTimes:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputinitialize(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->initialize:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmanualAdjustTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->manualAdjustTimes:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpredictDurations(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->predictDurations:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpredictTracking(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->predictTracking:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartPredictTimeMills(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->startPredictTimeMills:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartTimeMills(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->startTimeMills:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputusageDurations(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->usageDurations:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetBrtAdjSceneCount(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->resetBrtAdjSceneCount()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msatisfyMaxBrtAdjTimes(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->satisfyMaxBrtAdjTimes()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "type"  # I

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->type:I

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->startTimeMills:J

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->tracking:Z

    .line 350
    return-void
.end method

.method private resetBrtAdjSceneCount()V
    .registers 2

    .line 408
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->darkRoomAdjTimes:I

    .line 409
    iput v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->brightRoomAdjTimes:I

    .line 410
    return-void
.end method

.method private satisfyMaxBrtAdjTimes()Z
    .registers 3

    .line 413
    iget v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->darkRoomAdjTimes:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_c

    iget v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->brightRoomAdjTimes:I

    if-lt v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;)V
    .registers 4
    .param p1, "record"  # Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;

    .line 356
    iget v0, p1, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->type:I

    iput v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->type:I

    .line 357
    iget-wide v0, p1, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->startTimeMills:J

    iput-wide v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->startTimeMills:J

    .line 358
    iget-boolean v0, p1, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->tracking:Z

    iput-boolean v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->tracking:Z

    .line 359
    iget-wide v0, p1, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->startPredictTimeMills:J

    iput-wide v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->startPredictTimeMills:J

    .line 360
    iget-boolean v0, p1, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->predictTracking:Z

    iput-boolean v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->predictTracking:Z

    .line 361
    iget-boolean v0, p1, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->initialize:Z

    iput-boolean v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->initialize:Z

    .line 362
    return-void
.end method

.method protected getManualAdjustRatio()F
    .registers 4

    .line 378
    invoke-static {}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->-$$Nest$sfgetsDebug()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_a

    :cond_8
    const/high16 v0, 0x42c80000  # 100.0f

    .line 379
    .local v0, "minimumAdjustTimes":F
    :goto_a
    iget v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->autoAdjustTimes:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_13

    .line 380
    const/high16 v1, 0x7fc00000  # Float.NaN

    return v1

    .line 382
    :cond_13
    iget v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->manualAdjustTimes:F

    iget v2, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->autoAdjustTimes:F

    div-float/2addr v1, v2

    return v1
.end method

.method protected getManualAdjustTimesPerHour()F
    .registers 5

    .line 368
    iget-wide v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->usageDurations:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 369
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0

    .line 371
    :cond_b
    iget v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->manualAdjustTimes:F

    iget-wide v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->usageDurations:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected getPredictDurations()J
    .registers 3

    .line 397
    iget-wide v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->predictDurations:J

    return-wide v0
.end method

.method protected getUsageDuration()J
    .registers 3

    .line 389
    iget-wide v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->usageDurations:J

    return-wide v0
.end method

.method protected reCount()V
    .registers 3

    .line 401
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->manualAdjustTimes:F

    .line 402
    iput v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->autoAdjustTimes:F

    .line 403
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->usageDurations:J

    .line 404
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->resetBrtAdjSceneCount()V

    .line 405
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manual adj times: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->manualAdjustTimes:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", auto adj times: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->autoAdjustTimes:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usage duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$StateRecord;->usageDurations:J

    .line 422
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    return-object v0
.end method
