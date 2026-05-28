# classes.dex

.class public Lcom/android/server/display/RefactorAutoBrightnessAnimator;
.super Ljava/lang/Object;
.source "RefactorAutoBrightnessAnimator.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDebug:Z

.field private mDuration:D

.field private mDurationTime:D

.field private mFactorFirst:D

.field private mFactorFirstCurrent:D

.field private mFactorFirstTarget:D

.field private mFactorFirstTime:D

.field private mFactorSecond:D

.field private mFactorSecondCurrent:D

.field private mFactorSecondTarget:D

.field private mFactorSecondTime:D

.field private mIsFirstGetNit:Z

.field private mLastTargetValue:F

.field private mLogicalCurrent:D

.field private mLogicalStart:D

.field private mLogicalTarget:D

.field private mLux:F

.field private mPerceptualCurrent:D

.field private mPerceptualStart:D

.field private mPerceptualTarget:D

.field private mStartAnimationTime:J

.field private mStartDurationTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "name"  # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "RefactorAutoBrightnessAnimator"

    iput-object v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->TAG:Ljava/lang/String;

    .line 20
    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLux:F

    .line 21
    iput v1, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLastTargetValue:F

    .line 24
    const-wide/high16 v1, 0x4018000000000000L  # 6.0

    iput-wide v1, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirst:D

    .line 26
    iput-wide v1, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    .line 28
    iput-wide v1, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstCurrent:D

    .line 30
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTime:D

    .line 33
    const-wide v3, 0x3fe47ae140000000L  # 0.6399999856948853

    iput-wide v3, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecond:D

    .line 34
    iput-wide v3, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    .line 35
    iput-wide v3, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondCurrent:D

    .line 36
    iput-wide v1, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTime:D

    .line 39
    const-wide/high16 v3, -0x4010000000000000L  # -1.0

    iput-wide v3, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalStart:D

    .line 41
    iput-wide v3, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalCurrent:D

    .line 49
    iput-wide v1, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mDuration:D

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mDebug:Z

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->TAG:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method


# virtual methods
.method public actualCurrentBrtToLogicalBrt(F)V
    .registers 6
    .param p1, "actualNit"  # F

    .line 112
    const v0, 0x44848000  # 1060.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_a

    .line 113
    const p1, 0x44848000  # 1060.0f

    .line 115
    :cond_a
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/display/RefactorBrightnessUtil;->actualNitToLogicalNit(FDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalCurrent:D

    .line 117
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalCurrent:D

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalStart:D

    .line 118
    iget-object v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actualCurrentBrtToLogicalBrt mLogicalCurrent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalCurrent:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actualNit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFactorFirstCurrent ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstCurrent:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFactorFirstTarget ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFactorSecondTarget ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFactorSecondCurrent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondCurrent:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirst:D

    .line 125
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecond:D

    .line 126
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstCurrent:D

    .line 127
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondCurrent:D

    .line 128
    invoke-virtual {p0}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->updatePerceptualDuration()V

    .line 129
    return-void
.end method

.method public actualEndBrtToLogicalBrt(F)V
    .registers 6
    .param p1, "actualNit"  # F

    .line 132
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/display/RefactorBrightnessUtil;->actualNitToLogicalNit(FDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalTarget:D

    .line 134
    iget-object v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actualEndBrtToLogicalBrt mLogicalTarget = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalTarget:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actualNit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFactorFirstTarget ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFactorSecondTarget = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method public actualStartBrtToLogicalBrt(F)V
    .registers 6
    .param p1, "actualNit"  # F

    .line 99
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstCurrent:D

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondCurrent:D

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/display/RefactorBrightnessUtil;->actualNitToLogicalNit(FDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalStart:D

    .line 101
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalCurrent:D

    const-wide/high16 v2, -0x4010000000000000L  # -1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_16

    .line 102
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalStart:D

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalCurrent:D

    .line 104
    :cond_16
    iget-object v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actualStartBrtToLogicalBrt mLogicalStart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalStart:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLogicalCurrent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalCurrent:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actualNit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFactorFirstCurrent ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstCurrent:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFactorSecondCurrent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondCurrent:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 322
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_LDA:Z

    iput-boolean v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mDebug:Z

    .line 323
    return-void
.end method

.method public getCurrentFactorFirst(F)D
    .registers 12
    .param p1, "timeDeltaForAnimation"  # F

    .line 141
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTime:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_a2

    .line 142
    float-to-double v0, p1

    iget-wide v4, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTime:D

    div-double/2addr v0, v4

    .line 143
    .local v0, "temp":D
    iget-wide v4, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirst:D

    iget-wide v6, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_31

    .line 144
    mul-double v4, v0, v0

    mul-double/2addr v4, v0

    .line 145
    .end local v0  # "temp":D
    .local v4, "temp":D
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirst:D

    iget-wide v6, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    iget-wide v8, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirst:D

    sub-double/2addr v6, v8

    mul-double/2addr v6, v4

    add-double/2addr v0, v6

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstCurrent:D

    .line 146
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstCurrent:D

    iget-wide v6, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_55

    .line 147
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstCurrent:D

    .line 148
    iput-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTime:D

    goto :goto_55

    .line 151
    .end local v4  # "temp":D
    .restart local v0  # "temp":D
    :cond_31
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    sub-double v6, v4, v0

    sub-double v8, v4, v0

    mul-double/2addr v6, v8

    sub-double v8, v4, v0

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    .line 152
    .end local v0  # "temp":D
    .restart local v4  # "temp":D
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirst:D

    iget-wide v6, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    iget-wide v8, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirst:D

    sub-double/2addr v6, v8

    mul-double/2addr v6, v4

    add-double/2addr v0, v6

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstCurrent:D

    .line 153
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstCurrent:D

    iget-wide v6, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    cmpg-double v0, v0, v6

    if-gtz v0, :cond_55

    .line 154
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstCurrent:D

    .line 155
    iput-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTime:D

    .line 158
    :cond_55
    :goto_55
    iget-boolean v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mDebug:Z

    if-eqz v0, :cond_a2

    .line 159
    iget-object v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentFactorFirst: mFactorFirstCurrent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstCurrent:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", temp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFactorFirstTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTime:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFactorFirst = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirst:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFactorFirstTarget = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v4  # "temp":D
    :cond_a2
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstCurrent:D

    return-wide v0
.end method

.method public getCurrentFactorSecond(F)D
    .registers 12
    .param p1, "timeDeltaForAnimation"  # F

    .line 168
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTime:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_a2

    .line 169
    float-to-double v0, p1

    iget-wide v4, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTime:D

    div-double/2addr v0, v4

    .line 170
    .local v0, "temp":D
    iget-wide v4, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecond:D

    iget-wide v6, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_31

    .line 171
    mul-double v4, v0, v0

    mul-double/2addr v4, v0

    .line 172
    .end local v0  # "temp":D
    .local v4, "temp":D
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecond:D

    iget-wide v6, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    iget-wide v8, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecond:D

    sub-double/2addr v6, v8

    mul-double/2addr v6, v4

    add-double/2addr v0, v6

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondCurrent:D

    .line 173
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondCurrent:D

    iget-wide v6, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_55

    .line 174
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondCurrent:D

    .line 175
    iput-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTime:D

    goto :goto_55

    .line 178
    .end local v4  # "temp":D
    .restart local v0  # "temp":D
    :cond_31
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    sub-double v6, v4, v0

    sub-double v8, v4, v0

    mul-double/2addr v6, v8

    sub-double v8, v4, v0

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    .line 179
    .end local v0  # "temp":D
    .restart local v4  # "temp":D
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecond:D

    iget-wide v6, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    iget-wide v8, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecond:D

    sub-double/2addr v6, v8

    mul-double/2addr v6, v4

    add-double/2addr v0, v6

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondCurrent:D

    .line 180
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondCurrent:D

    iget-wide v6, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    cmpg-double v0, v0, v6

    if-gtz v0, :cond_55

    .line 181
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondCurrent:D

    .line 182
    iput-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTime:D

    .line 185
    :cond_55
    :goto_55
    iget-boolean v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mDebug:Z

    if-eqz v0, :cond_a2

    .line 186
    iget-object v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentFactorSecond: mFactorSecondCurrent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondCurrent:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", temp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFactorSecondTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTime:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFactorSecond = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecond:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFactorSecondTarget = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v4  # "temp":D
    :cond_a2
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondCurrent:D

    return-wide v0
.end method

.method public getCurrentLogical(F)D
    .registers 10
    .param p1, "timeDelta"  # F

    .line 223
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mDuration:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_a5

    .line 224
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mPerceptualCurrent:D

    iget-wide v4, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mPerceptualTarget:D

    iget-wide v6, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mPerceptualStart:D

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mDuration:D

    div-double/2addr v4, v6

    float-to-double v6, p1

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mPerceptualCurrent:D

    .line 226
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mPerceptualCurrent:D

    invoke-static {v0, v1}, Lcom/android/server/display/RefactorBrightnessUtil;->perceptualToLogicalBrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalCurrent:D

    .line 227
    iget-boolean v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mDebug:Z

    if-eqz v0, :cond_74

    .line 228
    iget-object v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCurrentLogical: mPerceptualCurrent = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mPerceptualCurrent:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mPerceptualStart = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mPerceptualStart:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mLogicalCurrent:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalCurrent:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mLogicalTarget:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalTarget:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mDuration:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mDuration:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_74
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalStart:D

    iget-wide v4, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalTarget:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_84

    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalCurrent:D

    iget-wide v4, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalTarget:D

    cmpg-double v0, v0, v4

    if-lez v0, :cond_94

    :cond_84
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalStart:D

    iget-wide v4, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalTarget:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_a5

    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalCurrent:D

    iget-wide v4, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalTarget:D

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_a5

    .line 235
    :cond_94
    iput-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mDuration:D

    .line 236
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalTarget:D

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalCurrent:D

    .line 237
    iget-object v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getCurrentLogical End Ramp Brightness!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalCurrent:D

    return-wide v0

    .line 241
    :cond_a5
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalCurrent:D

    return-wide v0
.end method

.method public getCurrentNit(F)D
    .registers 18
    .param p1, "timeDelta"  # F

    .line 270
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 271
    .local v1, "gamma":D
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 272
    .local v3, "nowTime":J
    iget-boolean v5, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mIsFirstGetNit:Z

    const/high16 v6, 0x447a0000  # 1000.0f

    if-eqz v5, :cond_18

    .line 273
    long-to-float v5, v3

    mul-float v7, p1, v6

    sub-float/2addr v5, v7

    float-to-long v7, v5

    iput-wide v7, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mStartAnimationTime:J

    .line 274
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mIsFirstGetNit:Z

    .line 276
    :cond_18
    iget-wide v7, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mStartAnimationTime:J

    sub-long v7, v3, v7

    long-to-float v5, v7

    div-float/2addr v5, v6

    .line 277
    .local v5, "timeDeltaForAnimation":F
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->getCurrentLogical(F)D

    move-result-wide v6

    .line 278
    .local v6, "currentLogical":D
    move-wide v8, v6

    .line 279
    .local v8, "temp":D
    const-wide/high16 v10, 0x403e000000000000L  # 30.0

    cmpl-double v12, v6, v10

    if-lez v12, :cond_41

    .line 280
    const-wide v12, 0x4090900000000000L  # 1060.0

    invoke-virtual {v0, v5}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->getCurrentFactorSecond(F)D

    move-result-wide v14

    mul-double/2addr v14, v12

    sub-double v12, v10, v14

    const-wide v14, -0x3f6fe80000000000L  # -1030.0

    div-double v1, v12, v14

    .line 281
    sub-double v12, v10, v6

    mul-double/2addr v12, v1

    sub-double v8, v10, v12

    .line 283
    :cond_41
    const-wide/high16 v10, 0x4059000000000000L  # 100.0

    cmpg-double v12, v8, v10

    if-gtz v12, :cond_5c

    .line 284
    const-wide/high16 v12, 0x3ff0000000000000L  # 1.0

    invoke-virtual {v0, v5}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->getCurrentFactorFirst(F)D

    move-result-wide v14

    mul-double/2addr v14, v12

    sub-double v12, v10, v14

    const-wide v14, 0x4058c00000000000L  # 99.0

    div-double v1, v12, v14

    .line 285
    sub-double v12, v10, v8

    mul-double/2addr v12, v1

    sub-double v8, v10, v12

    .line 287
    :cond_5c
    iget-boolean v10, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mDebug:Z

    if-eqz v10, :cond_a4

    .line 288
    iget-object v10, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getCurrentNit: CurrentNit = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", CurrentLogical = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "nowTime:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mStartAnimationTime:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mStartAnimationTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", timeDeltaForAnimation:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_a4
    return-wide v8
.end method

.method public getCurrentSliderVal()F
    .registers 3

    .line 245
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalCurrent:D

    double-to-float v0, v0

    invoke-static {v0}, Lcom/android/server/display/RefactorBrightnessUtil;->logicalBrightnessToSlider(F)F

    move-result v0

    return v0
.end method

.method public getDuration()D
    .registers 7

    .line 318
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mDurationTime:D

    const-wide v2, 0x408f400000000000L  # 1000.0

    mul-double/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mStartDurationTime:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getLux()F
    .registers 2

    .line 314
    iget v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLux:F

    return v0
.end method

.method public reset(Z)V
    .registers 6
    .param p1, "isNeedUpdateFactor"  # Z

    .line 249
    iget-object v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset value: mDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mDuration:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLogicalCurrent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalCurrent:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLogicalTarget:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalTarget:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFactorFirstCurrent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstCurrent:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFactorFirstTarget:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFactorSecondCurrent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondCurrent:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFactorSecondTarget:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isNeedUpdateFactor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mDuration:D

    .line 259
    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalTarget:D

    iput-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalCurrent:D

    .line 260
    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTime:D

    .line 261
    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTime:D

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mStartDurationTime:J

    .line 263
    if-eqz p1, :cond_89

    .line 264
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstCurrent:D

    .line 265
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondCurrent:D

    .line 267
    :cond_89
    return-void
.end method

.method public updateCurrentLogical(F)V
    .registers 4
    .param p1, "logicalNit"  # F

    .line 296
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalCurrent:D

    .line 297
    return-void
.end method

.method public updateFactor()V
    .registers 19

    .line 63
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLux:F

    invoke-static {v1}, Lcom/android/server/display/RefactorBrightnessUtil;->getFirstFactor(F)D

    move-result-wide v1

    .line 64
    .local v1, "factorFirstTemp":D
    iget v3, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLux:F

    invoke-static {v3}, Lcom/android/server/display/RefactorBrightnessUtil;->getSecondFactor(F)D

    move-result-wide v3

    .line 65
    .local v3, "factorSecondTemp":D
    iget-wide v5, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    sub-double v5, v1, v5

    .line 66
    .local v5, "factorFirstTime":D
    iget-wide v7, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstCurrent:D

    iput-wide v7, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirst:D

    .line 67
    iget-wide v7, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondCurrent:D

    iput-wide v7, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecond:D

    .line 68
    iget-wide v7, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    cmpl-double v7, v1, v7

    const-wide/high16 v8, 0x4024000000000000L  # 10.0

    const-wide/high16 v10, 0x4014000000000000L  # 5.0

    const-wide/16 v12, 0x0

    if-eqz v7, :cond_31

    .line 69
    iput-wide v1, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    .line 70
    cmpg-double v7, v5, v12

    if-gtz v7, :cond_2f

    .line 71
    iput-wide v8, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTime:D

    goto :goto_31

    .line 73
    :cond_2f
    iput-wide v10, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTime:D

    .line 77
    :cond_31
    :goto_31
    iget-wide v14, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    sub-double v14, v3, v14

    .line 78
    .local v14, "factorSecondTime":D
    move-wide/from16 v16, v12

    iget-wide v12, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    cmpl-double v7, v3, v12

    if-eqz v7, :cond_48

    .line 79
    iput-wide v3, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    .line 80
    cmpg-double v7, v14, v16

    if-gtz v7, :cond_46

    .line 81
    iput-wide v8, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTime:D

    goto :goto_48

    .line 83
    :cond_46
    iput-wide v10, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTime:D

    .line 86
    :cond_48
    :goto_48
    iget-object v7, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateFactor mLux = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLux:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mFactorFirst = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirst:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mFactorFirstCurrent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstCurrent:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mFactorFirstTarget = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTarget:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mFactorFirstTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorFirstTime:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mFactorSecond = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecond:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mFactorSecondCurrent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondCurrent:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mFactorSecondTarget = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTarget:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mFactorSecondTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mFactorSecondTime:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public updateLux(FFF)V
    .registers 5
    .param p1, "lux"  # F
    .param p2, "currentValue"  # F
    .param p3, "targetValue"  # F

    .line 300
    const/high16 v0, 0x45fa0000  # 8000.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    .line 301
    const/high16 p1, 0x45fa0000  # 8000.0f

    .line 303
    :cond_8
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2a

    iget v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLux:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLastTargetValue:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_2a

    .line 304
    :cond_1a
    iput p1, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLux:F

    .line 305
    iput p3, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLastTargetValue:F

    .line 306
    invoke-virtual {p0}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->updateFactor()V

    .line 307
    invoke-virtual {p0, p2}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->actualStartBrtToLogicalBrt(F)V

    .line 308
    invoke-virtual {p0, p3}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->actualEndBrtToLogicalBrt(F)V

    .line 309
    invoke-virtual {p0}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->updatePerceptualDuration()V

    .line 311
    :cond_2a
    return-void
.end method

.method public updatePerceptualDuration()V
    .registers 15

    .line 196
    iget-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalStart:D

    invoke-static {v0, v1}, Lcom/android/server/display/RefactorBrightnessUtil;->logicalBrtToPerceptual(D)D

    move-result-wide v0

    .line 197
    .local v0, "pStart":D
    iget-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalTarget:D

    invoke-static {v2, v3}, Lcom/android/server/display/RefactorBrightnessUtil;->logicalBrtToPerceptual(D)D

    move-result-wide v2

    .line 198
    .local v2, "pTarget":D
    sub-double v4, v2, v0

    .line 199
    .local v4, "temp":D
    iput-wide v0, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mPerceptualStart:D

    .line 200
    iput-wide v2, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mPerceptualTarget:D

    .line 201
    iget-wide v6, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mPerceptualStart:D

    iput-wide v6, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mPerceptualCurrent:D

    .line 202
    const/16 v6, 0xd

    new-array v7, v6, [F

    fill-array-data v7, :array_b0

    .line 204
    .local v7, "nums1":[F
    new-array v8, v6, [F

    fill-array-data v8, :array_ce

    .line 205
    .local v8, "nums2":[F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_23
    if-ge v9, v6, :cond_5a

    .line 206
    aget v10, v7, v9

    float-to-double v10, v10

    cmpg-double v10, v4, v10

    if-gtz v10, :cond_57

    .line 207
    if-lez v9, :cond_50

    .line 208
    add-int/lit8 v6, v9, -0x1

    aget v6, v7, v6

    float-to-double v10, v6

    sub-double v10, v4, v10

    aget v6, v7, v9

    add-int/lit8 v12, v9, -0x1

    aget v12, v7, v12

    sub-float/2addr v6, v12

    float-to-double v12, v6

    div-double/2addr v10, v12

    aget v6, v8, v9

    add-int/lit8 v12, v9, -0x1

    aget v12, v8, v12

    sub-float/2addr v6, v12

    float-to-double v12, v6

    mul-double/2addr v10, v12

    add-int/lit8 v6, v9, -0x1

    aget v6, v8, v6

    float-to-double v12, v6

    add-double/2addr v10, v12

    iput-wide v10, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mDuration:D

    goto :goto_5a

    .line 210
    :cond_50
    const/4 v6, 0x0

    aget v6, v8, v6

    float-to-double v10, v6

    iput-wide v10, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mDuration:D

    .line 212
    goto :goto_5a

    .line 205
    :cond_57
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    .line 215
    .end local v9  # "i":I
    :cond_5a
    :goto_5a
    iget-wide v9, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mDuration:D

    iput-wide v9, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mDurationTime:D

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mStartDurationTime:J

    .line 217
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mIsFirstGetNit:Z

    .line 218
    iget-object v6, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updatePerceptualDuration: pStart = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mLogicalStart = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalStart:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pTarget = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mLogicalTarget = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mLogicalTarget:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mDuration = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->mDuration:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    nop

    :array_b0
    .array-data 4
        -0x3d380000  # -100.0f
        -0x40800000  # -1.0f
        -0x41666666  # -0.3f
        -0x41b33333  # -0.2f
        -0x42333333  # -0.1f
        0x0
        0x0
        0x3d23d70a  # 0.04f
        0x3dcccccd  # 0.1f
        0x3e4ccccd  # 0.2f
        0x3e99999a  # 0.3f
        0x3f800000  # 1.0f
        0x42c80000  # 100.0f
    .end array-data

    :array_ce
    .array-data 4
        0x42700000  # 60.0f
        0x42700000  # 60.0f
        0x41900000  # 18.0f
        0x41400000  # 12.0f
        0x40c00000  # 6.0f
        0x40a00000  # 5.0f
        0x40a00000  # 5.0f
        0x40a00000  # 5.0f
        0x40891eb8  # 4.285f
        0x4036e148  # 2.8575f
        0x40200000  # 2.5f
        0x40200000  # 2.5f
        0x40200000  # 2.5f
    .end array-data
.end method
