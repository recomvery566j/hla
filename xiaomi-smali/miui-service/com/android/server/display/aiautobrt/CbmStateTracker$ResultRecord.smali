# classes.dex

.class Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;
.super Ljava/lang/Object;
.source "CbmStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/aiautobrt/CbmStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultRecord"
.end annotation


# instance fields
.field private appId:I

.field private brightness:F

.field private lux:F

.field private time:J


# direct methods
.method public constructor <init>(FIFJ)V
    .registers 6
    .param p1, "lux"  # F
    .param p2, "appId"  # I
    .param p3, "brightness"  # F
    .param p4, "time"  # J

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;->lux:F

    .line 437
    iput p2, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;->appId:I

    .line 438
    iput p3, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;->brightness:F

    .line 439
    iput-wide p4, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;->time:J

    .line 440
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"  # Ljava/lang/Object;

    .line 452
    instance-of v0, p1, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 453
    return v1

    .line 455
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;

    .line 456
    .local v0, "record":Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;
    iget v2, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;->lux:F

    iget v3, v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;->lux:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_20

    iget v2, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;->appId:I

    iget v3, v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;->appId:I

    if-ne v2, v3, :cond_20

    iget v2, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;->brightness:F

    iget v3, v0, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;->brightness:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->-$$Nest$sfgetFORMAT()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;->time:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", l: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;->lux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", a: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", b: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$ResultRecord;->brightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
