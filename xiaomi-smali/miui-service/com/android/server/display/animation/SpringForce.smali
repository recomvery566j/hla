# classes.dex

.class public final Lcom/android/server/display/animation/SpringForce;
.super Ljava/lang/Object;
.source "SpringForce.java"

# interfaces
.implements Lcom/android/server/display/animation/Force;


# static fields
.field public static final DAMPING_RATIO_HIGH_BOUNCY:F = 0.2f

.field public static final DAMPING_RATIO_LOW_BOUNCY:F = 0.75f

.field public static final DAMPING_RATIO_MEDIUM_BOUNCY:F = 0.5f

.field public static final DAMPING_RATIO_NO_BOUNCY:F = 1.0f

.field public static final STIFFNESS_HIGH:F = 10000.0f

.field public static final STIFFNESS_LOW:F = 200.0f

.field public static final STIFFNESS_MEDIUM:F = 1500.0f

.field public static final STIFFNESS_VERY_LOW:F = 50.0f

.field private static final UNSET:D = 1.7976931348623157E308

.field private static final VELOCITY_THRESHOLD_MULTIPLIER:D = 62.5


# instance fields
.field private mDampedFreq:D

.field mDampingRatio:D

.field private mFinalPosition:D

.field private mGammaMinus:D

.field private mGammaPlus:D

.field private mInitialized:Z

.field private final mMassState:Lcom/android/server/display/animation/DynamicAnimation$MassState;

.field mNaturalFreq:D

.field private mValueThreshold:D

.field private mVelocityThreshold:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-wide v0, 0x4097700000000000L  # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    .line 84
    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    iput-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/animation/SpringForce;->mInitialized:Z

    .line 103
    const-wide v0, 0x7fefffffffffffffL  # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mFinalPosition:D

    .line 106
    new-instance v0, Lcom/android/server/display/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Lcom/android/server/display/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/animation/SpringForce;->mMassState:Lcom/android/server/display/animation/DynamicAnimation$MassState;

    .line 114
    return-void
.end method

.method public constructor <init>(F)V
    .registers 4
    .param p1, "finalPosition"  # F

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-wide v0, 0x4097700000000000L  # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    .line 84
    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    iput-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/animation/SpringForce;->mInitialized:Z

    .line 103
    const-wide v0, 0x7fefffffffffffffL  # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mFinalPosition:D

    .line 106
    new-instance v0, Lcom/android/server/display/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Lcom/android/server/display/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/animation/SpringForce;->mMassState:Lcom/android/server/display/animation/DynamicAnimation$MassState;

    .line 122
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mFinalPosition:D

    .line 123
    return-void
.end method

.method private init()V
    .registers 11

    .line 244
    iget-boolean v0, p0, Lcom/android/server/display/animation/SpringForce;->mInitialized:Z

    if-eqz v0, :cond_5

    .line 245
    return-void

    .line 248
    :cond_5
    iget-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mFinalPosition:D

    const-wide v2, 0x7fefffffffffffffL  # Double.MAX_VALUE

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_66

    .line 253
    iget-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_45

    .line 255
    iget-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    neg-double v0, v0

    iget-wide v4, p0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    iget-wide v6, p0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    iget-wide v8, p0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v6, v8

    sub-double/2addr v6, v2

    .line 256
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mGammaPlus:D

    .line 257
    iget-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    neg-double v0, v0

    iget-wide v4, p0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    iget-wide v6, p0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    iget-wide v8, p0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v6, v8

    sub-double/2addr v6, v2

    .line 258
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v4, v2

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mGammaMinus:D

    goto :goto_62

    .line 259
    :cond_45
    iget-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_62

    iget-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_62

    .line 261
    iget-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    iget-wide v4, p0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    iget-wide v6, p0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mDampedFreq:D

    .line 264
    :cond_62
    :goto_62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/animation/SpringForce;->mInitialized:Z

    .line 265
    return-void

    .line 249
    :cond_66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: Final position of the spring must be set before the animation starts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAcceleration(FF)F
    .registers 11
    .param p1, "lastDisplacement"  # F
    .param p2, "lastVelocity"  # F

    .line 216
    invoke-virtual {p0}, Lcom/android/server/display/animation/SpringForce;->getFinalPosition()F

    move-result v0

    sub-float/2addr p1, v0

    .line 218
    iget-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    iget-wide v2, p0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v0, v2

    .line 219
    .local v0, "k":D
    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    iget-wide v4, p0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v4, v2

    iget-wide v2, p0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v4, v2

    .line 221
    .local v4, "c":D
    neg-double v2, v0

    float-to-double v6, p1

    mul-double/2addr v2, v6

    float-to-double v6, p2

    mul-double/2addr v6, v4

    sub-double/2addr v2, v6

    double-to-float v2, v2

    return v2
.end method

.method public getDampingRatio()F
    .registers 3

    .line 185
    iget-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    double-to-float v0, v0

    return v0
.end method

.method public getFinalPosition()F
    .registers 3

    .line 205
    iget-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mFinalPosition:D

    double-to-float v0, v0

    return v0
.end method

.method public getStiffness()F
    .registers 5

    .line 151
    iget-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    iget-wide v2, p0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public isAtEquilibrium(FF)Z
    .registers 7
    .param p1, "value"  # F
    .param p2, "velocity"  # F

    .line 229
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/android/server/display/animation/SpringForce;->mVelocityThreshold:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1e

    .line 230
    invoke-virtual {p0}, Lcom/android/server/display/animation/SpringForce;->getFinalPosition()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/android/server/display/animation/SpringForce;->mValueThreshold:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1e

    .line 231
    const/4 v0, 0x1

    return v0

    .line 233
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setDampingRatio(F)Lcom/android/server/display/animation/SpringForce;
    .registers 4
    .param p1, "dampingRatio"  # F

    .line 170
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_c

    .line 173
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/animation/SpringForce;->mInitialized:Z

    .line 176
    return-object p0

    .line 171
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Damping ratio must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFinalPosition(F)Lcom/android/server/display/animation/SpringForce;
    .registers 4
    .param p1, "finalPosition"  # F

    .line 195
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mFinalPosition:D

    .line 196
    return-object p0
.end method

.method public setStiffness(F)Lcom/android/server/display/animation/SpringForce;
    .registers 4
    .param p1, "stiffness"  # F

    .line 136
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_10

    .line 139
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/animation/SpringForce;->mInitialized:Z

    .line 142
    return-object p0

    .line 137
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Spring stiffness constant must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setValueThreshold(D)V
    .registers 7
    .param p1, "threshold"  # D

    .line 326
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mValueThreshold:D

    .line 327
    iget-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mValueThreshold:D

    const-wide v2, 0x404f400000000000L  # 62.5

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/display/animation/SpringForce;->mVelocityThreshold:D

    .line 328
    return-void
.end method

.method updateValues(DDJ)Lcom/android/server/display/animation/DynamicAnimation$MassState;
    .registers 26
    .param p1, "lastDisplacement"  # D
    .param p3, "lastVelocity"  # D
    .param p5, "timeElapsed"  # J

    .line 273
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/server/display/animation/SpringForce;->init()V

    .line 275
    move-wide/from16 v1, p5

    long-to-double v3, v1

    const-wide v5, 0x408f400000000000L  # 1000.0

    div-double/2addr v3, v5

    .line 276
    .local v3, "deltaT":D
    iget-wide v5, v0, Lcom/android/server/display/animation/SpringForce;->mFinalPosition:D

    sub-double v5, p1, v5

    .line 279
    .end local p1  # "lastDisplacement":D
    .local v5, "lastDisplacement":D
    iget-wide v7, v0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    const-wide/high16 v9, 0x3ff0000000000000L  # 1.0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_6f

    .line 281
    iget-wide v7, v0, Lcom/android/server/display/animation/SpringForce;->mGammaMinus:D

    mul-double/2addr v7, v5

    sub-double v7, v7, p3

    iget-wide v9, v0, Lcom/android/server/display/animation/SpringForce;->mGammaMinus:D

    iget-wide v13, v0, Lcom/android/server/display/animation/SpringForce;->mGammaPlus:D

    sub-double/2addr v9, v13

    div-double/2addr v7, v9

    sub-double v7, v5, v7

    .line 283
    .local v7, "coeffA":D
    iget-wide v9, v0, Lcom/android/server/display/animation/SpringForce;->mGammaMinus:D

    mul-double/2addr v9, v5

    sub-double v9, v9, p3

    iget-wide v13, v0, Lcom/android/server/display/animation/SpringForce;->mGammaMinus:D

    iget-wide v11, v0, Lcom/android/server/display/animation/SpringForce;->mGammaPlus:D

    sub-double/2addr v13, v11

    div-double/2addr v9, v13

    .line 285
    .local v9, "coeffB":D
    iget-wide v11, v0, Lcom/android/server/display/animation/SpringForce;->mGammaMinus:D

    mul-double/2addr v11, v3

    const-wide v13, 0x4005bf0a8b145769L  # Math.E

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double/2addr v11, v7

    iget-wide v13, v0, Lcom/android/server/display/animation/SpringForce;->mGammaPlus:D

    mul-double/2addr v13, v3

    .line 286
    const-wide v1, 0x4005bf0a8b145769L  # Math.E

    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    mul-double/2addr v13, v9

    add-double/2addr v11, v13

    .line 287
    .local v11, "displacement":D
    iget-wide v13, v0, Lcom/android/server/display/animation/SpringForce;->mGammaMinus:D

    mul-double/2addr v13, v7

    move-wide v15, v3

    .end local v3  # "deltaT":D
    .local v15, "deltaT":D
    iget-wide v3, v0, Lcom/android/server/display/animation/SpringForce;->mGammaMinus:D

    mul-double/2addr v3, v15

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v13, v3

    iget-wide v3, v0, Lcom/android/server/display/animation/SpringForce;->mGammaPlus:D

    mul-double/2addr v3, v9

    iget-wide v1, v0, Lcom/android/server/display/animation/SpringForce;->mGammaPlus:D

    mul-double/2addr v1, v15

    .line 288
    move-wide/from16 v17, v3

    const-wide v3, 0x4005bf0a8b145769L  # Math.E

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double v3, v17, v1

    add-double/2addr v13, v3

    .line 289
    .end local v7  # "coeffA":D
    .end local v9  # "coeffB":D
    .local v13, "currentVelocity":D
    goto/16 :goto_111

    .end local v11  # "displacement":D
    .end local v13  # "currentVelocity":D
    .end local v15  # "deltaT":D
    .restart local v3  # "deltaT":D
    :cond_6f
    move-wide v15, v3

    .end local v3  # "deltaT":D
    .restart local v15  # "deltaT":D
    iget-wide v1, v0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    cmpl-double v1, v1, v9

    if-nez v1, :cond_aa

    .line 291
    move-wide v1, v5

    .line 292
    .local v1, "coeffA":D
    iget-wide v3, v0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v3, v5

    add-double v3, p3, v3

    .line 293
    .local v3, "coeffB":D
    mul-double v7, v3, v15

    add-double/2addr v7, v1

    iget-wide v9, v0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    neg-double v9, v9

    mul-double/2addr v9, v15

    const-wide v13, 0x4005bf0a8b145769L  # Math.E

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double v11, v7, v9

    .line 294
    .restart local v11  # "displacement":D
    mul-double v7, v3, v15

    add-double/2addr v7, v1

    iget-wide v9, v0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    neg-double v9, v9

    mul-double/2addr v9, v15

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v7, v9

    iget-wide v9, v0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    neg-double v9, v9

    mul-double/2addr v7, v9

    iget-wide v9, v0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    neg-double v9, v9

    mul-double/2addr v9, v15

    .line 295
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v9, v3

    add-double v13, v7, v9

    .line 296
    .end local v1  # "coeffA":D
    .end local v3  # "coeffB":D
    .restart local v13  # "currentVelocity":D
    goto :goto_111

    .line 298
    .end local v11  # "displacement":D
    .end local v13  # "currentVelocity":D
    :cond_aa
    move-wide v1, v5

    .line 299
    .local v1, "cosCoeff":D
    iget-wide v3, v0, Lcom/android/server/display/animation/SpringForce;->mDampedFreq:D

    div-double/2addr v9, v3

    iget-wide v3, v0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    iget-wide v7, v0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v3, v7

    mul-double/2addr v3, v5

    add-double v3, v3, p3

    mul-double/2addr v9, v3

    .line 301
    .local v9, "sinCoeff":D
    iget-wide v3, v0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    neg-double v3, v3

    iget-wide v7, v0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v3, v7

    mul-double/2addr v3, v15

    const-wide v13, 0x4005bf0a8b145769L  # Math.E

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-wide v7, v0, Lcom/android/server/display/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v7, v15

    .line 302
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v1

    iget-wide v11, v0, Lcom/android/server/display/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v11, v15

    .line 303
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    add-double/2addr v7, v11

    mul-double v11, v3, v7

    .line 304
    .restart local v11  # "displacement":D
    iget-wide v3, v0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    neg-double v3, v3

    mul-double/2addr v3, v11

    iget-wide v7, v0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v3, v7

    iget-wide v7, v0, Lcom/android/server/display/animation/SpringForce;->mDampingRatio:D

    neg-double v7, v7

    iget-wide v13, v0, Lcom/android/server/display/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v7, v13

    mul-double/2addr v7, v15

    .line 305
    const-wide v13, 0x4005bf0a8b145769L  # Math.E

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    iget-wide v13, v0, Lcom/android/server/display/animation/SpringForce;->mDampedFreq:D

    neg-double v13, v13

    mul-double/2addr v13, v1

    move-wide/from16 p1, v1

    .end local v1  # "cosCoeff":D
    .local p1, "cosCoeff":D
    iget-wide v1, v0, Lcom/android/server/display/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v1, v15

    .line 306
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v13, v1

    iget-wide v1, v0, Lcom/android/server/display/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v1, v9

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lcom/android/server/display/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v1, v15

    .line 307
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v1, v1, v17

    add-double/2addr v13, v1

    mul-double/2addr v7, v13

    add-double v13, v3, v7

    .line 310
    .end local v9  # "sinCoeff":D
    .end local p1  # "cosCoeff":D
    .restart local v13  # "currentVelocity":D
    :goto_111
    iget-object v1, v0, Lcom/android/server/display/animation/SpringForce;->mMassState:Lcom/android/server/display/animation/DynamicAnimation$MassState;

    iget-wide v2, v0, Lcom/android/server/display/animation/SpringForce;->mFinalPosition:D

    add-double/2addr v2, v11

    double-to-float v2, v2

    iput v2, v1, Lcom/android/server/display/animation/DynamicAnimation$MassState;->mValue:F

    .line 311
    iget-object v1, v0, Lcom/android/server/display/animation/SpringForce;->mMassState:Lcom/android/server/display/animation/DynamicAnimation$MassState;

    double-to-float v2, v13

    iput v2, v1, Lcom/android/server/display/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 312
    iget-object v1, v0, Lcom/android/server/display/animation/SpringForce;->mMassState:Lcom/android/server/display/animation/DynamicAnimation$MassState;

    return-object v1
.end method
