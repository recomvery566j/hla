# classes.dex

.class public Lcom/android/server/display/BrightnessRangeControllerImpl;
.super Ljava/lang/Object;
.source "BrightnessRangeControllerImpl.java"

# interfaces
.implements Lcom/android/server/display/BrightnessRangeControllerStub;


# static fields
.field private static final KEY_SUPPORT_DYNAMIC_BRIGHTNESS_RANGE:Ljava/lang/String; = "support_dynamic_brightness_range"


# instance fields
.field private mAmbientBoundary:[F

.field private mAmbientLux:F

.field private mAutoBrightnessEnabled:Z

.field private mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field private mDynamicMaxBrightnessSpline:Landroid/util/Spline;

.field private mDynamicMaxNit:[F

.field private mMaxBrightness:F

.field private mSupportDynamicBrightnessRange:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mAmbientLux:F

    .line 23
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mMaxBrightness:F

    return-void
.end method

.method private getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 6
    .param p1, "array"  # Landroid/content/res/TypedArray;

    .line 83
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 84
    .local v0, "N":I
    new-array v1, v0, [F

    .line 85
    .local v1, "vals":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_14

    .line 86
    const/high16 v3, -0x40800000  # -1.0f

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 88
    .end local v2  # "i":I
    :cond_14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-object v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 93
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mSupportDynamicBrightnessRange:Z

    if-eqz v0, :cond_71

    .line 94
    const-string v0, "Dynamic brightness range:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mAutoBrightnessEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mMaxBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_DPC:Z

    if-eqz v0, :cond_71

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxBrightnessLimits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mDynamicMaxBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    :cond_71
    return-void
.end method

.method public getCurrentBrightnessMax(Lcom/android/server/display/HighBrightnessModeController;)F
    .registers 3
    .param p1, "hbmController"  # Lcom/android/server/display/HighBrightnessModeController;

    .line 71
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mSupportDynamicBrightnessRange:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mAmbientBoundary:[F

    array-length v0, v0

    if-lez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mAutoBrightnessEnabled:Z

    if-eqz v0, :cond_10

    .line 72
    iget v0, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mMaxBrightness:F

    return v0

    .line 74
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v0

    return v0
.end method

.method public init(Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 4
    .param p1, "config"  # Lcom/android/server/display/DisplayDeviceConfig;

    .line 28
    const-string/jumbo v0, "support_dynamic_brightness_range"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mSupportDynamicBrightnessRange:Z

    .line 30
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mSupportDynamicBrightnessRange:Z

    if-eqz v0, :cond_3c

    .line 31
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110300f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/BrightnessRangeControllerImpl;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mAmbientBoundary:[F

    .line 33
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110300fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/BrightnessRangeControllerImpl;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mDynamicMaxNit:[F

    .line 35
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mAmbientBoundary:[F

    iget-object v1, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mDynamicMaxNit:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mDynamicMaxBrightnessSpline:Landroid/util/Spline;

    .line 37
    iput-object p1, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 39
    :cond_3c
    return-void
.end method

.method public isSupportDynamicRange()Z
    .registers 2

    .line 79
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mSupportDynamicBrightnessRange:Z

    return v0
.end method

.method public onAmbientLuxChange(F)Z
    .registers 3
    .param p1, "ambientLux"  # F

    .line 42
    iput p1, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mAmbientLux:F

    .line 43
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessRangeControllerImpl;->recalculateMaxBrightness()Z

    move-result v0

    return v0
.end method

.method public recalculateMaxBrightness()Z
    .registers 6

    .line 56
    const/high16 v0, 0x3f800000  # 1.0f

    .line 57
    .local v0, "foundMaxBrightness":F
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mSupportDynamicBrightnessRange:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mAmbientBoundary:[F

    array-length v1, v1

    if-lez v1, :cond_2c

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mAutoBrightnessEnabled:Z

    if-eqz v1, :cond_2c

    .line 58
    iget v1, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mAmbientLux:F

    iget-object v3, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mAmbientBoundary:[F

    iget-object v4, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mAmbientBoundary:[F

    array-length v4, v4

    sub-int/2addr v4, v2

    aget v3, v3, v4

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2c

    .line 59
    iget-object v1, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v3, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mDynamicMaxBrightnessSpline:Landroid/util/Spline;

    iget v4, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mAmbientLux:F

    .line 60
    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    .line 59
    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v0

    .line 63
    :cond_2c
    iget v1, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mMaxBrightness:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_35

    .line 64
    iput v0, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mMaxBrightness:F

    .line 65
    return v2

    .line 67
    :cond_35
    const/4 v1, 0x0

    return v1
.end method

.method public setAutoBrightnessState(I)Z
    .registers 5
    .param p1, "state"  # I

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    goto :goto_6

    :cond_5
    move v1, v0

    .line 48
    .local v1, "isEnabled":Z
    :goto_6
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mAutoBrightnessEnabled:Z

    if-eq v1, v2, :cond_11

    .line 49
    iput-boolean v1, p0, Lcom/android/server/display/BrightnessRangeControllerImpl;->mAutoBrightnessEnabled:Z

    .line 50
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessRangeControllerImpl;->recalculateMaxBrightness()Z

    move-result v0

    return v0

    .line 52
    :cond_11
    return v0
.end method
