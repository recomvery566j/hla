# classes.dex

.class Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;
.super Ljava/lang/Object;
.source "RhythmicEyeCareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/eyecare/RhythmicEyeCareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeData"
.end annotation


# instance fields
.field hour:I

.field minute:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "hour"  # I
    .param p2, "minute"  # I

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput p1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;->hour:I

    .line 466
    iput p2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;->minute:I

    .line 467
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;
    .registers 4
    .param p0, "timeString"  # Ljava/lang/String;

    .line 471
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 472
    .local v0, "hour":I
    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 473
    .local v1, "minute":I
    new-instance v2, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    invoke-direct {v2, v0, v1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;-><init>(II)V

    return-object v2
.end method

.method public static fromTotalMinutes(I)Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;
    .registers 4
    .param p0, "totalMinutes"  # I

    .line 487
    div-int/lit8 v0, p0, 0x3c

    .line 488
    .local v0, "hour":I
    rem-int/lit8 v1, p0, 0x3c

    .line 489
    .local v1, "minute":I
    new-instance v2, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    invoke-direct {v2, v0, v1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 478
    iget v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;->hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;->minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%02d%02d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTotalMinutes()I
    .registers 3

    .line 482
    iget v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;->hour:I

    mul-int/lit8 v0, v0, 0x3c

    iget v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;->minute:I

    add-int/2addr v0, v1

    return v0
.end method
