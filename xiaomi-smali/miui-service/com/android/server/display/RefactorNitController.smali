# classes.dex

.class public Lcom/android/server/display/RefactorNitController;
.super Ljava/lang/Object;
.source "RefactorNitController.java"


# static fields
.field private static final AVATAR_USER_SERIAL:I = 0xa

.field private static final DEFAULT_LOGICAL_NIT:F = -1.0f

.field private static final DEFAULT_USER_SERIAL:I = 0x0

.field private static final FIRST_FACTOR_WHEN_DISABLE_BRIGHTNESS:D = 1.0

.field private static final PREFS_REFACTOR_BRIGHTNESS_FILE:Ljava/lang/String; = "refactor_brightness.xml"

.field private static final REFACTOR_LOGICAL_NIT:Ljava/lang/String; = "refactor_logical_nit"

.field private static final REFACTOR_LOGICAL_NIT_AVATAR:Ljava/lang/String; = "refactor_logical_nit_avatar"

.field private static final SECOND_FACTOR_WHEN_DISABLE_BRIGHTNESS:D = 0.8019999861717224


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field private mDisplayId:I

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mGoodCurve:Landroid/util/Spline;

.field private mGoodCurveLuxPoints:[F

.field private mGoodCurveNitPoints:[F

.field private mGoodLogicalCurve:[F

.field private mGoodLuxToLogicalNit:[D

.field public mHighLuxPoints:[F

.field private mHighLuxScalingFactorCurve:Landroid/util/Spline;

.field private mHighLuxScalingFactorPoints:[F

.field private mIsBrightening:Z

.field private mIsHaveGoodCurve:Z

.field private mLogicalCurve:[F

.field private mLogicalData:[F

.field private volatile mLogicalNit:F

.field private mLuxToLogicalNit:[D

.field private mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

.field private mPerUserLogicalNit:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRefactorBrightnessPreferences:Landroid/content/SharedPreferences;

.field private mUseAutoBrightness:Z

.field private mUserLogicalNit:F

.field private mUserLux:F

.field private mUserSerial:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;ILcom/android/server/display/ManualMaxBrightnessController;)V
    .registers 10
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "deviceConfig"  # Lcom/android/server/display/DisplayDeviceConfig;
    .param p3, "displayId"  # I
    .param p4, "manualMaxBrightnessController"  # Lcom/android/server/display/ManualMaxBrightnessController;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "RefactorNitController"

    iput-object v0, p0, Lcom/android/server/display/RefactorNitController;->TAG:Ljava/lang/String;

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [D

    fill-array-data v0, :array_d6

    iput-object v0, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    .line 43
    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_fe

    iput-object v1, p0, Lcom/android/server/display/RefactorNitController;->mGoodCurveLuxPoints:[F

    .line 44
    new-array v1, v0, [F

    fill-array-data v1, :array_10a

    iput-object v1, p0, Lcom/android/server/display/RefactorNitController;->mGoodCurveNitPoints:[F

    .line 45
    new-array v1, v0, [F

    fill-array-data v1, :array_116

    iput-object v1, p0, Lcom/android/server/display/RefactorNitController;->mHighLuxPoints:[F

    .line 46
    new-array v0, v0, [F

    fill-array-data v0, :array_122

    iput-object v0, p0, Lcom/android/server/display/RefactorNitController;->mHighLuxScalingFactorPoints:[F

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/RefactorNitController;->mUserSerial:I

    .line 67
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/RefactorNitController;->mPerUserLogicalNit:Landroid/util/SparseArray;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/RefactorNitController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/RefactorNitController;->TAG:Ljava/lang/String;

    .line 72
    iput p3, p0, Lcom/android/server/display/RefactorNitController;->mDisplayId:I

    .line 73
    iput-object p1, p0, Lcom/android/server/display/RefactorNitController;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/server/display/RefactorNitController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 75
    invoke-virtual {p0}, Lcom/android/server/display/RefactorNitController;->resetDefaultSpline()V

    .line 76
    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->mGoodCurveLuxPoints:[F

    iget-object v2, p0, Lcom/android/server/display/RefactorNitController;->mGoodCurveNitPoints:[F

    invoke-static {v1, v2}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/RefactorNitController;->mGoodCurve:Landroid/util/Spline;

    .line 77
    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->mHighLuxPoints:[F

    iget-object v2, p0, Lcom/android/server/display/RefactorNitController;->mHighLuxScalingFactorPoints:[F

    invoke-static {v1, v2}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/RefactorNitController;->mHighLuxScalingFactorCurve:Landroid/util/Spline;

    .line 79
    iput-object p4, p0, Lcom/android/server/display/RefactorNitController;->mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

    .line 80
    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    .line 81
    invoke-direct {p0}, Lcom/android/server/display/RefactorNitController;->getSystemDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "refactor_brightness.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/RefactorNitController;->mRefactorBrightnessPreferences:Landroid/content/SharedPreferences;

    .line 83
    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->mRefactorBrightnessPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "refactor_logical_nit"

    const/high16 v3, -0x40800000  # -1.0f

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/RefactorNitController;->mLogicalNit:F

    .line 85
    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->mPerUserLogicalNit:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/display/RefactorNitController;->mLogicalNit:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->mPerUserLogicalNit:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->mRefactorBrightnessPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "refactor_logical_nit_avatar"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RefactorNitController mLogicalNit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/RefactorNitController;->mLogicalNit:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    :array_d6
    .array-data 8
        0x0
        0x3ff0000000000000L  # 1.0
        0x403e000000000000L  # 30.0
        0x4060e00000000000L  # 135.0
        0x0
        0x4082c00000000000L  # 600.0
        0x406050d7a0000000L  # 130.5263214111328
        0x406b800000000000L  # 220.0
        0x3fc86fb4c0000000L  # 0.1909089982509613
    .end array-data

    :array_fe
    .array-data 4
        0x0
        0x41f00000  # 30.0f
        0x447a0000  # 1000.0f
        0x459c4000  # 5000.0f
    .end array-data

    :array_10a
    .array-data 4
        0x42480000  # 50.0f
        0x43960000  # 300.0f
        0x44098000  # 550.0f
        0x44848000  # 1060.0f
    .end array-data

    :array_116
    .array-data 4
        0x45fa0000  # 8000.0f
        0x4684d000  # 17000.0f
        0x47115000  # 37200.0f
        0x478ca000  # 72000.0f
    .end array-data

    :array_122
    .array-data 4
        0x3f800000  # 1.0f
        0x4003521e
        0x4003521e
        0x4053521e
    .end array-data
.end method

.method private getLogicalBrt(F)D
    .registers 9
    .param p1, "lux"  # F

    .line 193
    float-to-double v0, p1

    iget-object v2, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    const/4 v3, 0x2

    aget-wide v4, v2, v3

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_42

    .line 194
    float-to-double v0, p1

    iget-object v2, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    const/4 v3, 0x5

    aget-wide v4, v2, v3

    cmpl-double v0, v0, v4

    const/4 v1, 0x7

    if-ltz v0, :cond_26

    .line 195
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    const/16 v2, 0x8

    aget-wide v4, v0, v2

    .line 196
    .local v4, "a":D
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    aget-wide v2, v2, v3

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .local v0, "b":D
    goto :goto_5e

    .line 198
    .end local v0  # "b":D
    .end local v4  # "a":D
    :cond_26
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    const/4 v4, 0x6

    aget-wide v5, v2, v4

    sub-double/2addr v0, v5

    iget-object v2, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    aget-wide v2, v2, v3

    iget-object v5, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    const/4 v6, 0x4

    aget-wide v5, v5, v6

    sub-double/2addr v2, v5

    div-double/2addr v0, v2

    .line 199
    .local v0, "a":D
    iget-object v2, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    aget-wide v2, v2, v4

    move-wide v4, v0

    move-wide v0, v2

    .local v2, "b":D
    goto :goto_5e

    .line 202
    .end local v0  # "a":D
    .end local v2  # "b":D
    :cond_42
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    const/4 v4, 0x1

    aget-wide v5, v2, v4

    sub-double/2addr v0, v5

    iget-object v2, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    aget-wide v2, v2, v3

    iget-object v5, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    const/4 v6, 0x0

    aget-wide v5, v5, v6

    sub-double/2addr v2, v5

    div-double/2addr v0, v2

    .line 203
    .restart local v0  # "a":D
    iget-object v2, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    aget-wide v2, v2, v4

    move-wide v4, v0

    move-wide v0, v2

    .line 205
    .local v0, "b":D
    .restart local v4  # "a":D
    :goto_5e
    float-to-double v2, p1

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    double-to-float v2, v2

    const v3, 0x44848000  # 1060.0f

    invoke-static {v2, v3}, Landroid/util/MathUtils;->min(FF)F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v2, v3}, Landroid/util/MathUtils;->max(FF)F

    move-result v2

    float-to-double v2, v2

    return-wide v2
.end method

.method private getSystemDir()Ljava/io/File;
    .registers 4

    .line 92
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private saveLogicalNitToPreferences(FZ)V
    .registers 6
    .param p1, "logicalNit"  # F
    .param p2, "isAutomatic"  # Z

    .line 489
    iget v0, p0, Lcom/android/server/display/RefactorNitController;->mLogicalNit:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_89

    .line 490
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ManualMaxBrightnessController;->updateSliderState(F)V

    .line 491
    iget v0, p0, Lcom/android/server/display/RefactorNitController;->mUserSerial:I

    if-nez v0, :cond_20

    .line 492
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->mRefactorBrightnessPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "refactor_logical_nit"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 493
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_30

    .line 495
    :cond_20
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->mRefactorBrightnessPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "refactor_logical_nit_avatar"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 496
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 498
    :goto_30
    if-eqz p2, :cond_3f

    .line 499
    iget v0, p0, Lcom/android/server/display/RefactorNitController;->mLogicalNit:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3c

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RefactorNitController;->mIsBrightening:Z

    goto :goto_3f

    .line 502
    :cond_3c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/RefactorNitController;->mIsBrightening:Z

    .line 505
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->mPerUserLogicalNit:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/display/RefactorNitController;->mUserSerial:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 506
    iput p1, p0, Lcom/android/server/display/RefactorNitController;->mLogicalNit:F

    .line 507
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveLogicalNitToPreferences mLogicalNit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/RefactorNitController;->mLogicalNit:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUserSerial:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/RefactorNitController;->mUserSerial:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAutomatic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsBrightening:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/RefactorNitController;->mIsBrightening:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_89
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 546
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 547
    const-string v0, "Refactor Nit Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/RefactorNitController;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsHaveGoodCurve="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/RefactorNitController;->mIsHaveGoodCurve:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/RefactorNitController;->mUserLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserLogicalNit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/RefactorNitController;->mUserLogicalNit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLuxToLogicalNit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mGoodLuxToLogicalNit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->mGoodLuxToLogicalNit:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method public fitCurveToReferencePoints([F[FF)F
    .registers 22
    .param p1, "data"  # [F
    .param p2, "curve"  # [F
    .param p3, "val"  # F

    .line 223
    const v0, 0x3c23d70a  # 0.01f

    .line 226
    .local v0, "result":F
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x7

    const/4 v6, 0x4

    const/4 v7, 0x6

    const/4 v8, 0x3

    const/4 v9, 0x5

    const/4 v10, 0x2

    if-eqz v1, :cond_130

    .line 227
    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v1, p3, v1

    if-nez v1, :cond_280

    .line 228
    aget v1, p1, v6

    aget v11, p2, v10

    cmpg-float v1, v1, v11

    const v11, 0x43968000  # 301.0f

    const-wide v12, 0x4072d00000000000L  # 301.0

    if-gez v1, :cond_cd

    .line 229
    aget v0, p1, v6

    .line 230
    aget v1, p2, v10

    cmpg-float v1, v0, v1

    if-gez v1, :cond_280

    .line 231
    aget v1, p1, v7

    aget v2, p1, v4

    aget v14, p1, v9

    aget v15, p2, v10

    sub-float/2addr v14, v15

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    .line 232
    .local v1, "i":F
    :goto_3b
    aget v2, p1, v7

    aget v14, p1, v3

    aget v15, p1, v9

    aget v16, p2, v10

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    sub-float/2addr v2, v14

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_74

    .line 234
    aget v2, p1, v8

    sub-float v2, v1, v2

    aget v14, p2, v10

    aget v15, p1, v6

    sub-float/2addr v14, v15

    div-float/2addr v2, v14

    .line 235
    .local v2, "v16":F
    aget v14, p1, v7

    sub-float/2addr v14, v1

    aget v15, p1, v9

    aget v16, p2, v10

    sub-float v15, v15, v16

    div-float/2addr v14, v15

    cmpg-float v14, v2, v14

    if-lez v14, :cond_74

    aget v14, p1, v10

    cmpg-float v14, v2, v14

    if-gez v14, :cond_6a

    .line 237
    goto :goto_74

    .line 233
    :cond_6a
    float-to-double v14, v1

    const-wide v16, 0x3f847ae147ae147bL  # 0.01

    sub-double v14, v14, v16

    double-to-float v1, v14

    goto :goto_3b

    .line 240
    .end local v2  # "v16":F
    :cond_74
    :goto_74
    aget v2, p1, v7

    sub-float/2addr v2, v1

    aget v14, p1, v9

    aget v15, p2, v10

    sub-float/2addr v14, v15

    div-float/2addr v2, v14

    .line 241
    .local v2, "v14":F
    aget v14, p1, v7

    aget v15, p1, v9

    aget v16, p2, v10

    sub-float v15, v15, v16

    mul-float/2addr v15, v2

    sub-float/2addr v14, v15

    aput v14, p2, v8

    .line 242
    aget v14, p1, v9

    float-to-double v14, v14

    cmpg-double v12, v14, v12

    if-gez v12, :cond_93

    .line 243
    aput v11, p2, v9

    goto :goto_97

    .line 245
    :cond_93
    aget v11, p1, v9

    aput v11, p2, v9

    .line 247
    :goto_97
    aget v11, p1, v7

    aget v12, p2, v9

    aget v13, p1, v9

    sub-float/2addr v12, v13

    mul-float/2addr v12, v2

    add-float/2addr v11, v12

    aput v11, p2, v5

    .line 248
    aget v5, p2, v5

    aget v9, p2, v9

    mul-float/2addr v9, v2

    sub-float/2addr v5, v9

    aput v5, p2, v7

    .line 249
    aget v5, p2, v8

    aget v7, p2, v8

    aget v8, p1, v8

    sub-float/2addr v7, v8

    aget v8, p2, v10

    aget v6, p1, v6

    sub-float/2addr v8, v6

    div-float/2addr v7, v8

    .line 250
    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aget v7, p1, v10

    .line 249
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    aget v7, p2, v10

    aget v3, p2, v3

    sub-float/2addr v7, v3

    mul-float/2addr v6, v7

    sub-float v0, v5, v6

    .line 252
    aput v0, p2, v4

    goto/16 :goto_280

    .line 255
    .end local v1  # "i":F
    .end local v2  # "v14":F
    :cond_cd
    aget v1, p1, v7

    aget v14, p1, v8

    sub-float/2addr v1, v14

    aget v14, p1, v9

    aget v6, p1, v6

    sub-float/2addr v14, v6

    div-float/2addr v1, v14

    aget v6, p1, v4

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aget v6, p1, v3

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 257
    .local v1, "v13":F
    aget v6, p1, v9

    float-to-double v14, v6

    cmpg-double v6, v14, v12

    if-gez v6, :cond_ee

    .line 258
    aput v11, p2, v9

    goto :goto_f2

    .line 260
    :cond_ee
    aget v6, p1, v9

    aput v6, p2, v9

    .line 262
    :goto_f2
    aget v6, p1, v7

    aget v11, p2, v9

    aget v12, p1, v9

    sub-float/2addr v11, v12

    mul-float/2addr v11, v1

    add-float/2addr v6, v11

    aput v6, p2, v5

    .line 263
    aget v6, p2, v5

    aget v11, p2, v9

    mul-float/2addr v11, v1

    sub-float/2addr v6, v11

    aput v6, p2, v7

    .line 264
    aget v5, p2, v5

    aget v6, p2, v9

    aget v7, p2, v10

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    aput v5, p2, v8

    .line 265
    aget v5, p2, v8

    aget v6, p1, v10

    aget v7, p2, v8

    aget v2, p1, v2

    sub-float/2addr v7, v2

    aget v2, p2, v10

    aget v3, p2, v3

    sub-float/2addr v2, v3

    div-float/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aget v3, p2, v10

    mul-float/2addr v2, v3

    sub-float v0, v5, v2

    .line 267
    aput v0, p2, v4

    goto/16 :goto_280

    .line 270
    .end local v1  # "v13":F
    :cond_130
    aget v1, p1, v6

    aget v11, p2, v10

    cmpl-float v1, v1, v11

    if-nez v1, :cond_186

    .line 271
    aget v1, p1, v8

    aput v1, p2, v8

    .line 272
    aget v1, p1, v7

    aget v11, p2, v8

    sub-float/2addr v1, v11

    aget v11, p1, v9

    aget v12, p2, v10

    sub-float/2addr v11, v12

    div-float/2addr v1, v11

    aget v11, p1, v4

    invoke-static {v1, v11}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aget v11, p1, v3

    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 273
    .local v1, "v5":F
    aget v11, p2, v8

    aget v12, p2, v9

    aget v13, p2, v10

    sub-float/2addr v12, v13

    mul-float/2addr v12, v1

    add-float/2addr v11, v12

    aput v11, p2, v5

    .line 274
    aget v5, p2, v5

    aget v9, p2, v9

    mul-float/2addr v9, v1

    sub-float/2addr v5, v9

    aput v5, p2, v7

    .line 275
    aget v5, p1, v8

    aget v7, p1, v10

    aget v8, p1, v8

    aget v2, p1, v2

    sub-float/2addr v8, v2

    aget v2, p2, v10

    aget v3, p2, v3

    sub-float/2addr v2, v3

    div-float/2addr v8, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aget v3, p1, v6

    mul-float/2addr v2, v3

    sub-float v0, v5, v2

    .line 277
    aput v0, p2, v4

    goto/16 :goto_280

    .line 278
    .end local v1  # "v5":F
    :cond_186
    aget v1, p1, v6

    aget v11, p2, v10

    cmpl-float v1, v1, v11

    if-ltz v1, :cond_1e3

    .line 279
    aget v1, p1, v7

    aget v11, p1, v8

    sub-float/2addr v1, v11

    aget v11, p1, v9

    aget v12, p1, v6

    sub-float/2addr v11, v12

    div-float/2addr v1, v11

    aget v11, p1, v4

    invoke-static {v1, v11}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aget v11, p1, v3

    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 280
    .local v1, "v9":F
    aget v11, p1, v8

    aget v12, p2, v9

    aget v6, p1, v6

    sub-float/2addr v12, v6

    mul-float/2addr v12, v1

    add-float/2addr v11, v12

    aput v11, p2, v5

    .line 281
    aget v6, p2, v5

    aget v11, p2, v9

    mul-float/2addr v11, v1

    sub-float/2addr v6, v11

    aput v6, p2, v7

    .line 282
    aget v5, p2, v5

    aget v6, p2, v9

    aget v7, p2, v10

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    aput v5, p2, v8

    .line 283
    aget v5, p2, v8

    aget v6, p1, v10

    aget v7, p2, v8

    aget v2, p1, v2

    sub-float/2addr v7, v2

    aget v2, p2, v10

    aget v3, p2, v3

    sub-float/2addr v2, v3

    div-float/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aget v3, p2, v10

    mul-float/2addr v2, v3

    sub-float v0, v5, v2

    .line 285
    aput v0, p2, v4

    goto/16 :goto_280

    .line 287
    .end local v1  # "v9":F
    :cond_1e3
    aget v1, p1, v10

    .line 288
    .local v1, "v15":F
    aget v11, p1, v8

    .local v11, "j":F
    :goto_1e7
    aget v12, p1, v5

    cmpg-float v12, v11, v12

    if-gez v12, :cond_23c

    .line 289
    aget v12, p1, v8

    sub-float v12, v11, v12

    aget v13, p2, v10

    aget v14, p1, v6

    sub-float/2addr v13, v14

    div-float v1, v12, v13

    .line 290
    aget v12, p1, v4

    cmpl-float v12, v1, v12

    if-lez v12, :cond_237

    .line 291
    aget v12, p1, v7

    sub-float/2addr v12, v11

    aget v13, p1, v9

    aget v14, p2, v10

    sub-float/2addr v13, v14

    div-float/2addr v12, v13

    .line 292
    .local v12, "offset":F
    aget v13, p1, v10

    cmpl-float v13, v1, v13

    if-ltz v13, :cond_210

    .line 293
    aget v1, p1, v10

    .line 294
    goto :goto_23c

    .line 296
    :cond_210
    aget v13, p1, v4

    cmpg-float v13, v12, v13

    if-lez v13, :cond_23c

    cmpl-float v13, v1, v12

    if-ltz v13, :cond_237

    aget v13, p1, v3

    cmpg-float v13, v12, v13

    if-gtz v13, :cond_237

    aget v13, p2, v10

    aget v14, p2, v3

    sub-float/2addr v13, v14

    mul-float/2addr v13, v1

    sub-float v13, v11, v13

    aget v14, p1, v2

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_237

    aget v13, p2, v3

    aget v14, p1, v6

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_237

    .line 299
    goto :goto_23c

    .line 288
    .end local v12  # "offset":F
    :cond_237
    const v12, 0x3c23d70a  # 0.01f

    add-float/2addr v11, v12

    goto :goto_1e7

    .line 303
    :cond_23c
    :goto_23c
    aget v2, p1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 304
    .local v2, "v7":F
    aget v12, p1, v8

    aget v13, p1, v6

    mul-float/2addr v13, v2

    sub-float/2addr v12, v13

    aput v12, p2, v4

    .line 305
    aget v12, p1, v8

    aget v13, p2, v10

    aget v6, p1, v6

    sub-float/2addr v13, v6

    mul-float/2addr v13, v2

    add-float/2addr v12, v13

    aput v12, p2, v8

    .line 306
    aget v6, p1, v7

    aget v12, p2, v8

    sub-float/2addr v6, v12

    aget v12, p1, v9

    aget v13, p2, v10

    sub-float/2addr v12, v13

    div-float/2addr v6, v12

    aget v4, p1, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aget v3, p1, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 307
    .local v3, "v8":F
    aget v4, p2, v8

    aget v6, p2, v9

    aget v8, p2, v10

    sub-float/2addr v6, v8

    mul-float/2addr v6, v3

    add-float/2addr v4, v6

    aput v4, p2, v5

    .line 308
    aget v4, p2, v5

    aget v5, p2, v9

    mul-float/2addr v5, v3

    sub-float v0, v4, v5

    .line 309
    aput v0, p2, v7

    .line 311
    .end local v1  # "v15":F
    .end local v2  # "v7":F
    .end local v3  # "v8":F
    .end local v11  # "j":F
    :cond_280
    :goto_280
    return v0
.end method

.method public getCurrentLogicalNit()F
    .registers 4

    .line 467
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentLogicalNit mLogicalNit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/RefactorNitController;->mLogicalNit:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget v0, p0, Lcom/android/server/display/RefactorNitController;->mLogicalNit:F

    return v0
.end method

.method public getCurrentNit(FFZ)F
    .registers 24
    .param p1, "lux"  # F
    .param p2, "logicalNit"  # F
    .param p3, "isTemporary"  # Z

    .line 147
    move-object/from16 v0, p0

    move/from16 v1, p1

    const-wide/16 v2, 0x0

    .line 149
    .local v2, "gamma":D
    const/4 v4, 0x0

    .line 150
    .local v4, "isFromAutomatic":Z
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2d

    .line 151
    const/4 v4, 0x1

    .line 152
    nop

    .line 153
    iget-object v5, v0, Lcom/android/server/display/RefactorNitController;->mHighLuxPoints:[F

    aget v5, v5, v6

    cmpl-float v5, v1, v5

    if-lez v5, :cond_1d

    iget-object v5, v0, Lcom/android/server/display/RefactorNitController;->mHighLuxPoints:[F

    aget v5, v5, v6

    goto :goto_1e

    :cond_1d
    move v5, v1

    .line 152
    :goto_1e
    invoke-direct {v0, v5}, Lcom/android/server/display/RefactorNitController;->getLogicalBrt(F)D

    move-result-wide v7

    const-wide/high16 v9, 0x4024000000000000L  # 10.0

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-double v7, v7

    div-double/2addr v7, v9

    double-to-float v5, v7

    .local v5, "currentLogical":F
    goto :goto_2f

    .line 155
    .end local v5  # "currentLogical":F
    :cond_2d
    move/from16 v5, p2

    .line 157
    .restart local v5  # "currentLogical":F
    :goto_2f
    if-nez p3, :cond_3f

    iget-boolean v7, v0, Lcom/android/server/display/RefactorNitController;->mUseAutoBrightness:Z

    if-nez v7, :cond_3b

    iget-boolean v7, v0, Lcom/android/server/display/RefactorNitController;->mUseAutoBrightness:Z

    if-nez v7, :cond_3f

    if-nez v4, :cond_3f

    .line 159
    :cond_3b
    const/4 v7, 0x1

    invoke-direct {v0, v5, v7}, Lcom/android/server/display/RefactorNitController;->saveLogicalNitToPreferences(FZ)V

    .line 163
    :cond_3f
    iget-boolean v7, v0, Lcom/android/server/display/RefactorNitController;->mUseAutoBrightness:Z

    if-eqz v7, :cond_68

    .line 165
    iget-object v7, v0, Lcom/android/server/display/RefactorNitController;->mHighLuxPoints:[F

    aget v7, v7, v6

    cmpl-float v7, v1, v7

    if-lez v7, :cond_50

    iget-object v7, v0, Lcom/android/server/display/RefactorNitController;->mHighLuxPoints:[F

    aget v7, v7, v6

    goto :goto_51

    :cond_50
    move v7, v1

    .line 164
    :goto_51
    invoke-static {v7}, Lcom/android/server/display/RefactorBrightnessUtil;->getFirstFactor(F)D

    move-result-wide v7

    .line 167
    .local v7, "firstFactor":D
    iget-object v9, v0, Lcom/android/server/display/RefactorNitController;->mHighLuxPoints:[F

    aget v9, v9, v6

    cmpl-float v9, v1, v9

    if-lez v9, :cond_62

    iget-object v9, v0, Lcom/android/server/display/RefactorNitController;->mHighLuxPoints:[F

    aget v9, v9, v6

    goto :goto_63

    :cond_62
    move v9, v1

    .line 166
    :goto_63
    invoke-static {v9}, Lcom/android/server/display/RefactorBrightnessUtil;->getSecondFactor(F)D

    move-result-wide v9

    .local v9, "secondFactor":D
    goto :goto_74

    .line 169
    .end local v7  # "firstFactor":D
    .end local v9  # "secondFactor":D
    :cond_68
    iget-object v7, v0, Lcom/android/server/display/RefactorNitController;->mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

    invoke-virtual {v7}, Lcom/android/server/display/ManualMaxBrightnessController;->getManualFactorFirst()D

    move-result-wide v7

    .line 170
    .restart local v7  # "firstFactor":D
    iget-object v9, v0, Lcom/android/server/display/RefactorNitController;->mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

    invoke-virtual {v9}, Lcom/android/server/display/ManualMaxBrightnessController;->getManualFactorSecond()D

    move-result-wide v9

    .line 172
    .restart local v9  # "secondFactor":D
    :goto_74
    float-to-double v11, v5

    .line 173
    .local v11, "temp":D
    const/high16 v13, 0x41f00000  # 30.0f

    cmpl-float v14, v5, v13

    if-lez v14, :cond_91

    .line 174
    const-wide v14, 0x4090900000000000L  # 1060.0

    mul-double/2addr v14, v9

    const-wide/high16 v16, 0x403e000000000000L  # 30.0

    sub-double v14, v16, v14

    const-wide v18, -0x3f6fe80000000000L  # -1030.0

    div-double v2, v14, v18

    .line 175
    sub-float/2addr v13, v5

    float-to-double v13, v13

    mul-double/2addr v13, v2

    sub-double v11, v16, v13

    .line 177
    :cond_91
    const-wide/high16 v13, 0x4059000000000000L  # 100.0

    cmpg-double v15, v11, v13

    if-gtz v15, :cond_a8

    .line 178
    const-wide/high16 v15, 0x3ff0000000000000L  # 1.0

    mul-double/2addr v15, v7

    sub-double v15, v13, v15

    const-wide v17, 0x4058c00000000000L  # 99.0

    div-double v2, v15, v17

    .line 179
    sub-double v15, v13, v11

    mul-double/2addr v15, v2

    sub-double v11, v13, v15

    .line 181
    :cond_a8
    iget-object v13, v0, Lcom/android/server/display/RefactorNitController;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "currentNit:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", lux:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", currentLogical:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", firstFactor:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", secondFactor:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v13, v0, Lcom/android/server/display/RefactorNitController;->mHighLuxPoints:[F

    aget v6, v13, v6

    cmpl-float v6, v1, v6

    if-lez v6, :cond_115

    iget-boolean v6, v0, Lcom/android/server/display/RefactorNitController;->mUseAutoBrightness:Z

    if-eqz v6, :cond_115

    .line 184
    iget-object v6, v0, Lcom/android/server/display/RefactorNitController;->mHighLuxScalingFactorCurve:Landroid/util/Spline;

    invoke-virtual {v6, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v6

    .line 185
    .local v6, "scalingFactor":F
    double-to-float v13, v11

    mul-float/2addr v13, v6

    float-to-double v11, v13

    .line 186
    iget-object v13, v0, Lcom/android/server/display/RefactorNitController;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "current lux is > 8000, currentNit:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v6  # "scalingFactor":F
    :cond_115
    double-to-float v6, v11

    return v6
.end method

.method public getCurrentSliderValue()F
    .registers 2

    .line 459
    iget v0, p0, Lcom/android/server/display/RefactorNitController;->mLogicalNit:F

    invoke-static {v0}, Lcom/android/server/display/RefactorBrightnessUtil;->logicalBrightnessToSlider(F)F

    move-result v0

    return v0
.end method

.method public handleOnSwitchUser(I)V
    .registers 6
    .param p1, "userSerial"  # I

    .line 533
    iput p1, p0, Lcom/android/server/display/RefactorNitController;->mUserSerial:I

    .line 534
    const/high16 v0, -0x40800000  # -1.0f

    .line 535
    .local v0, "logicalNit":F
    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->mPerUserLogicalNit:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 536
    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->mPerUserLogicalNit:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 538
    :cond_18
    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_20

    .line 539
    iput v0, p0, Lcom/android/server/display/RefactorNitController;->mLogicalNit:F

    .line 541
    :cond_20
    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleOnSwitchUser mUserSerial:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/RefactorNitController;->mUserSerial:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mLogicalNit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/RefactorNitController;->mLogicalNit:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void
.end method

.method public isBrightening()Z
    .registers 2

    .line 463
    iget-boolean v0, p0, Lcom/android/server/display/RefactorNitController;->mIsBrightening:Z

    return v0
.end method

.method public resetDefaultSpline()V
    .registers 20

    .line 97
    move-object/from16 v0, p0

    const/16 v1, 0x16

    new-array v2, v1, [F

    iput-object v2, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    .line 98
    new-array v1, v1, [F

    iput-object v1, v0, Lcom/android/server/display/RefactorNitController;->mGoodLogicalCurve:[F

    .line 99
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 100
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    const/4 v4, 0x1

    const/high16 v5, 0x40000000  # 2.0f

    aput v5, v1, v4

    .line 101
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    const/high16 v6, 0x41f00000  # 30.0f

    const/4 v7, 0x2

    aput v6, v1, v7

    .line 102
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    const/high16 v6, 0x43070000  # 135.0f

    const/4 v8, 0x3

    aput v6, v1, v8

    .line 103
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    const/4 v6, 0x4

    aput v3, v1, v6

    .line 104
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    const/high16 v9, 0x44160000  # 600.0f

    const/4 v10, 0x5

    aput v9, v1, v10

    .line 105
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    const/high16 v9, 0x435c0000  # 220.0f

    const/4 v11, 0x7

    aput v9, v1, v11

    .line 106
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    iget-object v9, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    aget v9, v9, v11

    iget-object v12, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    aget v12, v12, v10

    iget-object v13, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    aget v13, v13, v11

    iget-object v14, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    aget v14, v14, v8

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    iget-object v13, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    aget v13, v13, v10

    iget-object v14, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    aget v14, v14, v7

    sub-float/2addr v13, v14

    div-float/2addr v12, v13

    sub-float/2addr v9, v12

    const/4 v12, 0x6

    aput v9, v1, v12

    .line 108
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    iget-object v9, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    aget v9, v9, v2

    const/16 v13, 0x8

    aput v9, v1, v13

    .line 109
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    const/16 v9, 0x9

    aput v3, v1, v9

    .line 110
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    iget-object v14, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    aget v14, v14, v10

    const/16 v15, 0xa

    aput v14, v1, v15

    .line 111
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    iget-object v14, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    aget v14, v14, v4

    const/16 v15, 0xb

    aput v14, v1, v15

    .line 112
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    iget-object v14, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    aget v14, v14, v4

    const/16 v15, 0xc

    aput v14, v1, v15

    .line 113
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    iget-object v14, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    aget v14, v14, v11

    const/16 v15, 0xd

    aput v14, v1, v15

    .line 114
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    const/16 v14, 0xe

    aput v3, v1, v14

    .line 115
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    const/16 v14, 0xf

    aput v3, v1, v14

    .line 116
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    const/16 v14, 0x10

    const/high16 v15, -0x40800000  # -1.0f

    aput v15, v1, v14

    .line 117
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    const/16 v14, 0x11

    aput v3, v1, v14

    .line 118
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    const/16 v14, 0x12

    aput v5, v1, v14

    .line 119
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    const/16 v5, 0x13

    const/high16 v14, 0x3f800000  # 1.0f

    aput v14, v1, v5

    .line 120
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    const/16 v5, 0x14

    aput v3, v1, v5

    .line 121
    iget-object v1, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    aget v1, v1, v11

    const v5, 0x44848000  # 1060.0f

    sub-float v1, v5, v1

    move/from16 v16, v3

    iget-object v3, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    aget v3, v3, v10

    const v17, 0x459c4000  # 5000.0f

    sub-float v17, v17, v3

    div-float v1, v1, v17

    .line 122
    .local v1, "val":F
    iget-object v3, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    const/16 v17, 0x15

    aput v1, v3, v17

    .line 123
    iget-object v3, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    move/from16 v18, v4

    iget-object v4, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/display/RefactorNitController;->mGoodLogicalCurve:[F

    .line 125
    new-array v3, v9, [F

    iput-object v3, v0, Lcom/android/server/display/RefactorNitController;->mLogicalData:[F

    .line 126
    iget-object v3, v0, Lcom/android/server/display/RefactorNitController;->mLogicalData:[F

    const v4, 0x3fcbb7e4

    aput v4, v3, v2

    .line 127
    iget-object v3, v0, Lcom/android/server/display/RefactorNitController;->mLogicalData:[F

    const v4, 0x3d826136

    aput v4, v3, v18

    .line 128
    iget-object v3, v0, Lcom/android/server/display/RefactorNitController;->mLogicalData:[F

    const v4, 0x408eeeef

    aput v4, v3, v7

    .line 129
    iget-object v3, v0, Lcom/android/server/display/RefactorNitController;->mLogicalData:[F

    aput v16, v3, v8

    .line 130
    iget-object v3, v0, Lcom/android/server/display/RefactorNitController;->mLogicalData:[F

    aput v16, v3, v6

    .line 131
    iget-object v3, v0, Lcom/android/server/display/RefactorNitController;->mLogicalData:[F

    aput v16, v3, v10

    .line 132
    iget-object v3, v0, Lcom/android/server/display/RefactorNitController;->mLogicalData:[F

    aput v16, v3, v12

    .line 133
    iget-object v3, v0, Lcom/android/server/display/RefactorNitController;->mLogicalData:[F

    aput v5, v3, v11

    .line 134
    iget-object v3, v0, Lcom/android/server/display/RefactorNitController;->mLogicalData:[F

    aput v14, v3, v13

    .line 135
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11d
    if-ge v3, v13, :cond_12b

    .line 136
    iget-object v4, v0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    iget-object v5, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    aget v5, v5, v3

    float-to-double v5, v5

    aput-wide v5, v4, v3

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_11d

    .line 138
    .end local v3  # "i":I
    :cond_12b
    iget-object v3, v0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    iget-object v4, v0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    aget v4, v4, v17

    float-to-double v4, v4

    aput-wide v4, v3, v13

    .line 139
    new-array v3, v9, [D

    iput-object v3, v0, Lcom/android/server/display/RefactorNitController;->mGoodLuxToLogicalNit:[D

    .line 140
    iput-boolean v2, v0, Lcom/android/server/display/RefactorNitController;->mIsHaveGoodCurve:Z

    .line 141
    iput v15, v0, Lcom/android/server/display/RefactorNitController;->mUserLux:F

    .line 142
    iput v15, v0, Lcom/android/server/display/RefactorNitController;->mUserLogicalNit:F

    .line 143
    iget-object v2, v0, Lcom/android/server/display/RefactorNitController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetDefaultSpline mLuxToLogicalNit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    invoke-static {v4}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public setAutoBrightnessState(Z)V
    .registers 6
    .param p1, "isAutoBrightness"  # Z

    .line 514
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoBrightnessState, isAutoBrightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLogicalNit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/RefactorNitController;->mLogicalNit:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-boolean v0, p0, Lcom/android/server/display/RefactorNitController;->mUseAutoBrightness:Z

    if-eq p1, v0, :cond_80

    .line 516
    iput-boolean p1, p0, Lcom/android/server/display/RefactorNitController;->mUseAutoBrightness:Z

    .line 517
    iget v0, p0, Lcom/android/server/display/RefactorNitController;->mDisplayId:I

    if-nez v0, :cond_80

    iget-boolean v0, p0, Lcom/android/server/display/RefactorNitController;->mUseAutoBrightness:Z

    if-nez v0, :cond_80

    iget v0, p0, Lcom/android/server/display/RefactorNitController;->mLogicalNit:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_44

    iget v0, p0, Lcom/android/server/display/RefactorNitController;->mLogicalNit:F

    const v1, 0x44848000  # 1060.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_80

    .line 519
    :cond_44
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v1, p0, Lcom/android/server/display/RefactorNitController;->mLogicalNit:F

    .line 520
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/display/RefactorNitController;->getCurrentNit(FFZ)F

    move-result v1

    .line 519
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v0

    .line 521
    .local v0, "brightness":F
    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v1, :cond_62

    .line 522
    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/display/RefactorNitController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 524
    :cond_62
    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v3, v0}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    .line 526
    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update brightness when disable auto brightness for displayId 0, brightness:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .end local v0  # "brightness":F
    :cond_80
    return-void
.end method

.method public setCurrentLogicalNit(F)V
    .registers 3
    .param p1, "logicalNit"  # F

    .line 472
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/RefactorNitController;->saveLogicalNitToPreferences(FZ)V

    .line 473
    return-void
.end method

.method public shouldUseGoodCurve()V
    .registers 7

    .line 476
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldUseGoodCurve, mIsHaveGoodCurve:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/RefactorNitController;->mIsHaveGoodCurve:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-boolean v0, p0, Lcom/android/server/display/RefactorNitController;->mIsHaveGoodCurve:Z

    if-eqz v0, :cond_7e

    .line 478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_20
    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    array-length v1, v1

    if-ge v0, v1, :cond_65

    .line 479
    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLuxToLogicalNit["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    aget-wide v4, v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mGoodLuxToLogicalNit["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/RefactorNitController;->mGoodLuxToLogicalNit:[D

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 482
    .end local v0  # "i":I
    :cond_65
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->mGoodLogicalCurve:[F

    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->mGoodLogicalCurve:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    .line 483
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->mGoodLuxToLogicalNit:[D

    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->mGoodLuxToLogicalNit:[D

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/RefactorNitController;->mIsHaveGoodCurve:Z

    .line 486
    :cond_7e
    return-void
.end method

.method public updateAge(F[F)V
    .registers 7
    .param p1, "val"  # F
    .param p2, "curve"  # [F

    .line 211
    const/16 v0, 0x11

    aget v1, p2, v0

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1a

    .line 212
    const/16 v1, 0x12

    aget v2, p2, v1

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_16

    .line 213
    const/16 v2, 0x13

    aget v3, p2, v1

    aput v3, p2, v2

    .line 215
    :cond_16
    aget v2, p2, v0

    aput v2, p2, v1

    .line 217
    :cond_1a
    aput p1, p2, v0

    .line 218
    return-void
.end method

.method public updateCurvePrefBased([F[FFF)V
    .registers 34
    .param p1, "data"  # [F
    .param p2, "curve"  # [F
    .param p3, "illuminance"  # F
    .param p4, "logical_B"  # F

    .line 318
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x5

    aget v4, v2, v3

    const/4 v5, 0x7

    aget v6, v1, v5

    aget v7, v2, v5

    sub-float/2addr v6, v7

    const/16 v7, 0x15

    aget v8, v2, v7

    div-float/2addr v6, v8

    add-float/2addr v4, v6

    .line 320
    .local v4, "v10":F
    const/high16 v6, 0x43960000  # 300.0f

    cmpl-float v6, p3, v6

    const/16 v8, 0x14

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-lez v6, :cond_24

    .line 321
    const/high16 v6, 0x40000000  # 2.0f

    .line 322
    .local v6, "offset":F
    aput v10, v2, v8

    goto :goto_30

    .line 323
    .end local v6  # "offset":F
    :cond_24
    aget v6, v2, v9

    cmpl-float v6, p3, v6

    if-lez v6, :cond_2f

    .line 324
    const/high16 v6, 0x3f800000  # 1.0f

    .line 325
    .restart local v6  # "offset":F
    aput v10, v2, v8

    goto :goto_30

    .line 327
    .end local v6  # "offset":F
    :cond_2f
    const/4 v6, 0x0

    .line 330
    .restart local v6  # "offset":F
    :goto_30
    const/high16 v11, 0x3f800000  # 1.0f

    cmpl-float v12, v6, v11

    const/high16 v13, -0x40800000  # -1.0f

    const/16 v14, 0xf

    const/16 v15, 0xe

    const/16 v16, 0x10

    const/16 v17, 0xb

    const/16 v18, 0x8

    if-eqz v12, :cond_5a

    aget v12, v2, v16

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_5a

    .line 331
    aget v12, v2, v16

    float-to-int v12, v12

    add-int/lit8 v12, v12, 0x8

    aget v19, v2, v15

    aput v19, v2, v12

    .line 332
    aget v12, v2, v16

    float-to-int v12, v12

    add-int/lit8 v12, v12, 0xb

    aget v19, v2, v14

    aput v19, v2, v12

    .line 335
    :cond_5a
    aput v13, v2, v16

    .line 336
    invoke-virtual {v0, v6, v2}, Lcom/android/server/display/RefactorNitController;->updateAge(F[F)V

    .line 338
    float-to-int v12, v6

    add-int/lit8 v12, v12, 0x8

    aput p3, v2, v12

    .line 339
    float-to-int v12, v6

    add-int/lit8 v12, v12, 0xb

    aput p4, v2, v12

    .line 341
    const/16 v12, 0x11

    aget v13, v2, v12

    cmpl-float v13, v13, v10

    const/high16 v19, 0x40000000  # 2.0f

    const/16 v20, 0xd

    const/16 v21, 0x6

    const/16 v22, 0x4

    const/16 v23, 0xa

    const/16 v24, 0x3

    if-nez v13, :cond_99

    const/16 v13, 0x12

    aget v13, v2, v13

    cmpl-float v13, v13, v19

    if-eqz v13, :cond_86

    goto :goto_99

    .line 396
    :cond_86
    aget v8, v2, v18

    aput v8, v1, v22

    .line 397
    aget v8, v2, v17

    aput v8, v1, v24

    .line 398
    aget v8, v2, v23

    aput v8, v1, v3

    .line 399
    aget v8, v2, v20

    aput v8, v1, v21

    .line 400
    const/4 v8, 0x0

    .local v8, "v13":F
    goto/16 :goto_153

    .line 342
    .end local v8  # "v13":F
    :cond_99
    :goto_99
    aget v13, v2, v12

    cmpl-float v13, v13, v19

    if-nez v13, :cond_bc

    const/16 v13, 0x12

    aget v13, v2, v13

    cmpl-float v13, v13, v10

    if-eqz v13, :cond_a8

    goto :goto_bc

    .line 389
    :cond_a8
    aget v8, v2, v18

    aput v8, v1, v22

    .line 390
    aget v8, v2, v17

    aput v8, v1, v24

    .line 391
    aget v8, v2, v23

    aput v8, v1, v3

    .line 392
    aget v8, v2, v20

    aput v8, v1, v21

    .line 393
    const/high16 v8, 0x3f800000  # 1.0f

    .restart local v8  # "v13":F
    goto/16 :goto_153

    .line 343
    .end local v8  # "v13":F
    :cond_bc
    :goto_bc
    const/16 v13, 0x9

    aget v25, v2, v13

    aget v26, v2, v18

    sub-float v25, v25, v26

    .line 344
    .local v25, "v9":F
    aget v26, v2, v23

    aget v27, v2, v13

    sub-float v26, v26, v27

    .line 345
    .local v26, "v8":F
    aget v27, v2, v12

    cmpl-float v27, v27, v11

    const/16 v28, 0xc

    if-nez v27, :cond_fb

    .line 346
    cmpl-float v8, v25, v26

    if-lez v8, :cond_e9

    .line 347
    aget v8, v2, v18

    aput v8, v1, v22

    .line 348
    aget v8, v2, v17

    aput v8, v1, v24

    .line 349
    aget v8, v2, v13

    aput v8, v1, v3

    .line 350
    aget v8, v2, v28

    aput v8, v1, v21

    .line 351
    const/high16 v8, 0x3f800000  # 1.0f

    .restart local v8  # "v13":F
    goto :goto_153

    .line 353
    .end local v8  # "v13":F
    :cond_e9
    aget v8, v2, v13

    aput v8, v1, v22

    .line 354
    aget v8, v2, v28

    aput v8, v1, v24

    .line 355
    aget v8, v2, v23

    aput v8, v1, v3

    .line 356
    aget v8, v2, v20

    aput v8, v1, v21

    .line 357
    const/4 v8, 0x0

    .restart local v8  # "v13":F
    goto :goto_153

    .line 359
    .end local v8  # "v13":F
    :cond_fb
    aget v27, v2, v12

    cmpl-float v27, v27, v10

    if-eqz v27, :cond_121

    .line 360
    aget v8, v2, v23

    aput v8, v1, v3

    .line 361
    aget v8, v2, v20

    aput v8, v1, v21

    .line 362
    const/high16 v8, 0x3f800000  # 1.0f

    .line 363
    .restart local v8  # "v13":F
    cmpl-float v20, v25, v26

    if-lez v20, :cond_118

    .line 364
    aget v13, v2, v18

    aput v13, v1, v22

    .line 365
    aget v13, v2, v17

    aput v13, v1, v24

    goto :goto_153

    .line 367
    :cond_118
    aget v13, v2, v13

    aput v13, v1, v22

    .line 368
    aget v13, v2, v28

    aput v13, v1, v24

    goto :goto_153

    .line 371
    .end local v8  # "v13":F
    :cond_121
    aget v18, v2, v18

    aput v18, v1, v22

    .line 372
    aget v17, v2, v17

    aput v17, v1, v24

    .line 373
    const/16 v17, 0x0

    .line 374
    .local v17, "v13":F
    cmpl-float v18, v25, v26

    if-lez v18, :cond_138

    .line 375
    aget v8, v2, v13

    aput v8, v1, v3

    .line 376
    aget v8, v2, v28

    aput v8, v1, v21

    goto :goto_151

    .line 378
    :cond_138
    aget v13, v2, v8

    float-to-int v13, v13

    rem-int/2addr v13, v9

    .line 379
    .local v13, "val":I
    if-nez v13, :cond_148

    .line 380
    aget v18, v2, v3

    aput v18, v2, v23

    .line 381
    aget v18, v2, v5

    aput v18, v2, v20

    .line 382
    aput v11, v2, v8

    .line 384
    :cond_148
    aget v8, v2, v23

    aput v8, v1, v3

    .line 385
    aget v8, v2, v20

    aput v8, v1, v21

    .line 386
    .end local v13  # "val":I
    nop

    .line 402
    .end local v25  # "v9":F
    .end local v26  # "v8":F
    :goto_151
    move/from16 v8, v17

    .end local v17  # "v13":F
    .restart local v8  # "v13":F
    :goto_153
    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/display/RefactorNitController;->fitCurveToReferencePoints([F[FF)F

    .line 404
    aget v12, v2, v12

    cmpl-float v11, v12, v11

    if-nez v11, :cond_187

    .line 405
    cmpl-float v11, v8, v10

    if-eqz v11, :cond_17d

    .line 406
    aget v10, v2, v5

    aget v11, v2, v24

    sub-float/2addr v10, v11

    aget v11, v2, v3

    aget v12, v2, v9

    sub-float/2addr v11, v12

    div-float/2addr v10, v11

    .line 407
    .local v10, "v4":F
    aput v19, v2, v16

    .line 408
    aget v11, v2, v23

    aput v11, v2, v15

    .line 409
    aget v11, v2, v5

    aget v12, v2, v23

    aget v13, v2, v3

    sub-float/2addr v12, v13

    mul-float/2addr v12, v10

    add-float/2addr v11, v12

    aput v11, v2, v14

    goto :goto_187

    .line 411
    .end local v10  # "v4":F
    :cond_17d
    aget v11, v2, v9

    aput v11, v2, v15

    .line 412
    aget v11, v2, v24

    aput v11, v2, v14

    .line 413
    aput v10, v2, v16

    .line 417
    :cond_187
    :goto_187
    aget v10, v2, v5

    aget v11, v2, v3

    div-float/2addr v10, v11

    .line 418
    .local v10, "v7":F
    aget v11, v2, v3

    aget v12, v1, v5

    aget v13, v2, v5

    sub-float/2addr v12, v13

    div-float/2addr v12, v10

    add-float/2addr v11, v12

    cmpg-float v11, v11, v4

    if-gez v11, :cond_1b5

    .line 419
    aget v11, v1, v5

    aget v12, v2, v5

    sub-float/2addr v11, v12

    aget v12, v2, v3

    sub-float v12, v4, v12

    div-float/2addr v11, v12

    aget v5, v2, v5

    aget v12, v2, v24

    sub-float/2addr v5, v12

    aget v3, v2, v3

    aget v9, v2, v9

    sub-float/2addr v3, v9

    div-float/2addr v5, v3

    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v2, v7

    goto :goto_1b7

    .line 422
    :cond_1b5
    aput v10, v2, v7

    .line 424
    :goto_1b7
    return-void
.end method

.method public updateLogicalCurve(FF)V
    .registers 10
    .param p1, "lux"  # F
    .param p2, "logicalNit"  # F

    .line 427
    iget-boolean v0, p0, Lcom/android/server/display/RefactorNitController;->mUseAutoBrightness:Z

    if-nez v0, :cond_c

    .line 428
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->TAG:Ljava/lang/String;

    const-string v1, "current brightness switch is off, not need update logical curve!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void

    .line 431
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->mHighLuxPoints:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_19

    .line 432
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->mHighLuxPoints:[F

    aget p1, v0, v1

    .line 434
    :cond_19
    iput p1, p0, Lcom/android/server/display/RefactorNitController;->mUserLux:F

    .line 435
    iput p2, p0, Lcom/android/server/display/RefactorNitController;->mUserLogicalNit:F

    .line 436
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->mLogicalData:[F

    iget-object v2, p0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    invoke-virtual {p0, v0, v2, p1, p2}, Lcom/android/server/display/RefactorNitController;->updateCurvePrefBased([F[FFF)V

    .line 437
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    const/16 v2, 0x8

    if-ge v0, v2, :cond_35

    .line 438
    iget-object v2, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    iget-object v3, p0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    aget v3, v3, v0

    float-to-double v3, v3

    aput-wide v3, v2, v0

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 440
    .end local v0  # "i":I
    :cond_35
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    iget-object v3, p0, Lcom/android/server/display/RefactorNitController;->mLogicalCurve:[F

    const/16 v4, 0x15

    aget v3, v3, v4

    float-to-double v5, v3

    aput-wide v5, v0, v2

    .line 441
    invoke-direct {p0, p2, v1}, Lcom/android/server/display/RefactorNitController;->saveLogicalNitToPreferences(FZ)V

    .line 442
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLogicalCurve lux: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", logicalNit:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "mLuxToLogicalNit:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/RefactorNitController;->mLuxToLogicalNit:[D

    .line 443
    invoke-static {v5}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/android/server/display/RefactorNitController;->mGoodCurve:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 445
    .local v0, "goodLogicalNit":F
    iput-boolean v1, p0, Lcom/android/server/display/RefactorNitController;->mIsHaveGoodCurve:Z

    .line 446
    cmpg-float v1, v0, p2

    if-gez v1, :cond_ce

    .line 447
    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->mLogicalData:[F

    iget-object v3, p0, Lcom/android/server/display/RefactorNitController;->mGoodLogicalCurve:[F

    invoke-virtual {p0, v1, v3, p1, v0}, Lcom/android/server/display/RefactorNitController;->updateCurvePrefBased([F[FFF)V

    .line 448
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8b
    if-ge v1, v2, :cond_99

    .line 449
    iget-object v3, p0, Lcom/android/server/display/RefactorNitController;->mGoodLuxToLogicalNit:[D

    iget-object v5, p0, Lcom/android/server/display/RefactorNitController;->mGoodLogicalCurve:[F

    aget v5, v5, v1

    float-to-double v5, v5

    aput-wide v5, v3, v1

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    .line 451
    .end local v1  # "i":I
    :cond_99
    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->mGoodLuxToLogicalNit:[D

    iget-object v3, p0, Lcom/android/server/display/RefactorNitController;->mGoodLogicalCurve:[F

    aget v3, v3, v4

    float-to-double v3, v3

    aput-wide v3, v1, v2

    .line 452
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/RefactorNitController;->mIsHaveGoodCurve:Z

    .line 453
    iget-object v1, p0, Lcom/android/server/display/RefactorNitController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGoodLogicalCurve mGoodLuxToLogicalNit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/RefactorNitController;->mGoodLuxToLogicalNit:[D

    .line 454
    invoke-static {v3}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", goodLogicalNit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 453
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_ce
    return-void
.end method
