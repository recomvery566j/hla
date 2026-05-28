# classes.dex

.class public Lcom/android/server/display/BrightnessMappingStrategyImpl;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategyImpl.java"

# interfaces
.implements Lcom/android/server/display/BrightnessMappingStrategyStub;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BrightnessMappingStrategyImpl"


# instance fields
.field private final IS_INTERNAL_BUILD:Z

.field private final IS_SUPPORT_AUTOBRIGHTNESS_BY_APPLICATION_CATEGORY:Z

.field private mBrightnessCurve:Lcom/android/server/display/BrightnessCurve;

.field private sUnadjustedBrightness:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategyImpl;->sUnadjustedBrightness:F

    .line 23
    nop

    .line 24
    const-string/jumbo v0, "support_autobrightness_by_application_category"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategyImpl;->IS_SUPPORT_AUTOBRIGHTNESS_BY_APPLICATION_CATEGORY:Z

    .line 25
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategyImpl;->IS_INTERNAL_BUILD:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 101
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategyImpl;->mBrightnessCurve:Lcom/android/server/display/BrightnessCurve;

    if-eqz v0, :cond_9

    .line 102
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategyImpl;->mBrightnessCurve:Lcom/android/server/display/BrightnessCurve;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessCurve;->dump(Ljava/io/PrintWriter;)V

    .line 104
    :cond_9
    return-void
.end method

.method public getMaxScreenNit()F
    .registers 3

    .line 31
    nop

    .line 32
    const-string/jumbo v0, "persist.vendor.max.brightness"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getMiuiMapperInstance(Landroid/hardware/display/BrightnessConfiguration;[F[FF)Lcom/android/server/display/BrightnessMappingStrategy;
    .registers 6
    .param p1, "build"  # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "nitsRange"  # [F
    .param p3, "brightnessRange"  # [F
    .param p4, "autoBrightnessAdjustmentMaxGamma"  # F

    .line 72
    new-instance v0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[FF)V

    return-object v0
.end method

.method public initMiuiCurve(Landroid/hardware/display/BrightnessConfiguration;Landroid/util/Spline;Landroid/util/Spline;)V
    .registers 5
    .param p1, "defaultConfig"  # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "nitsToBrightnessSpline"  # Landroid/util/Spline;
    .param p3, "brightnessToNitsSpline"  # Landroid/util/Spline;

    .line 89
    new-instance v0, Lcom/android/server/display/BrightnessCurve;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/display/BrightnessCurve;-><init>(Landroid/hardware/display/BrightnessConfiguration;Landroid/util/Spline;Landroid/util/Spline;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategyImpl;->mBrightnessCurve:Lcom/android/server/display/BrightnessCurve;

    .line 91
    return-void
.end method

.method public isSupportAutobrightnessByApplicationCategory()Z
    .registers 2

    .line 65
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategyImpl;->IS_SUPPORT_AUTOBRIGHTNESS_BY_APPLICATION_CATEGORY:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategyImpl;->IS_INTERNAL_BUILD:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public smoothNewCurve([F[FI)Z
    .registers 8
    .param p1, "lux"  # [F
    .param p2, "brightness"  # [F
    .param p3, "idx"  # I

    .line 50
    add-int/lit8 v0, p3, 0x1

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_1e

    .line 51
    aget v1, p2, v0

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategyImpl;->sUnadjustedBrightness:F

    aget v3, p2, p3

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 52
    aget v1, p2, v0

    add-int/lit8 v2, v0, -0x1

    aget v2, p2, v2

    invoke-static {v1, v2}, Landroid/util/MathUtils;->max(FF)F

    move-result v1

    aput v1, p2, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 54
    .end local v0  # "i":I
    :cond_1e
    add-int/lit8 v0, p3, -0x1

    .restart local v0  # "i":I
    :goto_20
    if-ltz v0, :cond_41

    .line 55
    aget v1, p2, v0

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategyImpl;->sUnadjustedBrightness:F

    aget v3, p2, p3

    sub-float/2addr v2, v3

    aget v3, p2, v0

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategyImpl;->sUnadjustedBrightness:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 57
    aget v1, p2, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p2, v2

    invoke-static {v1, v2}, Landroid/util/MathUtils;->min(FF)F

    move-result v1

    aput v1, p2, v0

    .line 54
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 60
    .end local v0  # "i":I
    :cond_41
    const/4 v0, 0x1

    return v0
.end method

.method public smoothNewCurveV2([F[FIZ)Landroid/util/Pair;
    .registers 6
    .param p1, "lux"  # [F
    .param p2, "brightness"  # [F
    .param p3, "idx"  # I
    .param p4, "curveV2Enable"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FIZ)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 78
    if-eqz p4, :cond_15

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategyImpl;->mBrightnessCurve:Lcom/android/server/display/BrightnessCurve;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategyImpl;->mBrightnessCurve:Lcom/android/server/display/BrightnessCurve;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessCurve;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 79
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategyImpl;->mBrightnessCurve:Lcom/android/server/display/BrightnessCurve;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/BrightnessCurve;->smoothNewCurveV2([F[FI)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 81
    :cond_15
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategyImpl;->smoothNewCurve([F[FI)Z

    .line 82
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public updateSplineConfig(Landroid/hardware/display/BrightnessConfiguration;Landroid/util/Spline;Landroid/util/Spline;)V
    .registers 5
    .param p1, "config"  # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "nitsToBrightnessSpline"  # Landroid/util/Spline;
    .param p3, "brightnessToNitsSpline"  # Landroid/util/Spline;

    .line 96
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategyImpl;->mBrightnessCurve:Lcom/android/server/display/BrightnessCurve;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/BrightnessCurve;->updateSplineConfig(Landroid/hardware/display/BrightnessConfiguration;Landroid/util/Spline;Landroid/util/Spline;)V

    .line 97
    return-void
.end method

.method public updateUnadjustedBrightness(FFF)V
    .registers 4
    .param p1, "lux"  # F
    .param p2, "brightness"  # F
    .param p3, "unadjustedbrightness"  # F

    .line 41
    iput p3, p0, Lcom/android/server/display/BrightnessMappingStrategyImpl;->sUnadjustedBrightness:F

    .line 42
    return-void
.end method
