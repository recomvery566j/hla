# classes.dex

.class public Lcom/android/server/display/RefactorBrightnessUtil;
.super Ljava/lang/Object;
.source "RefactorBrightnessUtil.java"


# static fields
.field public static final FIRST_NIT_NODE:F = 30.0f

.field public static final INDOOR_LIGHT_THRESHOLD:F = 2000.0f

.field public static final MAX_NIT:F = 1060.0f

.field public static final MIN_NIT:F = 1.0f

.field public static final OUTDOOR_LIGHT_THRESHOLD:F = 6350.0f

.field public static final SECOND_NIT_NODE:F = 100.0f

.field private static final TAG:Ljava/lang/String; = "RefactorBrightnessUtil"

.field private static mFactorFirstConfig:[I

.field private static mFactorSecondConfig:[D

.field private static mManualFactorFirstConfig:D

.field private static mManualFactorSecondConfig:[D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_1e

    sput-object v1, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorFirstConfig:[I

    .line 18
    new-array v0, v0, [D

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorSecondConfig:[D

    .line 20
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    sput-wide v0, Lcom/android/server/display/RefactorBrightnessUtil;->mManualFactorFirstConfig:D

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_6e

    sput-object v0, Lcom/android/server/display/RefactorBrightnessUtil;->mManualFactorSecondConfig:[D

    return-void

    nop

    :array_1e
    .array-data 4
        0x5
        0x1e
        0x64
        0x1f4
        0x3e8
        0x103d8
        0x1
        0x2
        0x6
        0x6
        0xc
        0x50
    .end array-data

    :array_3a
    .array-data 8
        0x3ff0000000000000L  # 1.0
        0x403e000000000000L  # 30.0
        0x408f400000000000L  # 1000.0
        0x40a7700000000000L  # 3000.0
        0x40b3880000000000L  # 5000.0
        0x40bf400000000000L  # 8000.0
        0x3fceb851e0000000L  # 0.23999999463558197
        0x3fe0a3d700000000L  # 0.5199999809265137
        0x3fe0a3d700000000L  # 0.5199999809265137
        0x3fe28f5c20000000L  # 0.5799999833106995
        0x3fe47ae140000000L  # 0.6399999856948853
        0x3ff0000000000000L  # 1.0
    .end array-data

    :array_6e
    .array-data 8
        0x3fe21cac00000000L  # 0.5659999847412109
        0x3fe9a9fbe0000000L  # 0.8019999861717224
        0x3ff0000000000000L  # 1.0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actualNitToLogicalNit(FDD)D
    .registers 23
    .param p0, "currentNit"  # F
    .param p1, "firstFactor"  # D
    .param p3, "secondFactor"  # D

    .line 96
    move/from16 v0, p0

    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    mul-double v3, p1, v1

    const-wide/high16 v5, 0x4059000000000000L  # 100.0

    sub-double v3, v5, v3

    const-wide v7, 0x4058c00000000000L  # 99.0

    div-double/2addr v3, v7

    .line 99
    .local v3, "gamma2":D
    const/high16 v7, 0x42c80000  # 100.0f

    cmpl-float v8, v0, v7

    const-wide/16 v9, 0x0

    const-string v11, "RefactorBrightnessUtil"

    if-lez v8, :cond_1c

    .line 101
    float-to-double v5, v0

    .local v5, "temp_after_first_stage":D
    goto :goto_2b

    .line 103
    .end local v5  # "temp_after_first_stage":D
    :cond_1c
    cmpl-double v8, v3, v9

    if-nez v8, :cond_27

    .line 104
    const-string v1, "actualNitToLogicalNit gamma2 is zero, cannot reverse."

    invoke-static {v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    float-to-double v1, v0

    return-wide v1

    .line 108
    :cond_27
    sub-float/2addr v7, v0

    float-to-double v7, v7

    div-double/2addr v7, v3

    sub-double/2addr v5, v7

    .line 111
    .restart local v5  # "temp_after_first_stage":D
    :goto_2b
    const-wide v7, 0x4090900000000000L  # 1060.0

    mul-double v12, p3, v7

    const-wide/high16 v14, 0x403e000000000000L  # 30.0

    sub-double v12, v14, v12

    const-wide v16, -0x3f6fe80000000000L  # -1030.0

    div-double v12, v12, v16

    .line 114
    .local v12, "gamma1":D
    cmpl-double v16, v12, v9

    if-nez v16, :cond_48

    .line 115
    const-string v1, "actualNitToLogicalNit gamma1 is zero, cannot reverse."

    invoke-static {v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    float-to-double v1, v0

    return-wide v1

    .line 119
    :cond_48
    cmpl-double v9, v12, v9

    if-lez v9, :cond_86

    .line 120
    cmpl-double v9, v5, v14

    if-lez v9, :cond_55

    .line 122
    sub-double v9, v14, v5

    div-double/2addr v9, v12

    sub-double/2addr v14, v9

    .local v14, "currentLogical":D
    goto :goto_56

    .line 125
    .end local v14  # "currentLogical":D
    :cond_55
    move-wide v14, v5

    .line 133
    .restart local v14  # "currentLogical":D
    :goto_56
    cmpg-double v9, v14, v1

    if-ltz v9, :cond_60

    cmpl-double v9, v14, v7

    if-lez v9, :cond_5f

    goto :goto_60

    .line 142
    :cond_5f
    return-wide v14

    .line 134
    :cond_60
    :goto_60
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "actualNitToLogicalNit reversed currentLogical out of range [1, 1060], currentLogical:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", currentNit:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    cmpg-double v9, v14, v1

    if-gez v9, :cond_85

    .line 137
    return-wide v1

    .line 139
    :cond_85
    return-wide v7

    .line 129
    .end local v14  # "currentLogical":D
    :cond_86
    const-string v1, "actualNitToLogicalNit gamma1 is negative, cannot reverse uniquely."

    invoke-static {v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    float-to-double v1, v0

    return-wide v1
.end method

.method public static getFirstFactor(F)D
    .registers 6
    .param p0, "lux"  # F

    .line 29
    const/4 v0, 0x0

    .line 33
    .local v0, "i":I
    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_10

    sget-object v2, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorFirstConfig:[I

    aget v2, v2, v0

    int-to-float v2, v2

    cmpl-float v2, p0, v2

    if-lez v2, :cond_10

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34
    :cond_10
    if-lez v0, :cond_4b

    .line 35
    if-ne v0, v1, :cond_1c

    sget-object v1, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorFirstConfig:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    int-to-float v1, v1

    goto :goto_49

    .line 38
    :cond_1c
    sget-object v1, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorFirstConfig:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float v1, p0, v1

    sget-object v2, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorFirstConfig:[I

    aget v2, v2, v0

    sget-object v3, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorFirstConfig:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    sget-object v2, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorFirstConfig:[I

    add-int/lit8 v3, v0, 0x6

    aget v2, v2, v3

    sget-object v3, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorFirstConfig:[I

    add-int/lit8 v4, v0, 0x5

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sget-object v2, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorFirstConfig:[I

    add-int/lit8 v3, v0, 0x5

    aget v2, v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    :goto_49
    nop

    .local v1, "firstFactor":F
    goto :goto_50

    .line 40
    .end local v1  # "firstFactor":F
    :cond_4b
    sget-object v2, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorFirstConfig:[I

    aget v1, v2, v1

    int-to-float v1, v1

    .line 42
    .restart local v1  # "firstFactor":F
    :goto_50
    float-to-double v2, v1

    return-wide v2
.end method

.method public static getManualFirstFactor(F)D
    .registers 3
    .param p0, "lux"  # F

    .line 61
    sget-wide v0, Lcom/android/server/display/RefactorBrightnessUtil;->mManualFactorFirstConfig:D

    return-wide v0
.end method

.method public static getManualMaxNit(DD)F
    .registers 14
    .param p0, "manualFactorFirst"  # D
    .param p2, "manualFactorSecond"  # D

    .line 76
    const-wide/16 v0, 0x0

    .line 77
    .local v0, "gamma":D
    const-wide v2, 0x4090900000000000L  # 1060.0

    .line 78
    .local v2, "temp":D
    const-wide v4, 0x4090900000000000L  # 1060.0

    mul-double/2addr v4, p2

    const-wide/high16 v6, 0x403e000000000000L  # 30.0

    sub-double v4, v6, v4

    const-wide v8, -0x3f6fe80000000000L  # -1030.0

    div-double/2addr v4, v8

    .line 79
    .end local v0  # "gamma":D
    .local v4, "gamma":D
    mul-double/2addr v8, v4

    sub-double/2addr v6, v8

    .line 80
    .end local v2  # "temp":D
    .local v6, "temp":D
    double-to-float v0, v6

    return v0
.end method

.method public static getManualSecondFactor(F)D
    .registers 3
    .param p0, "lux"  # F

    .line 65
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    const/high16 v1, 0x44fa0000  # 2000.0f

    if-ltz v0, :cond_11

    cmpg-float v0, p0, v1

    if-gez v0, :cond_11

    .line 66
    sget-object v0, Lcom/android/server/display/RefactorBrightnessUtil;->mManualFactorSecondConfig:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0

    .line 67
    :cond_11
    cmpl-float v0, p0, v1

    const v1, 0x45c67000  # 6350.0f

    if-ltz v0, :cond_22

    cmpg-float v0, p0, v1

    if-gez v0, :cond_22

    .line 68
    sget-object v0, Lcom/android/server/display/RefactorBrightnessUtil;->mManualFactorSecondConfig:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0

    .line 69
    :cond_22
    cmpl-float v0, p0, v1

    if-ltz v0, :cond_2c

    .line 70
    sget-object v0, Lcom/android/server/display/RefactorBrightnessUtil;->mManualFactorSecondConfig:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0

    .line 72
    :cond_2c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getSecondFactor(F)D
    .registers 8
    .param p0, "lux"  # F

    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, "j":I
    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_10

    float-to-double v2, p0

    sget-object v4, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorSecondConfig:[D

    aget-wide v4, v4, v0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_10

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 49
    :cond_10
    if-lez v0, :cond_46

    .line 50
    if-ne v0, v1, :cond_1b

    sget-object v1, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorSecondConfig:[D

    const/16 v2, 0xb

    aget-wide v1, v1, v2

    goto :goto_44

    .line 53
    :cond_1b
    float-to-double v1, p0

    sget-object v3, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorSecondConfig:[D

    add-int/lit8 v4, v0, -0x1

    aget-wide v3, v3, v4

    sub-double/2addr v1, v3

    sget-object v3, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorSecondConfig:[D

    aget-wide v3, v3, v0

    sget-object v5, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorSecondConfig:[D

    add-int/lit8 v6, v0, -0x1

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    div-double/2addr v1, v3

    sget-object v3, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorSecondConfig:[D

    add-int/lit8 v4, v0, 0x6

    aget-wide v3, v3, v4

    sget-object v5, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorSecondConfig:[D

    add-int/lit8 v6, v0, 0x5

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    sget-object v3, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorSecondConfig:[D

    add-int/lit8 v4, v0, 0x5

    aget-wide v3, v3, v4

    add-double/2addr v1, v3

    :goto_44
    nop

    .local v1, "secondFactor":D
    goto :goto_4a

    .line 55
    .end local v1  # "secondFactor":D
    :cond_46
    sget-object v2, Lcom/android/server/display/RefactorBrightnessUtil;->mFactorSecondConfig:[D

    aget-wide v1, v2, v1

    .line 57
    .restart local v1  # "secondFactor":D
    :goto_4a
    return-wide v1
.end method

.method public static logicalBrightnessToSlider(F)F
    .registers 8
    .param p0, "logicalBrightness"  # F

    .line 187
    const/16 v0, 0x65

    new-array v0, v0, [F

    fill-array-data v0, :array_42

    .line 212
    .local v0, "logical_brightness_set":[F
    const/high16 v1, 0x3f800000  # 1.0f

    .line 213
    .local v1, "sliderValue":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_30

    .line 214
    aget v3, v0, v2

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_2d

    add-int/lit8 v3, v2, 0x1

    aget v3, v0, v3

    cmpg-float v3, p0, v3

    if-gtz v3, :cond_2d

    .line 216
    int-to-float v3, v2

    aget v4, v0, v2

    sub-float v4, p0, v4

    add-int/lit8 v5, v2, 0x1

    aget v5, v0, v5

    aget v6, v0, v2

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    add-float v1, v3, v4

    .line 218
    goto :goto_30

    .line 213
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 221
    .end local v2  # "i":I
    :cond_30
    :goto_30
    const/high16 v2, -0x40800000  # -1.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_3e

    .line 222
    const-string v2, "RefactorBrightnessUtil"

    const-string v3, "Input error: _LogicalBrightnessToDisplaySliderInternal"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 224
    :cond_3e
    const/high16 v2, 0x42c80000  # 100.0f

    div-float/2addr v1, v2

    .line 226
    :goto_41
    return v1

    :array_42
    .array-data 4
        0x3f800000  # 1.0f
        0x3f8a3d04
        0x3f95c27f  # 1.169998f
        0x3fa1475a
        0x3faccc9f  # 1.3499945f
        0x3fb99980  # 1.449997f
        0x3fc66602
        0x3fd33344  # 1.650002f
        0x3fe14776  # 1.7599933f
        0x3ff0a39d  # 1.8799931f
        0x3ffeb7a2
        0x4007addb
        0x4010a37d
        0x401cccb1  # 2.4499934f
        0x402d70fa
        0x40429139
        0x405eb8a8
        0x4081997e
        0x4098f5ba  # 4.779996f
        0x40b8522f
        0x40e3d7d0
        0x410eb911
        0x4132b7f5
        0x415d49a8
        0x41870e88
        0x41a23e42
        0x41c014b0
        0x41e03dd3
        0x42015c33
        0x42139968
        0x4226cce5  # 41.700092f
        0x423ae121
        0x424fb892
        0x42653d1e
        0x427b696e
        0x4288d887
        0x42949007
        0x42a0479c
        0x42ac23f5
        0x42b8149d
        0x42c40f7e
        0x42d00f1f
        0x42dc0522
        0x42e7e19b
        0x42f3a422
        0x42ff3877
        0x43054a4b
        0x430ad996
        0x43104533
        0x431582a9
        0x431affdb  # 154.99944f
        0x4326d79f
        0x4332e9f5
        0x433f3b63
        0x434bcde8
        0x4358a243
        0x4365b687
        0x43730eb5
        0x438057ac
        0x438745f9
        0x438e5955
        0x439590ab
        0x439ce933
        0x43a46721
        0x43ac0868
        0x43b3cdfa
        0x43bbb5ab
        0x43c3c3d8
        0x43cbf8c1
        0x43d45286
        0x43dccd8b
        0x43e56f68
        0x43ee3765
        0x43f7241b
        0x44001c59
        0x4404b445
        0x440960ae
        0x440e1ea2
        0x4412ee57
        0x4417cf3a
        0x441cc1cc
        0x4421c3ae
        0x4426d66b
        0x442bf815
        0x44312982
        0x4436689b
        0x443bb596
        0x44410eb6
        0x44467473
        0x444be412
        0x44515e29
        0x4456e137
        0x445c6b60
        0x4461fb0c
        0x44678fba
        0x446d26ed
        0x4472be7a
        0x447855d7
        0x447dea33
        0x4481bc3c
        0x44848000  # 1060.0f
    .end array-data
.end method

.method public static logicalBrtToPerceptual(D)D
    .registers 8
    .param p0, "logicalBrt"  # D

    .line 85
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    sub-double/2addr v0, v4

    const-wide v4, 0x4090900000000000L  # 1060.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sub-double/2addr v4, v2

    div-double/2addr v0, v4

    return-wide v0
.end method

.method public static perceptualToLogicalBrt(D)D
    .registers 8
    .param p0, "perceptual"  # D

    .line 90
    const-wide v0, 0x4090900000000000L  # 1060.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    sub-double/2addr v0, v4

    mul-double/2addr v0, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sliderToLogicalBrightness(F)F
    .registers 7
    .param p0, "valSlider"  # F

    .line 148
    const/16 v0, 0x65

    new-array v0, v0, [F

    fill-array-data v0, :array_3a

    .line 173
    .local v0, "logical_brightness_set":[F
    const/4 v1, 0x0

    .line 174
    .local v1, "res":F
    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    const/high16 v3, 0x3f800000  # 1.0f

    if-ltz v2, :cond_28

    cmpg-float v2, p0, v3

    if-gez v2, :cond_28

    .line 175
    const/high16 v2, 0x42c80000  # 100.0f

    mul-float v3, p0, v2

    float-to-int v3, v3

    .line 176
    .local v3, "slider":I
    add-int/lit8 v4, v3, 0x1

    aget v4, v0, v4

    aget v5, v0, v3

    sub-float/2addr v4, v5

    mul-float/2addr v2, p0

    int-to-float v5, v3

    sub-float/2addr v2, v5

    mul-float/2addr v4, v2

    aget v2, v0, v3

    add-float v1, v4, v2

    .line 178
    .end local v3  # "slider":I
    goto :goto_39

    :cond_28
    cmpl-float v2, p0, v3

    if-nez v2, :cond_32

    .line 179
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget v1, v0, v2

    goto :goto_39

    .line 181
    :cond_32
    const-string v2, "RefactorBrightnessUtil"

    const-string v3, "Input error: _DisplaySliderToLogicalBrightnessInternal"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_39
    return v1

    :array_3a
    .array-data 4
        0x3f800000  # 1.0f
        0x3f8a3d04
        0x3f95c27f  # 1.169998f
        0x3fa1475a
        0x3faccc9f  # 1.3499945f
        0x3fb99980  # 1.449997f
        0x3fc66602
        0x3fd33344  # 1.650002f
        0x3fe14776  # 1.7599933f
        0x3ff0a39d  # 1.8799931f
        0x3ffeb7a2
        0x4007addb
        0x4010a37d
        0x401cccb1  # 2.4499934f
        0x402d70fa
        0x40429139
        0x405eb8a8
        0x4081997e
        0x4098f5ba  # 4.779996f
        0x40b8522f
        0x40e3d7d0
        0x410eb911
        0x4132b7f5
        0x415d49a8
        0x41870e88
        0x41a23e42
        0x41c014b0
        0x41e03dd3
        0x42015c33
        0x42139968
        0x4226cce5  # 41.700092f
        0x423ae121
        0x424fb892
        0x42653d1e
        0x427b696e
        0x4288d887
        0x42949007
        0x42a0479c
        0x42ac23f5
        0x42b8149d
        0x42c40f7e
        0x42d00f1f
        0x42dc0522
        0x42e7e19b
        0x42f3a422
        0x42ff3877
        0x43054a4b
        0x430ad996
        0x43104533
        0x431582a9
        0x431affdb  # 154.99944f
        0x4326d79f
        0x4332e9f5
        0x433f3b63
        0x434bcde8
        0x4358a243
        0x4365b687
        0x43730eb5
        0x438057ac
        0x438745f9
        0x438e5955
        0x439590ab
        0x439ce933
        0x43a46721
        0x43ac0868
        0x43b3cdfa
        0x43bbb5ab
        0x43c3c3d8
        0x43cbf8c1
        0x43d45286
        0x43dccd8b
        0x43e56f68
        0x43ee3765
        0x43f7241b
        0x44001c59
        0x4404b445
        0x440960ae
        0x440e1ea2
        0x4412ee57
        0x4417cf3a
        0x441cc1cc
        0x4421c3ae
        0x4426d66b
        0x442bf815
        0x44312982
        0x4436689b
        0x443bb596
        0x44410eb6
        0x44467473
        0x444be412
        0x44515e29
        0x4456e137
        0x445c6b60
        0x4461fb0c
        0x44678fba
        0x446d26ed
        0x4472be7a
        0x447855d7
        0x447dea33
        0x4481bc3c
        0x44848000  # 1060.0f
    .end array-data
.end method
