# classes.dex

.class public Lcom/android/server/display/RampRateController;
.super Ljava/lang/Object;
.source "RampRateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampRateController$RateStateRecord;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_DOZE_TO_ON:I = 0x15e

.field private static final ANIMATION_DURATION_ON_TO_DOZE:I = 0x1c2

.field private static final ANIMATION_RATE_TYPE_CONSTANT:I = 0x5

.field private static final ANIMATION_RATE_TYPE_DEFAULT:I = 0x0

.field private static final ANIMATION_RATE_TYPE_DIM:I = 0x1

.field private static final ANIMATION_RATE_TYPE_DOZE_BRIGHTNESS:I = 0x6

.field private static final ANIMATION_RATE_TYPE_HDR_BRIGHTNESS:I = 0x4

.field private static final ANIMATION_RATE_TYPE_MANUAL_BRIGHTNESS:I = 0x3

.field private static final ANIMATION_RATE_TYPE_TEMPORARY_DIMMING:I = 0x2

.field private static final BRIGHTNESS_12BIT:I = 0xfff

.field public static final HDR_BRIGHTNESS_TYPE:I = 0x1

.field private static final IS_UMI_0B_DISPLAY_PANEL:Z

.field private static final NIT_LEVEL:F = 40.0f

.field private static final NIT_LEVEL1:F = 35.0f

.field private static final NIT_LEVEL2:F = 87.450005f

.field private static final NIT_LEVEL3:F = 265.0f

.field private static final OLED_PANEL_ID:Ljava/lang/String;

.field private static final RATE_LEVEL:I = 0x28

.field private static final REASON_AUTO_BRIGHTNESS_RATE:I = 0x8

.field private static final REASON_BCBC_BRIGHTNESS_RATE:I = 0xb

.field private static final REASON_DIM_BRIGHTNESS_RATE:I = 0x3

.field private static final REASON_DOZE_BRIGHTNESS_RATE:I = 0xc

.field private static final REASON_FAST_BRIGHTNESS_ADJUSTMENT_RATE:I = 0x7

.field private static final REASON_FAST_RATE:I = 0x2

.field private static final REASON_HDR_BRIGHTNESS_RATE:I = 0x6

.field private static final REASON_MANUAL_BRIGHTNESS_RATE:I = 0x9

.field private static final REASON_OVERRIDE_BRIGHTNESS_RATE:I = 0x5

.field private static final REASON_SLOW_FAST:I = 0x1

.field private static final REASON_TEMPORARY_BRIGHTNESS_RATE:I = 0x4

.field private static final REASON_THERMAL_BRIGHTNESS_RATE:I = 0xa

.field private static final REASON_ZERO_RATE:I = 0x0

.field public static final SDR_BRIGHTNESS_TYPE:I = 0x0

.field private static final TIME_1:F = 0.0f

.field private static final TIME_2:F = 0.8f

.field private static final TIME_3:F = 1.8f

.field private static final TIME_4:F = 4.0f

.field private static final TIME_5:F = 24.0f


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mALevels:[F

.field private mAnimateValueChanged:Z

.field private final mAnimationDurationDim:I

.field private mAnimationDurationDozeDimming:I

.field private final mAnimationDurationHdrBrightness:I

.field private final mAnimationDurationManualBrightness:I

.field private final mAnimationDurationTemporaryDimming:I

.field private volatile mAnimationTime:F

.field private mAppliedHdrRateDueToEntry:Z

.field private mAppliedHdrRateDueToExit:Z

.field private mAppliedOverrideRateDueToEntry:Z

.field private mAppliedOverrideRateDueToExit:Z

.field private final mBLevels:[F

.field private mBrightness:F

.field private mBrightnessChanged:Z

.field private mBrightnessMaxNit:F

.field private final mBrightnessRampRateFast:F

.field private final mBrightnessRampRateSlow:F

.field private final mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

.field private final mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

.field private mCurrentPolicy:I

.field private mCurrentReasonStartBrightness:[F

.field private mDebug:Z

.field private final mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field private final mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

.field private mDisplayState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHbmMaxNit:F

.field private mHbmTransitionPointNit:F

.field private final mHighBrightnessModeData:Lcom/android/server/display/config/HighBrightnessModeData;

.field private final mMinimumAdjustRate:F

.field private final mNitsLevels:[F

.field private mPreviousDisplayState:I

.field private mPreviousPolicy:I

.field private mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

.field private final mScreenBrightnessMaximumInt:I

.field private mSdrBrightness:F

.field private mSlowChange:Z

.field private mSlowLinearBrightnessList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlowLinearRampRate:F

.field private mSlowLinearRampRateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupdarkbrightness:Z

.field private final mSupportManualDimming:Z

.field private mTargetBrightness:F

.field private mTargetSdrBrightness:F


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/android/server/display/RampRateController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/RampRateController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAnimationDurationDozeDimming(Lcom/android/server/display/RampRateController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/RampRateController;->mAnimationDurationDozeDimming:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAnimationDurationTemporaryDimming(Lcom/android/server/display/RampRateController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/RampRateController;->mAnimationDurationTemporaryDimming:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportManualDimming(Lcom/android/server/display/RampRateController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/RampRateController;->mSupportManualDimming:Z

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 77
    nop

    .line 78
    const-string/jumbo v0, "ro.boot.oled_panel_id"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/RampRateController;->OLED_PANEL_ID:Ljava/lang/String;

    .line 79
    const-string v0, "0B"

    sget-object v1, Lcom/android/server/display/RampRateController;->OLED_PANEL_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 80
    const-string/jumbo v1, "umi"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string/jumbo v0, "umiin"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    sput-boolean v0, Lcom/android/server/display/RampRateController;->IS_UMI_0B_DISPLAY_PANEL:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayPowerControllerImpl;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Looper;I)V
    .registers 10
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "impl"  # Lcom/android/server/display/DisplayPowerControllerImpl;
    .param p3, "deviceConfig"  # Lcom/android/server/display/DisplayDeviceConfig;
    .param p4, "looper"  # Landroid/os/Looper;
    .param p5, "displayId"  # I

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v0, Lcom/android/server/display/RampRateController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampRateController;->TAG:Ljava/lang/String;

    .line 92
    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_ea

    iput-object v1, p0, Lcom/android/server/display/RampRateController;->mNitsLevels:[F

    .line 93
    new-array v1, v0, [F

    fill-array-data v1, :array_100

    iput-object v1, p0, Lcom/android/server/display/RampRateController;->mALevels:[F

    .line 95
    new-array v0, v0, [F

    fill-array-data v0, :array_116

    iput-object v0, p0, Lcom/android/server/display/RampRateController;->mBLevels:[F

    .line 113
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/RampRateController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 114
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/RampRateController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/RampRateController;->mDebug:Z

    .line 134
    const/high16 v1, 0x7fc00000  # Float.NaN

    iput v1, p0, Lcom/android/server/display/RampRateController;->mHbmTransitionPointNit:F

    .line 135
    iput v1, p0, Lcom/android/server/display/RampRateController;->mHbmMaxNit:F

    .line 136
    iput v1, p0, Lcom/android/server/display/RampRateController;->mBrightnessMaxNit:F

    .line 146
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/display/RampRateController;->mCurrentReasonStartBrightness:[F

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/RampRateController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/RampRateController;->TAG:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/android/server/display/RampRateController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 152
    iput-object p3, p0, Lcom/android/server/display/RampRateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 153
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/display/RampRateController;->mHandler:Landroid/os/Handler;

    .line 154
    invoke-virtual {p3}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/RampRateController;->mHighBrightnessModeData:Lcom/android/server/display/config/HighBrightnessModeData;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 156
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x10500ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/RampRateController;->mBrightnessRampRateSlow:F

    .line 158
    const v2, 0x10500e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/RampRateController;->mBrightnessRampRateFast:F

    .line 160
    const v2, 0x110b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/RampRateController;->mAnimationDurationDim:I

    .line 162
    const v2, 0x110b000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/RampRateController;->mAnimationDurationTemporaryDimming:I

    .line 164
    const v2, 0x110b000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/RampRateController;->mAnimationDurationManualBrightness:I

    .line 166
    const v2, 0x110b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/RampRateController;->mAnimationDurationHdrBrightness:I

    .line 168
    const/16 v2, 0x1c2

    iput v2, p0, Lcom/android/server/display/RampRateController;->mAnimationDurationDozeDimming:I

    .line 169
    const v2, 0x11070036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/RampRateController;->mSlowLinearRampRate:F

    .line 170
    const v2, 0x10e013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/RampRateController;->mScreenBrightnessMaximumInt:I

    .line 172
    iget v2, p0, Lcom/android/server/display/RampRateController;->mScreenBrightnessMaximumInt:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    div-float/2addr v3, v2

    iput v3, p0, Lcom/android/server/display/RampRateController;->mMinimumAdjustRate:F

    .line 173
    const-string/jumbo v2, "support_manual_dimming"

    invoke-static {v2, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/RampRateController;->mSupportManualDimming:Z

    .line 174
    const v0, 0x110500d2

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/RampRateController;->mSupdarkbrightness:Z

    .line 175
    new-instance v0, Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampRateController$RateStateRecord;-><init>(Lcom/android/server/display/RampRateController;)V

    iput-object v0, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    .line 176
    invoke-direct {p0}, Lcom/android/server/display/RampRateController;->updateDeviceConfigData()V

    .line 177
    invoke-direct {p0}, Lcom/android/server/display/RampRateController;->updateSlowLinearRampRate()V

    .line 178
    return-void

    :array_ea
    .array-data 4
        0x44480000  # 800.0f
        0x437b0000  # 251.0f
        0x43160000  # 150.0f
        0x42c80000  # 100.0f
        0x428c0000  # 70.0f
        0x42480000  # 50.0f
        0x42200000  # 40.0f
        0x41f00000  # 30.0f
        0x41e40000  # 28.5f
    .end array-data

    :array_100
    .array-data 4
        0x44480000  # 800.0f
        0x440e5eb8
        0x43ac71ec
        0x436dc000  # 237.75f
        0x4333b5c3  # 179.71f
        0x430730a4  # 135.19f
        0x42e32e14  # 113.59f
        0x427b5c29  # 62.84f
        0x442937ae  # 676.87f
    .end array-data

    :array_116
    .array-data 4
        0x3f7d1b71  # 0.9887f
        0x3f7df3b6  # 0.992f
        0x3f7eb852  # 0.995f
        0x3f7f1aa0  # 0.9965f
        0x3f7f4f0e  # 0.9973f
        0x3f7f7660  # 0.9979f
        0x3f7f8a09  # 0.9982f
        0x3f7fbe77  # 0.999f
        0x3f7ef9db  # 0.996f
    .end array-data
.end method

.method private appliedFastRate(FFI)Z
    .registers 5
    .param p1, "currentBrightness"  # F
    .param p2, "targetBrightness"  # F
    .param p3, "type"  # I

    .line 753
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerControllerImpl;->appliedFastRate(FFI)Z

    move-result v0

    return v0
.end method

.method private clearHdrRateModifier()V
    .registers 3

    .line 769
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 770
    return-void
.end method

.method private clearOverrideRateModifier()V
    .registers 3

    .line 773
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 774
    return-void
.end method

.method private convertToBrightness(F)F
    .registers 3
    .param p1, "nit"  # F

    .line 722
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-nez v0, :cond_7

    .line 723
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0

    .line 725
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v0

    return v0
.end method

.method private convertToNit(F)F
    .registers 3
    .param p1, "brightness"  # F

    .line 715
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-nez v0, :cond_7

    .line 716
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0

    .line 718
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v0

    return v0
.end method

.method private getBrighteningLogRate(FFFF)F
    .registers 10
    .param p1, "startBrightness"  # F
    .param p2, "currentBrightness"  # F
    .param p3, "targetBrightness"  # F
    .param p4, "duration"  # F

    .line 632
    nop

    .line 633
    invoke-static {p3}, Landroid/util/MathUtils;->exp(F)F

    move-result v0

    invoke-static {p1}, Landroid/util/MathUtils;->exp(F)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x447a0000  # 1000.0f

    mul-float/2addr v0, v1

    div-float/2addr v0, p4

    .line 634
    .local v0, "coefficient":F
    invoke-static {p2}, Landroid/util/MathUtils;->exp(F)F

    move-result v1

    div-float v1, v0, v1

    .line 635
    .local v1, "rate":F
    iget-boolean v2, p0, Lcom/android/server/display/RampRateController;->mDebug:Z

    if-eqz v2, :cond_59

    .line 636
    iget-object v2, p0, Lcom/android/server/display/RampRateController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBrighteningLogRate: rate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", startBrightness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentBrightness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", targetBrightness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", coefficient: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_59
    return v1
.end method

.method private getBrighteningRate(FFF)F
    .registers 12
    .param p1, "brightness"  # F
    .param p2, "startBrightness"  # F
    .param p3, "tgtBrightness"  # F

    .line 458
    invoke-direct {p0, p1}, Lcom/android/server/display/RampRateController;->convertToNit(F)F

    move-result v3

    .line 459
    .local v3, "nit":F
    invoke-direct {p0, p2}, Lcom/android/server/display/RampRateController;->convertToNit(F)F

    move-result v6

    .line 460
    .local v6, "startNit":F
    invoke-direct {p0, p3}, Lcom/android/server/display/RampRateController;->convertToNit(F)F

    move-result v2

    .line 462
    .local v2, "targetNit":F
    const/high16 v0, 0x420c0000  # 35.0f

    cmpg-float v1, v6, v0

    const v4, 0x42aee667  # 87.450005f

    const v5, 0x43848000  # 265.0f

    if-gez v1, :cond_8f

    .line 463
    cmpg-float v1, v2, v0

    if-gez v1, :cond_2a

    .line 464
    sub-float v0, v2, v6

    invoke-direct {p0, v0}, Lcom/android/server/display/RampRateController;->convertToBrightness(F)F

    move-result v0

    const/high16 v1, 0x40800000  # 4.0f

    div-float/2addr v0, v1

    move v4, v0

    move v1, v6

    move-object v0, p0

    .local v0, "rate":F
    goto/16 :goto_d1

    .line 465
    .end local v0  # "rate":F
    :cond_2a
    cmpg-float v1, v2, v5

    if-gez v1, :cond_50

    .line 466
    cmpg-float v1, v3, v0

    if-gez v1, :cond_40

    .line 467
    invoke-direct {p0, v0}, Lcom/android/server/display/RampRateController;->convertToBrightness(F)F

    move-result v0

    sub-float/2addr v0, p2

    const v1, 0x3fe66666  # 1.8f

    div-float/2addr v0, v1

    move v4, v0

    move v1, v6

    move-object v0, p0

    .restart local v0  # "rate":F
    goto/16 :goto_d1

    .line 469
    .end local v0  # "rate":F
    :cond_40
    const v4, 0x3fe66666  # 1.8f

    const/high16 v5, 0x40800000  # 4.0f

    const/high16 v1, 0x420c0000  # 35.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/RampRateController;->getExpRate(FFFFF)F

    move-result v1

    move v4, v1

    move v1, v6

    .end local v2  # "targetNit":F
    .local v1, "rate":F
    .local v7, "targetNit":F
    goto/16 :goto_d1

    .line 472
    .end local v1  # "rate":F
    .end local v7  # "targetNit":F
    .restart local v2  # "targetNit":F
    :cond_50
    move v7, v2

    move-object v2, p0

    .end local v2  # "targetNit":F
    .restart local v7  # "targetNit":F
    cmpg-float v1, v3, v0

    if-gez v1, :cond_65

    .line 473
    invoke-direct {p0, v0}, Lcom/android/server/display/RampRateController;->convertToBrightness(F)F

    move-result v0

    sub-float/2addr v0, p2

    const v1, 0x3f4ccccd  # 0.8f

    div-float/2addr v0, v1

    move v4, v0

    move-object v0, v2

    move v1, v6

    move v2, v7

    .restart local v0  # "rate":F
    goto/16 :goto_d1

    .line 474
    .end local v0  # "rate":F
    :cond_65
    cmpg-float v0, v3, v4

    if-gez v0, :cond_7e

    .line 475
    const v4, 0x3f4ccccd  # 0.8f

    const v5, 0x3fe66666  # 1.8f

    const/high16 v1, 0x420c0000  # 35.0f

    const v2, 0x42aee667  # 87.450005f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/RampRateController;->getExpRate(FFFFF)F

    move-result v1

    move v4, v1

    move v1, v6

    move v2, v7

    .restart local v1  # "rate":F
    goto/16 :goto_d1

    .line 477
    .end local v1  # "rate":F
    :cond_7e
    const v4, 0x3fe66666  # 1.8f

    const/high16 v5, 0x40800000  # 4.0f

    const v1, 0x42aee667  # 87.450005f

    move-object v0, p0

    move v2, v7

    .end local v7  # "targetNit":F
    .restart local v2  # "targetNit":F
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/RampRateController;->getExpRate(FFFFF)F

    move-result v1

    move v4, v1

    move v1, v6

    .restart local v1  # "rate":F
    goto :goto_d1

    .line 480
    .end local v1  # "rate":F
    :cond_8f
    cmpg-float v0, v6, v5

    if-gez v0, :cond_c8

    .line 481
    cmpg-float v0, v2, v5

    if-gez v0, :cond_a1

    .line 482
    const/4 v4, 0x0

    const/high16 v5, 0x40800000  # 4.0f

    move-object v0, p0

    move v1, v6

    .end local v6  # "startNit":F
    .local v1, "startNit":F
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/RampRateController;->getExpRate(FFFFF)F

    move-result v4

    .end local v2  # "targetNit":F
    .local v4, "rate":F
    .restart local v7  # "targetNit":F
    goto :goto_d1

    .line 484
    .end local v1  # "startNit":F
    .end local v4  # "rate":F
    .end local v7  # "targetNit":F
    .restart local v2  # "targetNit":F
    .restart local v6  # "startNit":F
    :cond_a1
    move v7, v2

    move v1, v6

    .end local v2  # "targetNit":F
    .end local v6  # "startNit":F
    .restart local v1  # "startNit":F
    .restart local v7  # "targetNit":F
    cmpg-float v0, v3, v4

    if-gez v0, :cond_b6

    .line 485
    const/4 v4, 0x0

    const v5, 0x3fe66666  # 1.8f

    const v2, 0x42aee667  # 87.450005f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/RampRateController;->getExpRate(FFFFF)F

    move-result v2

    move v4, v2

    move v2, v7

    .end local v1  # "startNit":F
    .local v2, "rate":F
    .restart local v6  # "startNit":F
    goto :goto_d1

    .line 487
    .end local v2  # "rate":F
    .end local v6  # "startNit":F
    .restart local v1  # "startNit":F
    :cond_b6
    move v6, v1

    .end local v1  # "startNit":F
    .restart local v6  # "startNit":F
    const v4, 0x3fe66666  # 1.8f

    const/high16 v5, 0x40800000  # 4.0f

    const v1, 0x42aee667  # 87.450005f

    move-object v0, p0

    move v2, v7

    .end local v7  # "targetNit":F
    .local v2, "targetNit":F
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/RampRateController;->getExpRate(FFFFF)F

    move-result v1

    move v4, v1

    move v1, v6

    .local v1, "rate":F
    goto :goto_d1

    .line 491
    .end local v1  # "rate":F
    :cond_c8
    const/4 v4, 0x0

    const/high16 v5, 0x40800000  # 4.0f

    move-object v0, p0

    move v1, v6

    .end local v6  # "startNit":F
    .local v1, "startNit":F
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/RampRateController;->getExpRate(FFFFF)F

    move-result v4

    .line 493
    .restart local v4  # "rate":F
    :goto_d1
    iget v5, v0, Lcom/android/server/display/RampRateController;->mMinimumAdjustRate:F

    invoke-static {v4, v5}, Landroid/util/MathUtils;->max(FF)F

    move-result v4

    .line 494
    iget-boolean v5, v0, Lcom/android/server/display/RampRateController;->mDebug:Z

    if-eqz v5, :cond_112

    .line 495
    iget-object v5, v0, Lcom/android/server/display/RampRateController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getBrighteningRate: rate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", nit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", startNit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", targetNit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_112
    return v4
.end method

.method private getDarkeningExpRate(FFFF)F
    .registers 10
    .param p1, "startBrightness"  # F
    .param p2, "currentBrightness"  # F
    .param p3, "targetBrightness"  # F
    .param p4, "duration"  # F

    .line 648
    div-float v0, p3, p1

    invoke-static {v0}, Landroid/util/MathUtils;->log(F)F

    move-result v0

    const/high16 v1, 0x447a0000  # 1000.0f

    mul-float/2addr v0, v1

    div-float/2addr v0, p4

    .line 649
    .local v0, "coefficient":F
    mul-float v1, v0, p2

    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    move-result v1

    .line 650
    .local v1, "rate":F
    iget-boolean v2, p0, Lcom/android/server/display/RampRateController;->mDebug:Z

    if-eqz v2, :cond_55

    .line 651
    iget-object v2, p0, Lcom/android/server/display/RampRateController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDarkeningExpRate: rate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", startBrightness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentBrightness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", targetBrightness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", coefficient: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_55
    return v1
.end method

.method private getDarkeningRate(FF)F
    .registers 16
    .param p1, "brightness"  # F
    .param p2, "targetBrightness"  # F

    .line 513
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mHighBrightnessModeData:Lcom/android/server/display/config/HighBrightnessModeData;

    const/high16 v1, 0x3f800000  # 1.0f

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_c

    .line 514
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mHighBrightnessModeData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v0, v0, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    :goto_c
    nop

    .line 515
    .local v0, "normalMaxBrightnessFloat":F
    iget-object v2, p0, Lcom/android/server/display/RampRateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v2

    .line 516
    .local v2, "normalNit":F
    const/high16 v3, -0x40800000  # -1.0f

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1b

    .line 517
    const/high16 v2, 0x43fa0000  # 500.0f

    .line 519
    :cond_1b
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v3

    .line 520
    .local v3, "normalMaxBrightnessInt":I
    invoke-direct {p0, p1}, Lcom/android/server/display/RampRateController;->convertToNit(F)F

    move-result v4

    .line 521
    .local v4, "nit":F
    invoke-direct {p0, v4}, Lcom/android/server/display/RampRateController;->getIndex(F)I

    move-result v5

    .line 522
    .local v5, "index":I
    iget-object v6, p0, Lcom/android/server/display/RampRateController;->mALevels:[F

    aget v6, v6, v5

    const/high16 v7, 0x41c00000  # 24.0f

    mul-float/2addr v6, v7

    iget-object v8, p0, Lcom/android/server/display/RampRateController;->mBLevels:[F

    aget v8, v8, v5

    .line 523
    invoke-direct {p0, v4, v5}, Lcom/android/server/display/RampRateController;->getTime(FI)F

    move-result v9

    mul-float/2addr v9, v7

    invoke-static {v8, v9}, Landroid/util/MathUtils;->pow(FF)F

    move-result v7

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/server/display/RampRateController;->mBLevels:[F

    aget v7, v7, v5

    .line 524
    invoke-static {v7}, Landroid/util/MathUtils;->log(F)F

    move-result v7

    mul-float/2addr v6, v7

    .line 522
    invoke-static {v6}, Landroid/util/MathUtils;->abs(F)F

    move-result v6

    .line 525
    .local v6, "rate":F
    iget-boolean v7, p0, Lcom/android/server/display/RampRateController;->mSupdarkbrightness:Z

    if-eqz v7, :cond_55

    .line 526
    const/high16 v7, 0x40600000  # 3.5f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_55

    .line 527
    const/high16 v6, 0x40200000  # 2.5f

    .line 530
    :cond_55
    iget v7, p0, Lcom/android/server/display/RampRateController;->mHbmTransitionPointNit:F

    cmpl-float v7, v4, v7

    if-lez v7, :cond_6d

    .line 531
    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    .line 532
    .local v1, "maxBrightnessInt":I
    sub-int v7, v1, v3

    invoke-static {v7}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v7

    mul-float/2addr v7, v6

    iget v8, p0, Lcom/android/server/display/RampRateController;->mHbmMaxNit:F

    iget v9, p0, Lcom/android/server/display/RampRateController;->mHbmTransitionPointNit:F

    sub-float/2addr v8, v9

    div-float/2addr v7, v8

    .line 534
    .end local v1  # "maxBrightnessInt":I
    .end local v6  # "rate":F
    .local v7, "rate":F
    goto :goto_71

    .line 535
    .end local v7  # "rate":F
    .restart local v6  # "rate":F
    :cond_6d
    mul-float v1, v6, v0

    div-float v7, v1, v2

    .line 537
    .end local v6  # "rate":F
    .restart local v7  # "rate":F
    :goto_71
    invoke-direct {p0, p2}, Lcom/android/server/display/RampRateController;->convertToNit(F)F

    move-result v1

    .line 538
    .local v1, "targetNit":F
    invoke-direct {p0, v1}, Lcom/android/server/display/RampRateController;->getIndex(F)I

    move-result v6

    invoke-direct {p0, v1, v6}, Lcom/android/server/display/RampRateController;->getTime(FI)F

    move-result v6

    invoke-direct {p0, v4, v5}, Lcom/android/server/display/RampRateController;->getTime(FI)F

    move-result v8

    sub-float/2addr v6, v8

    const/high16 v8, 0x447a0000  # 1000.0f

    mul-float/2addr v6, v8

    iput v6, p0, Lcom/android/server/display/RampRateController;->mAnimationTime:F

    .line 539
    const/high16 v6, 0x42200000  # 40.0f

    invoke-direct {p0, v6}, Lcom/android/server/display/RampRateController;->getIndex(F)I

    move-result v9

    invoke-direct {p0, v6, v9}, Lcom/android/server/display/RampRateController;->getTime(FI)F

    move-result v9

    .line 540
    .local v9, "borderTime":F
    cmpg-float v10, v1, v6

    if-gtz v10, :cond_c7

    .line 541
    move v10, v7

    .line 542
    .local v10, "fastRate":F
    const/16 v11, 0xfff

    if-le v3, v11, :cond_9e

    sget-boolean v12, Lcom/android/server/display/RampRateController;->IS_UMI_0B_DISPLAY_PANEL:Z

    if-eqz v12, :cond_c7

    .line 543
    :cond_9e
    if-gt v3, v11, :cond_a6

    .line 544
    iget v11, p0, Lcom/android/server/display/RampRateController;->mScreenBrightnessMaximumInt:I

    int-to-float v11, v11

    div-float v10, v6, v11

    goto :goto_b1

    .line 545
    :cond_a6
    sget-boolean v11, Lcom/android/server/display/RampRateController;->IS_UMI_0B_DISPLAY_PANEL:Z

    if-eqz v11, :cond_b1

    .line 546
    iget v11, p0, Lcom/android/server/display/RampRateController;->mScreenBrightnessMaximumInt:I

    int-to-float v11, v11

    const/high16 v12, 0x42a00000  # 80.0f

    div-float v10, v12, v11

    .line 548
    :cond_b1
    :goto_b1
    invoke-direct {p0, v4, v5}, Lcom/android/server/display/RampRateController;->getTime(FI)F

    move-result v11

    sub-float v11, v9, v11

    invoke-static {v11}, Landroid/util/MathUtils;->abs(F)F

    move-result v11

    mul-float/2addr v11, v8

    sub-float v8, v6, v1

    div-float/2addr v8, v10

    add-float/2addr v11, v8

    iput v11, p0, Lcom/android/server/display/RampRateController;->mAnimationTime:F

    .line 550
    cmpg-float v6, v4, v6

    if-gtz v6, :cond_c7

    .line 551
    move v7, v10

    .line 555
    .end local v10  # "fastRate":F
    :cond_c7
    iget v6, p0, Lcom/android/server/display/RampRateController;->mMinimumAdjustRate:F

    invoke-static {v7, v6}, Landroid/util/MathUtils;->max(FF)F

    move-result v6

    .line 556
    .end local v7  # "rate":F
    .restart local v6  # "rate":F
    iget-boolean v7, p0, Lcom/android/server/display/RampRateController;->mDebug:Z

    if-eqz v7, :cond_f4

    .line 557
    iget-object v7, p0, Lcom/android/server/display/RampRateController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getDarkeningRate: rate: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", nit: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_f4
    return v6
.end method

.method private getExpRate(FFFFF)F
    .registers 11
    .param p1, "startNit"  # F
    .param p2, "targetNit"  # F
    .param p3, "currentNit"  # F
    .param p4, "startTime"  # F
    .param p5, "targetTime"  # F

    .line 505
    invoke-direct {p0, p1}, Lcom/android/server/display/RampRateController;->convertToBrightness(F)F

    move-result v0

    .line 506
    .local v0, "beginDbv":F
    invoke-direct {p0, p2}, Lcom/android/server/display/RampRateController;->convertToBrightness(F)F

    move-result v1

    .line 507
    .local v1, "endDbv":F
    invoke-direct {p0, p3}, Lcom/android/server/display/RampRateController;->convertToBrightness(F)F

    move-result v2

    .line 508
    .local v2, "curDbv":F
    div-float v3, v1, v0

    invoke-static {v3}, Landroid/util/MathUtils;->log(F)F

    move-result v3

    sub-float v4, p5, p4

    div-float/2addr v3, v4

    .line 509
    .local v3, "a":F
    mul-float v4, v3, v2

    return v4
.end method

.method private getIndex(F)I
    .registers 6
    .param p1, "nit"  # F

    .line 563
    const/4 v0, 0x1

    .line 564
    .local v0, "index":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mNitsLevels:[F

    array-length v1, v1

    if-le v1, v0, :cond_11

    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mNitsLevels:[F

    aget v1, v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_11

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 567
    :cond_11
    iget-boolean v1, p0, Lcom/android/server/display/RampRateController;->mDebug:Z

    if-eqz v1, :cond_38

    .line 568
    iget-object v1, p0, Lcom/android/server/display/RampRateController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIndex: nit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_38
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

.method private getRampRate(IZFFFF)F
    .registers 11
    .param p1, "type"  # I
    .param p2, "increase"  # Z
    .param p3, "startBrightness"  # F
    .param p4, "currentBrightness"  # F
    .param p5, "targetBrightness"  # F
    .param p6, "rate"  # F

    .line 606
    invoke-direct {p0, p1}, Lcom/android/server/display/RampRateController;->getRateDuration(I)F

    move-result v0

    .line 607
    .local v0, "duration":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    cmpl-float v1, p5, v2

    if-nez v1, :cond_10

    goto :goto_1e

    .line 623
    :cond_10
    iput v0, p0, Lcom/android/server/display/RampRateController;->mAnimationTime:F

    .line 624
    if-eqz p2, :cond_19

    .line 625
    invoke-direct {p0, p3, p4, p5, v0}, Lcom/android/server/display/RampRateController;->getBrighteningLogRate(FFFF)F

    move-result v1

    return v1

    .line 627
    :cond_19
    invoke-direct {p0, p3, p4, p5, v0}, Lcom/android/server/display/RampRateController;->getDarkeningExpRate(FFFF)F

    move-result v1

    return v1

    .line 610
    :cond_1e
    :goto_1e
    const/4 v1, 0x5

    if-ne p1, v1, :cond_31

    cmpl-float v1, p6, v2

    if-eqz v1, :cond_31

    .line 611
    sub-float v1, p5, p3

    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    move-result v1

    div-float/2addr v1, p6

    const/high16 v3, 0x447a0000  # 1000.0f

    mul-float/2addr v1, v3

    iput v1, p0, Lcom/android/server/display/RampRateController;->mAnimationTime:F

    .line 615
    :cond_31
    if-nez p1, :cond_39

    cmpl-float v1, p6, v2

    if-nez v1, :cond_39

    .line 616
    iput v2, p0, Lcom/android/server/display/RampRateController;->mAnimationTime:F

    .line 618
    :cond_39
    iget-boolean v1, p0, Lcom/android/server/display/RampRateController;->mDebug:Z

    if-eqz v1, :cond_62

    .line 619
    iget-object v1, p0, Lcom/android/server/display/RampRateController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRampRate: rate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAnimationTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/RampRateController;->mAnimationTime:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_62
    return p6
.end method

.method private getRampRate(ZFFF)F
    .registers 6
    .param p1, "increase"  # Z
    .param p2, "startBrightness"  # F
    .param p3, "currentBrightness"  # F
    .param p4, "targetBrightness"  # F

    .line 450
    if-eqz p1, :cond_b

    .line 451
    const/high16 v0, 0x457a0000  # 4000.0f

    iput v0, p0, Lcom/android/server/display/RampRateController;->mAnimationTime:F

    .line 452
    invoke-direct {p0, p3, p2, p4}, Lcom/android/server/display/RampRateController;->getBrighteningRate(FFF)F

    move-result v0

    return v0

    .line 454
    :cond_b
    invoke-direct {p0, p3, p4}, Lcom/android/server/display/RampRateController;->getDarkeningRate(FF)F

    move-result v0

    return v0
.end method

.method private getRateDuration(I)F
    .registers 3
    .param p1, "type"  # I

    .line 662
    packed-switch p1, :pswitch_data_1a

    .line 675
    :pswitch_3  #0x5
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0

    .line 672
    :pswitch_6  #0x6
    iget v0, p0, Lcom/android/server/display/RampRateController;->mAnimationDurationDozeDimming:I

    int-to-float v0, v0

    return v0

    .line 668
    :pswitch_a  #0x4
    iget v0, p0, Lcom/android/server/display/RampRateController;->mAnimationDurationHdrBrightness:I

    int-to-float v0, v0

    return v0

    .line 670
    :pswitch_e  #0x3
    iget v0, p0, Lcom/android/server/display/RampRateController;->mAnimationDurationManualBrightness:I

    int-to-float v0, v0

    return v0

    .line 666
    :pswitch_12  #0x2
    iget v0, p0, Lcom/android/server/display/RampRateController;->mAnimationDurationTemporaryDimming:I

    int-to-float v0, v0

    return v0

    .line 664
    :pswitch_16  #0x1
    iget v0, p0, Lcom/android/server/display/RampRateController;->mAnimationDurationDim:I

    int-to-float v0, v0

    return v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_16  #00000001
        :pswitch_12  #00000002
        :pswitch_e  #00000003
        :pswitch_a  #00000004
        :pswitch_3  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method

.method private getSlowLinearRampRate(F)F
    .registers 5
    .param p1, "currentBrightness"  # F

    .line 697
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mSlowLinearRampRateList:Ljava/util/List;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mSlowLinearRampRateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_7a

    .line 700
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mSlowLinearBrightnessList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4a

    .line 701
    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mSlowLinearBrightnessList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_47

    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mSlowLinearBrightnessList:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    .line 702
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_47

    .line 703
    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mSlowLinearRampRateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 700
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 707
    .end local v0  # "i":I
    :cond_4a
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mSlowLinearBrightnessList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mSlowLinearBrightnessList:Ljava/util/List;

    .line 708
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_77

    .line 709
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mSlowLinearRampRateList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mSlowLinearBrightnessList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 711
    :cond_77
    iget v0, p0, Lcom/android/server/display/RampRateController;->mSlowLinearRampRate:F

    return v0

    .line 698
    :cond_7a
    :goto_7a
    iget v0, p0, Lcom/android/server/display/RampRateController;->mSlowLinearRampRate:F

    return v0
.end method

.method private getTime(FI)F
    .registers 9
    .param p1, "nit"  # F
    .param p2, "index"  # I

    .line 574
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mALevels:[F

    aget v0, v0, p2

    .line 575
    .local v0, "a":F
    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mBLevels:[F

    aget v1, v1, p2

    .line 576
    .local v1, "b":F
    div-float v2, p1, v0

    invoke-static {v2}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v3

    div-float/2addr v2, v3

    const/high16 v3, 0x41c00000  # 24.0f

    div-float/2addr v2, v3

    .line 577
    .local v2, "time":F
    iget-boolean v3, p0, Lcom/android/server/display/RampRateController;->mDebug:Z

    if-eqz v3, :cond_47

    .line 578
    iget-object v3, p0, Lcom/android/server/display/RampRateController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTime: time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", a: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", b: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_47
    invoke-static {v2}, Landroid/util/MathUtils;->abs(F)F

    move-result v3

    return v3
.end method

.method private reasonToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "reason"  # I

    .line 809
    packed-switch p1, :pswitch_data_36

    .line 837
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 835
    :pswitch_7  #0xc
    const-string v0, "doze_rate"

    return-object v0

    .line 833
    :pswitch_a  #0xb
    const-string v0, "bcbc_rate"

    return-object v0

    .line 831
    :pswitch_d  #0xa
    const-string/jumbo v0, "thermal_rate"

    return-object v0

    .line 829
    :pswitch_11  #0x9
    const-string/jumbo v0, "manual_brightness_rate"

    return-object v0

    .line 827
    :pswitch_15  #0x8
    const-string v0, "auto_brightness_rate"

    return-object v0

    .line 825
    :pswitch_18  #0x7
    const-string v0, "fast_brightness_adj"

    return-object v0

    .line 823
    :pswitch_1b  #0x6
    const-string/jumbo v0, "hdr_brightness_rate"

    return-object v0

    .line 821
    :pswitch_1f  #0x5
    const-string/jumbo v0, "override_brightness_rate"

    return-object v0

    .line 819
    :pswitch_23  #0x4
    const-string/jumbo v0, "temporary_brightness_rate"

    return-object v0

    .line 817
    :pswitch_27  #0x3
    const-string v0, "dim_rate"

    return-object v0

    .line 815
    :pswitch_2a  #0x2
    const-string v0, "fast_rate"

    return-object v0

    .line 813
    :pswitch_2d  #0x1
    const-string/jumbo v0, "slow_fast"

    return-object v0

    .line 811
    :pswitch_31  #0x0
    const-string/jumbo v0, "zero_rate"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_31  #00000000
        :pswitch_2d  #00000001
        :pswitch_2a  #00000002
        :pswitch_27  #00000003
        :pswitch_23  #00000004
        :pswitch_1f  #00000005
        :pswitch_1b  #00000006
        :pswitch_18  #00000007
        :pswitch_15  #00000008
        :pswitch_11  #00000009
        :pswitch_d  #0000000a
        :pswitch_a  #0000000b
        :pswitch_7  #0000000c
    .end packed-switch
.end method

.method private updateDeviceConfigData()V
    .registers 4

    .line 584
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mHighBrightnessModeData:Lcom/android/server/display/config/HighBrightnessModeData;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_3c

    .line 585
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mHighBrightnessModeData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v0, v0, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    invoke-direct {p0, v0}, Lcom/android/server/display/RampRateController;->convertToNit(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/RampRateController;->mHbmTransitionPointNit:F

    .line 586
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, v0}, Lcom/android/server/display/RampRateController;->convertToNit(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/RampRateController;->mBrightnessMaxNit:F

    .line 587
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->clampHdrBrightnessIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 588
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getClampedHdrBrightnessForOprOptimize()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/RampRateController;->convertToNit(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/RampRateController;->mHbmMaxNit:F

    goto :goto_5e

    .line 590
    :cond_2f
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getMaxHbmBrightnessForPeak()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/RampRateController;->convertToNit(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/RampRateController;->mHbmMaxNit:F

    goto :goto_5e

    .line 593
    :cond_3c
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getNits()[F

    move-result-object v0

    .line 594
    .local v0, "nits":[F
    if-eqz v0, :cond_4f

    array-length v1, v0

    if-eqz v1, :cond_4f

    .line 595
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/android/server/display/RampRateController;->mBrightnessMaxNit:F

    goto :goto_5a

    .line 597
    :cond_4f
    const/high16 v1, 0x43fa0000  # 500.0f

    iput v1, p0, Lcom/android/server/display/RampRateController;->mBrightnessMaxNit:F

    .line 598
    iget-object v1, p0, Lcom/android/server/display/RampRateController;->TAG:Ljava/lang/String;

    const-string v2, "The max nit of the device is not adapted."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :goto_5a
    iget v1, p0, Lcom/android/server/display/RampRateController;->mBrightnessMaxNit:F

    iput v1, p0, Lcom/android/server/display/RampRateController;->mHbmMaxNit:F

    .line 602
    .end local v0  # "nits":[F
    :goto_5e
    return-void
.end method

.method private updateRatePriority(Lcom/android/server/display/brightness/BrightnessReason;Lcom/android/server/display/brightness/BrightnessReason;FFZZ)V
    .registers 34
    .param p1, "reasonTemp"  # Lcom/android/server/display/brightness/BrightnessReason;
    .param p2, "reason"  # Lcom/android/server/display/brightness/BrightnessReason;
    .param p3, "targetBrightness"  # F
    .param p4, "targetSdrBrightness"  # F
    .param p5, "animating"  # Z
    .param p6, "readyToAnimate"  # Z

    .line 202
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    iget v4, v0, Lcom/android/server/display/RampRateController;->mCurrentPolicy:I

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-ne v4, v7, :cond_10

    move v4, v6

    goto :goto_11

    :cond_10
    const/4 v4, 0x0

    .line 203
    .local v4, "isPolicyBright":Z
    :goto_11
    iget v8, v0, Lcom/android/server/display/RampRateController;->mCurrentPolicy:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_18

    move v8, v6

    goto :goto_19

    :cond_18
    const/4 v8, 0x0

    .line 204
    .local v8, "isPolicyDim":Z
    :goto_19
    iget v10, v0, Lcom/android/server/display/RampRateController;->mCurrentPolicy:I

    if-ne v10, v6, :cond_1f

    move v10, v6

    goto :goto_20

    :cond_1f
    const/4 v10, 0x0

    .line 205
    .local v10, "isPolicyDoze":Z
    :goto_20
    iget v11, v0, Lcom/android/server/display/RampRateController;->mPreviousPolicy:I

    if-ne v11, v7, :cond_26

    move v11, v6

    goto :goto_27

    :cond_26
    const/4 v11, 0x0

    .line 206
    .local v11, "isPreviousPolicyBright":Z
    :goto_27
    iget v12, v0, Lcom/android/server/display/RampRateController;->mPreviousPolicy:I

    if-ne v12, v6, :cond_2d

    move v12, v6

    goto :goto_2e

    :cond_2d
    const/4 v12, 0x0

    .line 207
    .local v12, "isPreviousPolicyDoze":Z
    :goto_2e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v13

    if-ne v13, v6, :cond_36

    move v13, v6

    goto :goto_37

    :cond_36
    const/4 v13, 0x0

    .line 208
    .local v13, "isReasonManual":Z
    :goto_37
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v14

    const/16 v15, 0x40

    and-int/2addr v14, v15

    if-eqz v14, :cond_42

    move v14, v6

    goto :goto_43

    :cond_42
    const/4 v14, 0x0

    .line 209
    .local v14, "isModifierBcbc":Z
    :goto_43
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v16

    and-int/lit8 v16, v16, 0x40

    if-eqz v16, :cond_4e

    move/from16 v16, v6

    goto :goto_50

    :cond_4e
    const/16 v16, 0x0

    .line 210
    .local v16, "isModifierTempBcbc":Z
    :goto_50
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v5

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_5a

    move v5, v6

    goto :goto_5b

    :cond_5a
    const/4 v5, 0x0

    .line 211
    .local v5, "isModifierThermal":Z
    :goto_5b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v15

    and-int/lit16 v15, v15, 0x100

    if-eqz v15, :cond_65

    move v15, v6

    goto :goto_66

    :cond_65
    const/4 v15, 0x0

    .line 212
    .local v15, "isModifierTempThermal":Z
    :goto_66
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v18

    const/4 v7, 0x4

    and-int/lit8 v18, v18, 0x4

    if-eqz v18, :cond_72

    move/from16 v18, v6

    goto :goto_74

    :cond_72
    const/16 v18, 0x0

    .line 213
    .local v18, "isModifierTempHdr":Z
    :goto_74
    move/from16 v20, v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v7

    move/from16 v21, v9

    const/4 v9, 0x6

    if-ne v7, v9, :cond_81

    move v7, v6

    goto :goto_82

    :cond_81
    const/4 v7, 0x0

    .line 214
    .local v7, "isReasonTempOverride":Z
    :goto_82
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v9

    const/4 v6, 0x7

    if-ne v9, v6, :cond_8b

    const/4 v6, 0x1

    goto :goto_8c

    :cond_8b
    const/4 v6, 0x0

    .line 215
    .local v6, "isReasonTemporary":Z
    :goto_8c
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v9

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_96

    const/4 v9, 0x1

    goto :goto_97

    :cond_96
    const/4 v9, 0x0

    .line 216
    .local v9, "isModifierHdr":Z
    :goto_97
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v22

    and-int/lit8 v22, v22, 0x2

    if-eqz v22, :cond_a2

    const/16 v17, 0x1

    goto :goto_a4

    :cond_a2
    const/16 v17, 0x0

    .line 218
    .local v17, "isModifierTempLowPower":Z
    :goto_a4
    move/from16 v22, v4

    .end local v4  # "isPolicyBright":Z
    .local v22, "isPolicyBright":Z
    iget-boolean v4, v0, Lcom/android/server/display/RampRateController;->mDebug:Z

    if-eqz v4, :cond_13a

    .line 219
    iget-object v4, v0, Lcom/android/server/display/RampRateController;->TAG:Ljava/lang/String;

    move/from16 v23, v5

    .end local v5  # "isModifierThermal":Z
    .local v23, "isModifierThermal":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v6

    .end local v6  # "isReasonTemporary":Z
    .local v24, "isReasonTemporary":Z
    const-string/jumbo v6, "updateRatePriority mCurrentPolicy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/server/display/RampRateController;->mCurrentPolicy:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPreviousPolicy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/server/display/RampRateController;->mPreviousPolicy:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPreviousDisplayState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/server/display/RampRateController;->mPreviousDisplayState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", targetBrightness:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mBrightness:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/server/display/RampRateController;->mBrightness:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reasonTemp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 223
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reasonTempModifier:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reasonModifier:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 225
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", animating:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 219
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13e

    .line 218
    .end local v23  # "isModifierThermal":Z
    .end local v24  # "isReasonTemporary":Z
    .restart local v5  # "isModifierThermal":Z
    .restart local v6  # "isReasonTemporary":Z
    :cond_13a
    move/from16 v23, v5

    move/from16 v24, v6

    .line 229
    .end local v5  # "isModifierThermal":Z
    .end local v6  # "isReasonTemporary":Z
    .restart local v23  # "isModifierThermal":Z
    .restart local v24  # "isReasonTemporary":Z
    :goto_13e
    if-eqz v22, :cond_144

    if-nez v16, :cond_14c

    if-nez v14, :cond_14c

    :cond_144
    iget-object v4, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    .line 231
    invoke-static {v4}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedBcbcDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z

    move-result v4

    if-eqz v4, :cond_16d

    .line 232
    :cond_14c
    iget-boolean v4, v0, Lcom/android/server/display/RampRateController;->mBrightnessChanged:Z

    if-nez v4, :cond_159

    if-nez v3, :cond_159

    .line 233
    iget-object v4, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$maddRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    goto :goto_16d

    .line 234
    :cond_159
    iget-object v4, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v4}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedBcbcDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z

    move-result v4

    if-eqz v4, :cond_16d

    iget-boolean v4, v0, Lcom/android/server/display/RampRateController;->mBrightnessChanged:Z

    if-nez v4, :cond_167

    if-eqz v13, :cond_16d

    .line 236
    :cond_167
    iget-object v4, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 240
    :cond_16d
    :goto_16d
    if-eqz v22, :cond_173

    if-nez v15, :cond_17b

    if-nez v23, :cond_17b

    :cond_173
    iget-object v4, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    .line 242
    invoke-static {v4}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedThermalDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z

    move-result v4

    if-eqz v4, :cond_1a9

    .line 243
    :cond_17b
    iget-boolean v4, v0, Lcom/android/server/display/RampRateController;->mBrightnessChanged:Z

    if-nez v4, :cond_193

    iget-boolean v4, v0, Lcom/android/server/display/RampRateController;->mAnimateValueChanged:Z

    if-nez v4, :cond_193

    if-nez v3, :cond_193

    .line 244
    iget-object v4, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 245
    iget-object v4, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    move/from16 v5, v21

    invoke-static {v4, v5}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$maddRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    goto :goto_1a9

    .line 246
    :cond_193
    iget-object v4, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v4}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedThermalDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z

    move-result v4

    if-eqz v4, :cond_1a9

    iget-boolean v4, v0, Lcom/android/server/display/RampRateController;->mBrightnessChanged:Z

    if-nez v4, :cond_1a3

    iget-boolean v4, v0, Lcom/android/server/display/RampRateController;->mAnimateValueChanged:Z

    if-eqz v4, :cond_1a9

    .line 248
    :cond_1a3
    iget-object v4, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 252
    :cond_1a9
    :goto_1a9
    if-eqz v22, :cond_1ca

    iget-object v4, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    .line 253
    invoke-static {v4}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedHdrDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z

    move-result v4

    if-nez v4, :cond_1bd

    if-nez v18, :cond_1b9

    if-eqz v9, :cond_1ca

    if-eqz v17, :cond_1ca

    :cond_1b9
    iget-boolean v4, v0, Lcom/android/server/display/RampRateController;->mAnimateValueChanged:Z

    if-eqz v4, :cond_1ca

    .line 256
    :cond_1bd
    iget-object v4, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 258
    iget-object v4, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$maddRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 261
    :cond_1ca
    if-eqz v22, :cond_1e8

    iget-object v4, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    .line 262
    invoke-static {v4}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedOverrideDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z

    move-result v4

    if-nez v4, :cond_1da

    if-eqz v7, :cond_1e8

    iget-boolean v4, v0, Lcom/android/server/display/RampRateController;->mBrightnessChanged:Z

    if-eqz v4, :cond_1e8

    .line 264
    :cond_1da
    iget-object v4, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/16 v5, 0xb

    invoke-static {v4, v5}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 267
    iget-object v4, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$maddRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 270
    :cond_1e8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 271
    .local v4, "currentTime":J
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayPowerControllerImpl;->isFullAodStateForBrightness()Z

    move-result v6

    .line 272
    .local v6, "isFullAod":Z
    if-eqz v22, :cond_200

    iget v3, v0, Lcom/android/server/display/RampRateController;->mPreviousDisplayState:I

    invoke-static {v3}, Landroid/view/Display;->isDozeState(I)Z

    move-result v3

    if-nez v3, :cond_210

    if-eqz v12, :cond_200

    if-nez v6, :cond_210

    :cond_200
    iget-object v3, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    .line 274
    invoke-static {v3, v4, v5}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedDozeDimming(Lcom/android/server/display/RampRateController$RateStateRecord;J)Z

    move-result v3

    if-nez v3, :cond_210

    iget v3, v0, Lcom/android/server/display/RampRateController;->mDisplayState:I

    .line 275
    invoke-static {v3}, Landroid/view/Display;->isDozeState(I)Z

    move-result v3

    if-eqz v3, :cond_212

    :cond_210
    if-eqz v18, :cond_230

    :cond_212
    if-eqz v10, :cond_21b

    if-eqz v11, :cond_21b

    if-eqz v6, :cond_21b

    move/from16 v19, v6

    goto :goto_232

    .line 300
    :cond_21b
    iget-object v3, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v3}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedDozeDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z

    move-result v3

    if-eqz v3, :cond_22d

    .line 301
    iget-object v3, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    move/from16 v19, v6

    move/from16 v6, v20

    .end local v6  # "isFullAod":Z
    .local v19, "isFullAod":Z
    invoke-static {v3, v6}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    goto :goto_285

    .line 300
    .end local v19  # "isFullAod":Z
    .restart local v6  # "isFullAod":Z
    :cond_22d
    move/from16 v19, v6

    .end local v6  # "isFullAod":Z
    .restart local v19  # "isFullAod":Z
    goto :goto_285

    .line 275
    .end local v19  # "isFullAod":Z
    .restart local v6  # "isFullAod":Z
    :cond_230
    move/from16 v19, v6

    .line 278
    .end local v6  # "isFullAod":Z
    .restart local v19  # "isFullAod":Z
    :goto_232
    iget-object v3, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/16 v6, 0x1b

    invoke-static {v3, v6}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 282
    if-eqz v22, :cond_255

    if-eqz v12, :cond_255

    .line 283
    iget v3, v0, Lcom/android/server/display/RampRateController;->mBrightness:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_248

    .line 284
    const/16 v3, 0x15e

    iput v3, v0, Lcom/android/server/display/RampRateController;->mAnimationDurationDozeDimming:I

    goto :goto_24c

    .line 286
    :cond_248
    iget v3, v0, Lcom/android/server/display/RampRateController;->mAnimationDurationManualBrightness:I

    iput v3, v0, Lcom/android/server/display/RampRateController;->mAnimationDurationDozeDimming:I

    .line 288
    :goto_24c
    iget-object v3, v0, Lcom/android/server/display/RampRateController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "now is doze change to on"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_276

    .line 289
    :cond_255
    if-eqz v10, :cond_266

    if-eqz v11, :cond_266

    .line 290
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "now is on change to doze"

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/16 v3, 0x1c2

    iput v3, v0, Lcom/android/server/display/RampRateController;->mAnimationDurationDozeDimming:I

    goto :goto_276

    .line 292
    :cond_266
    if-eqz v10, :cond_276

    if-eqz v12, :cond_276

    .line 293
    iget-object v3, v0, Lcom/android/server/display/RampRateController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "now is doze change to doze"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/16 v3, 0x1c2

    iput v3, v0, Lcom/android/server/display/RampRateController;->mAnimationDurationDozeDimming:I

    .line 296
    :cond_276
    :goto_276
    if-nez p6, :cond_27a

    if-eqz v19, :cond_285

    .line 297
    :cond_27a
    iget-object v3, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v3, v4, v5}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetDozeDimmingTimeMills(Lcom/android/server/display/RampRateController$RateStateRecord;J)V

    .line 298
    iget-object v3, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/4 v6, 0x4

    invoke-static {v3, v6}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$maddRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 304
    :cond_285
    :goto_285
    if-eqz v22, :cond_289

    if-nez v24, :cond_291

    :cond_289
    iget-object v3, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    .line 305
    invoke-static {v3}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedTemporaryDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z

    move-result v3

    if-eqz v3, :cond_2c5

    .line 306
    :cond_291
    move-wide/from16 v25, v4

    .end local v4  # "currentTime":J
    .local v25, "currentTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 307
    .local v3, "now":J
    iget-object v5, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/16 v6, 0x1f

    invoke-static {v5, v6}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 312
    iget-boolean v5, v0, Lcom/android/server/display/RampRateController;->mSupportManualDimming:Z

    if-eqz v5, :cond_2c7

    .line 313
    const/16 v5, 0x20

    if-nez v24, :cond_2ba

    .line 314
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v3, v4, v1, v2}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedTemporaryDimming(Lcom/android/server/display/RampRateController$RateStateRecord;JFF)Z

    move-result v6

    if-eqz v6, :cond_2b4

    .line 316
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v5}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$maddRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    goto :goto_2c7

    .line 318
    :cond_2b4
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v5}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    goto :goto_2c7

    .line 321
    :cond_2ba
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v3, v4}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetStartTemporaryDimmingTimeMills(Lcom/android/server/display/RampRateController$RateStateRecord;J)V

    .line 322
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v5}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$maddRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    goto :goto_2c7

    .line 305
    .end local v3  # "now":J
    .end local v25  # "currentTime":J
    .restart local v4  # "currentTime":J
    :cond_2c5
    move-wide/from16 v25, v4

    .line 327
    .end local v4  # "currentTime":J
    .restart local v25  # "currentTime":J
    :cond_2c7
    :goto_2c7
    if-nez v8, :cond_2e1

    iget v3, v0, Lcom/android/server/display/RampRateController;->mPreviousPolicy:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2d1

    if-eqz v22, :cond_2d1

    goto :goto_2e1

    .line 336
    :cond_2d1
    iget-object v3, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v3}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedDimDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z

    move-result v3

    if-eqz v3, :cond_2ef

    .line 337
    iget-object v3, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    goto :goto_2ef

    .line 329
    :cond_2e1
    :goto_2e1
    iget-object v3, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/16 v4, 0x3f

    invoke-static {v3, v4}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 335
    iget-object v3, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$maddRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 340
    :cond_2ef
    :goto_2ef
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_304

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_304

    iget v4, v0, Lcom/android/server/display/RampRateController;->mBrightness:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_304

    iget v4, v0, Lcom/android/server/display/RampRateController;->mSdrBrightness:F

    cmpl-float v3, v4, v3

    if-nez v3, :cond_30b

    .line 342
    :cond_304
    iget-object v3, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/16 v4, 0x7f

    invoke-static {v3, v4}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 344
    :cond_30b
    return-void
.end method

.method private updateSlowLinearRampRate()V
    .registers 8

    .line 680
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getNits()[F

    move-result-object v0

    .line 681
    .local v0, "nits":[F
    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightness()[F

    move-result-object v1

    .line 683
    .local v1, "brightness":[F
    const/16 v2, 0xa

    .line 684
    .local v2, "slowLinearRampRate":I
    if-eqz v0, :cond_54

    array-length v3, v0

    if-eqz v3, :cond_54

    if-eqz v1, :cond_54

    array-length v3, v1

    if-eqz v3, :cond_54

    .line 685
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/RampRateController;->mSlowLinearBrightnessList:Ljava/util/List;

    .line 686
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/RampRateController;->mSlowLinearRampRateList:Ljava/util/List;

    .line 687
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_27
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_54

    .line 688
    iget-object v4, p0, Lcom/android/server/display/RampRateController;->mSlowLinearBrightnessList:Ljava/util/List;

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    int-to-float v4, v2

    add-int/lit8 v5, v3, 0x1

    aget v5, v1, v5

    aget v6, v1, v3

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    aget v5, v0, v5

    aget v6, v0, v3

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    .line 691
    .local v4, "rate":F
    iget-object v5, p0, Lcom/android/server/display/RampRateController;->mSlowLinearRampRateList:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    .end local v4  # "rate":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 694
    .end local v3  # "i":I
    :cond_54
    return-void
.end method


# virtual methods
.method protected addHdrRateModifier(Z)V
    .registers 5
    .param p1, "isEntry"  # Z

    .line 781
    const/4 v0, 0x1

    if-nez p1, :cond_f

    iget v1, p0, Lcom/android/server/display/RampRateController;->mCurrentPolicy:I

    if-ne v1, v0, :cond_f

    .line 782
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->TAG:Ljava/lang/String;

    const-string v1, "addHdrRateModifier not use hdr dimming!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void

    .line 785
    :cond_f
    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/16 v2, 0x7f

    invoke-static {v1, v2}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 786
    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$maddRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 787
    if-eqz p1, :cond_22

    .line 788
    iput-boolean v0, p0, Lcom/android/server/display/RampRateController;->mAppliedHdrRateDueToEntry:Z

    goto :goto_24

    .line 790
    :cond_22
    iput-boolean v0, p0, Lcom/android/server/display/RampRateController;->mAppliedHdrRateDueToExit:Z

    .line 792
    :goto_24
    return-void
.end method

.method protected addOverrideRateModifier(Z)V
    .registers 4
    .param p1, "isEntry"  # Z

    .line 795
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 796
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$maddRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 797
    const/4 v0, 0x1

    if-eqz p1, :cond_14

    .line 798
    iput-boolean v0, p0, Lcom/android/server/display/RampRateController;->mAppliedOverrideRateDueToEntry:Z

    goto :goto_16

    .line 800
    :cond_14
    iput-boolean v0, p0, Lcom/android/server/display/RampRateController;->mAppliedOverrideRateDueToExit:Z

    .line 802
    :goto_16
    return-void
.end method

.method protected clearAllRateModifier()V
    .registers 3

    .line 777
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 778
    return-void
.end method

.method protected clearBcbcModifier()V
    .registers 3

    .line 761
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 762
    return-void
.end method

.method protected clearThermalModifier()V
    .registers 3

    .line 765
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 766
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 846
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_DPC:Z

    iput-boolean v0, p0, Lcom/android/server/display/RampRateController;->mDebug:Z

    .line 847
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 848
    const-string v0, "Ramp Rate Controller:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRateType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v1}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mgetRateType(Lcom/android/server/display/RampRateController$RateStateRecord;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentRateReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    iget-object v2, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v2}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$fgetSCREEN_BRIGHTNESS_FLOAT_NAME(Lcom/android/server/display/RampRateController$RateStateRecord;)Ljava/lang/String;

    move-result-object v2

    .line 851
    invoke-static {v1, v2}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mgetCurrentRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 850
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPreviousRateReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    iget-object v2, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v2}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$fgetSCREEN_BRIGHTNESS_FLOAT_NAME(Lcom/android/server/display/RampRateController$RateStateRecord;)Ljava/lang/String;

    move-result-object v2

    .line 853
    invoke-static {v1, v2}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mgetPreviousRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 852
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentSdrRateReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    iget-object v2, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v2}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$fgetSCREEN_SDR_BRIGHTNESS_FLOAT_NAME(Lcom/android/server/display/RampRateController$RateStateRecord;)Ljava/lang/String;

    move-result-object v2

    .line 855
    invoke-static {v1, v2}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mgetCurrentRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 854
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPreviousSdrRateReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    iget-object v2, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v2}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$fgetSCREEN_SDR_BRIGHTNESS_FLOAT_NAME(Lcom/android/server/display/RampRateController$RateStateRecord;)Ljava/lang/String;

    move-result-object v2

    .line 857
    invoke-static {v1, v2}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mgetPreviousRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 856
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRateModifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v1}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mgetRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSlowLinearBrightnessList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mSlowLinearBrightnessList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSlowLinearRampRateList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/RampRateController;->mSlowLinearRampRateList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 861
    return-void
.end method

.method public getAnimationTime()F
    .registers 2

    .line 805
    iget v0, p0, Lcom/android/server/display/RampRateController;->mAnimationTime:F

    return v0
.end method

.method public isAutomaticBrightness()Z
    .registers 3

    .line 842
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v0}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$fgetmCurrentRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected isTemporaryDimming()Z
    .registers 2

    .line 757
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v0}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedTemporaryDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z

    move-result v0

    return v0
.end method

.method protected onAnimateValueChanged(ZZ)V
    .registers 4
    .param p1, "changed"  # Z
    .param p2, "isAnimating"  # Z

    .line 741
    if-nez p1, :cond_17

    if-nez p2, :cond_17

    iget-boolean v0, p0, Lcom/android/server/display/RampRateController;->mAppliedHdrRateDueToEntry:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/display/RampRateController;->mAppliedHdrRateDueToExit:Z

    if-eqz v0, :cond_17

    :cond_c
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    .line 744
    invoke-static {v0}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedHdrDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 745
    invoke-direct {p0}, Lcom/android/server/display/RampRateController;->clearHdrRateModifier()V

    .line 747
    :cond_17
    iput-boolean p1, p0, Lcom/android/server/display/RampRateController;->mAnimateValueChanged:Z

    .line 748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/RampRateController;->mAppliedHdrRateDueToEntry:Z

    .line 749
    iput-boolean v0, p0, Lcom/android/server/display/RampRateController;->mAppliedHdrRateDueToExit:Z

    .line 750
    return-void
.end method

.method protected onBrightnessChanged(ZZ)V
    .registers 4
    .param p1, "changed"  # Z
    .param p2, "isAnimating"  # Z

    .line 729
    if-nez p1, :cond_17

    if-nez p2, :cond_17

    iget-boolean v0, p0, Lcom/android/server/display/RampRateController;->mAppliedOverrideRateDueToEntry:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/display/RampRateController;->mAppliedOverrideRateDueToExit:Z

    if-eqz v0, :cond_17

    :cond_c
    iget-object v0, p0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    .line 732
    invoke-static {v0}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedOverrideDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 733
    invoke-direct {p0}, Lcom/android/server/display/RampRateController;->clearOverrideRateModifier()V

    .line 735
    :cond_17
    iput-boolean p1, p0, Lcom/android/server/display/RampRateController;->mBrightnessChanged:Z

    .line 736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/RampRateController;->mAppliedOverrideRateDueToEntry:Z

    .line 737
    iput-boolean v0, p0, Lcom/android/server/display/RampRateController;->mAppliedOverrideRateDueToExit:Z

    .line 738
    return-void
.end method

.method protected updateBrightnessRate(Ljava/lang/String;FFF)F
    .registers 21
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "currentBrightness"  # F
    .param p3, "targetBrightness"  # F
    .param p4, "rate"  # F

    .line 348
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v1, p4

    .line 349
    .local v1, "finalRate":F
    iget v2, v0, Lcom/android/server/display/RampRateController;->mBrightness:F

    .line 350
    .local v2, "startBrightness":F
    sget-object v3, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    invoke-virtual {v3}, Landroid/util/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 351
    iget v2, v0, Lcom/android/server/display/RampRateController;->mSdrBrightness:F

    move v3, v2

    goto :goto_1d

    .line 350
    :cond_1c
    move v3, v2

    .line 353
    .end local v2  # "startBrightness":F
    .local v3, "startBrightness":F
    :goto_1d
    cmpl-float v2, v5, v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lez v2, :cond_25

    move v2, v9

    goto :goto_26

    :cond_25
    move v2, v8

    .line 354
    .local v2, "increase":Z
    :goto_26
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mresetRateType(Lcom/android/server/display/RampRateController$RateStateRecord;)V

    .line 355
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    iget-object v10, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v10, v7}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mgetCurrentRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;Ljava/lang/String;)I

    move-result v10

    invoke-static {v6, v10, v7}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetPreviousRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;ILjava/lang/String;)V

    .line 356
    iget-boolean v6, v0, Lcom/android/server/display/RampRateController;->mSlowChange:Z

    const/4 v10, 0x2

    if-eqz v6, :cond_41

    .line 357
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v9, v7}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetCurrentRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;ILjava/lang/String;)V

    goto :goto_46

    .line 359
    :cond_41
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v10, v7}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetCurrentRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;ILjava/lang/String;)V

    .line 362
    :goto_46
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedDimDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z

    move-result v6

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v13, 0x3

    if-eqz v6, :cond_5e

    .line 363
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v9}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetRateTypeIfNeeded(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 364
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v13, v7}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetRateReasonIfNeeded(Lcom/android/server/display/RampRateController$RateStateRecord;ILjava/lang/String;)V

    goto/16 :goto_14c

    .line 365
    :cond_5e
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedDozeDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z

    move-result v6

    const/4 v14, 0x6

    if-eqz v6, :cond_75

    .line 366
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v14}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetRateTypeIfNeeded(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 367
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/16 v10, 0xc

    invoke-static {v6, v10, v7}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetRateReasonIfNeeded(Lcom/android/server/display/RampRateController$RateStateRecord;ILjava/lang/String;)V

    goto/16 :goto_14c

    .line 368
    :cond_75
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedTemporaryDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z

    move-result v6

    const/4 v15, 0x4

    if-eqz v6, :cond_8f

    .line 369
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v8, v7}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetCurrentRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;ILjava/lang/String;)V

    .line 370
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v10}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetRateTypeIfNeeded(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 371
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v15, v7}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetRateReasonIfNeeded(Lcom/android/server/display/RampRateController$RateStateRecord;ILjava/lang/String;)V

    goto/16 :goto_14c

    .line 372
    :cond_8f
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedOverrideDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 373
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v13}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetRateTypeIfNeeded(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 374
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/4 v10, 0x5

    invoke-static {v6, v10, v7}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetRateReasonIfNeeded(Lcom/android/server/display/RampRateController$RateStateRecord;ILjava/lang/String;)V

    goto/16 :goto_14c

    .line 375
    :cond_a4
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedHdrDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 376
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v15}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetRateType(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 377
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v14, v7}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetCurrentRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;ILjava/lang/String;)V

    goto/16 :goto_14c

    .line 378
    :cond_b8
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedThermalDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z

    move-result v6

    const/16 v10, 0xa

    if-eqz v6, :cond_ce

    .line 379
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v10, v7}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetCurrentRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;ILjava/lang/String;)V

    .line 380
    invoke-direct {v0, v4}, Lcom/android/server/display/RampRateController;->getSlowLinearRampRate(F)F

    move-result v1

    move v6, v1

    goto/16 :goto_14d

    .line 381
    :cond_ce
    iget-boolean v6, v0, Lcom/android/server/display/RampRateController;->mSlowChange:Z

    if-eqz v6, :cond_e7

    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mappliedBcbcDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z

    move-result v6

    if-eqz v6, :cond_e7

    .line 382
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/16 v10, 0xb

    invoke-static {v6, v10, v7}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetCurrentRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;ILjava/lang/String;)V

    .line 383
    invoke-direct {v0, v4}, Lcom/android/server/display/RampRateController;->getSlowLinearRampRate(F)F

    move-result v1

    move v6, v1

    goto :goto_14d

    .line 384
    :cond_e7
    iget-boolean v6, v0, Lcom/android/server/display/RampRateController;->mSlowChange:Z

    if-eqz v6, :cond_108

    .line 385
    sget-object v6, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    invoke-virtual {v6}, Landroid/util/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 384
    xor-int/2addr v6, v9

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/display/RampRateController;->appliedFastRate(FFI)Z

    move-result v6

    if-eqz v6, :cond_108

    .line 386
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v13}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetRateTypeIfNeeded(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 387
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    const/4 v10, 0x7

    invoke-static {v6, v10, v7}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetCurrentRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;ILjava/lang/String;)V

    goto :goto_14c

    .line 388
    :cond_108
    iget-boolean v6, v0, Lcom/android/server/display/RampRateController;->mSlowChange:Z

    const/16 v14, 0x9

    if-eqz v6, :cond_138

    cmpl-float v6, v1, v12

    if-eqz v6, :cond_138

    .line 389
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v6}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v6

    if-ne v6, v10, :cond_12d

    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 390
    invoke-virtual {v6}, Lcom/android/server/display/DisplayPowerControllerImpl;->isRearScreenDevice()Z

    move-result v6

    if-eqz v6, :cond_12d

    .line 391
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v13}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetRateTypeIfNeeded(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 392
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v14, v7}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetRateReasonIfNeeded(Lcom/android/server/display/RampRateController$RateStateRecord;ILjava/lang/String;)V

    goto :goto_14c

    .line 394
    :cond_12d
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v11, v7}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetCurrentRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;ILjava/lang/String;)V

    .line 395
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/display/RampRateController;->getRampRate(ZFFF)F

    move-result v1

    move v6, v1

    goto :goto_14d

    .line 397
    :cond_138
    cmpl-float v6, v1, v12

    if-eqz v6, :cond_147

    .line 398
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v13}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetRateTypeIfNeeded(Lcom/android/server/display/RampRateController$RateStateRecord;I)V

    .line 399
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v14, v7}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetRateReasonIfNeeded(Lcom/android/server/display/RampRateController$RateStateRecord;ILjava/lang/String;)V

    goto :goto_14c

    .line 401
    :cond_147
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v8, v7}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$msetCurrentRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;ILjava/lang/String;)V

    .line 406
    :goto_14c
    move v6, v1

    .end local v1  # "finalRate":F
    .local v6, "finalRate":F
    :goto_14d
    invoke-static {v4}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    .line 407
    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v10

    const-string/jumbo v13, "updateBrightnessRate: "

    if-ne v1, v10, :cond_1a0

    .line 408
    cmpl-float v1, v6, v12

    if-eqz v1, :cond_1a0

    .line 409
    iget-boolean v1, v0, Lcom/android/server/display/RampRateController;->mSlowChange:Z

    if-eqz v1, :cond_165

    iget v1, v0, Lcom/android/server/display/RampRateController;->mBrightnessRampRateSlow:F

    goto :goto_167

    :cond_165
    iget v1, v0, Lcom/android/server/display/RampRateController;->mBrightnessRampRateFast:F

    .line 410
    .end local v6  # "finalRate":F
    .restart local v1  # "finalRate":F
    :goto_167
    iget-boolean v6, v0, Lcom/android/server/display/RampRateController;->mDebug:Z

    if-eqz v6, :cond_19f

    .line 411
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": using current rate to avoid frequent animation execution: rate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", currentBrightness: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", targetBrightness: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_19f
    return v1

    .line 421
    .end local v1  # "finalRate":F
    .restart local v6  # "finalRate":F
    :cond_1a0
    iget-object v1, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v1}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mgetRateType(Lcom/android/server/display/RampRateController$RateStateRecord;)I

    move-result v1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/RampRateController;->getRampRate(IZFFFF)F

    move-result v1

    .line 423
    .end local v6  # "finalRate":F
    .restart local v1  # "finalRate":F
    iget-object v5, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v5, v7}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mgetPreviousRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;Ljava/lang/String;)I

    move-result v5

    .line 424
    .local v5, "previousRateReason":I
    iget-object v6, v0, Lcom/android/server/display/RampRateController;->mRateRecord:Lcom/android/server/display/RampRateController$RateStateRecord;

    invoke-static {v6, v7}, Lcom/android/server/display/RampRateController$RateStateRecord;->-$$Nest$mgetCurrentRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;Ljava/lang/String;)I

    move-result v6

    .line 425
    .local v6, "currentRateReason":I
    if-ne v6, v5, :cond_1bc

    iget-boolean v10, v0, Lcom/android/server/display/RampRateController;->mDebug:Z

    if-eqz v10, :cond_259

    .line 426
    :cond_1bc
    iget-object v10, v0, Lcom/android/server/display/RampRateController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": brightness rate changing from ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 428
    invoke-direct {v0, v5}, Lcom/android/server/display/RampRateController;->reasonToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] to ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 429
    invoke-direct {v0, v6}, Lcom/android/server/display/RampRateController;->reasonToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "], rate: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mCurrentReasonStartBrightness:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/display/RampRateController;->mCurrentReasonStartBrightness:[F

    .line 431
    sget-object v14, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    invoke-virtual {v14}, Landroid/util/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_207

    .line 432
    move v14, v8

    goto :goto_208

    :cond_207
    move v14, v9

    :goto_208
    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 426
    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v10, v0, Lcom/android/server/display/RampRateController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v10, v7}, Lcom/android/server/display/DisplayPowerControllerImpl;->isAnimating(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_245

    if-ne v6, v11, :cond_245

    iget-object v10, v0, Lcom/android/server/display/RampRateController;->mCurrentReasonStartBrightness:[F

    .line 435
    sget-object v11, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    invoke-virtual {v11}, Landroid/util/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22f

    .line 436
    move v11, v8

    goto :goto_230

    :cond_22f
    move v11, v9

    :goto_230
    aget v10, v10, v11

    cmpl-float v10, v4, v10

    if-eqz v10, :cond_245

    .line 437
    iget-object v10, v0, Lcom/android/server/display/RampRateController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    sget-object v11, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    .line 438
    invoke-virtual {v11}, Landroid/util/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 437
    invoke-virtual {v10, v11, v4}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateCurrentLogicalNit(ZF)V

    .line 440
    :cond_245
    if-eq v6, v5, :cond_259

    .line 441
    iget-object v10, v0, Lcom/android/server/display/RampRateController;->mCurrentReasonStartBrightness:[F

    sget-object v11, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    invoke-virtual {v11}, Landroid/util/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_256

    .line 442
    goto :goto_257

    :cond_256
    move v8, v9

    :goto_257
    aput v3, v10, v8

    .line 445
    :cond_259
    return v1
.end method

.method protected updateBrightnessState(ZZZFFFFIIILcom/android/server/display/brightness/BrightnessReason;Lcom/android/server/display/brightness/BrightnessReason;I)V
    .registers 28
    .param p1, "animating"  # Z
    .param p2, "readyToAnimate"  # Z
    .param p3, "slowChange"  # Z
    .param p4, "brightness"  # F
    .param p5, "sdrBrightness"  # F
    .param p6, "targetBrightness"  # F
    .param p7, "targetSdrBrightness"  # F
    .param p8, "currentPolicy"  # I
    .param p9, "previousPolicy"  # I
    .param p10, "oldDisplayState"  # I
    .param p11, "reasonTemp"  # Lcom/android/server/display/brightness/BrightnessReason;
    .param p12, "reason"  # Lcom/android/server/display/brightness/BrightnessReason;
    .param p13, "displayState"  # I

    .line 184
    move/from16 v0, p3

    iput-boolean v0, p0, Lcom/android/server/display/RampRateController;->mSlowChange:Z

    .line 185
    move/from16 v1, p4

    iput v1, p0, Lcom/android/server/display/RampRateController;->mBrightness:F

    .line 186
    move/from16 v2, p5

    iput v2, p0, Lcom/android/server/display/RampRateController;->mSdrBrightness:F

    .line 187
    move/from16 v6, p6

    iput v6, p0, Lcom/android/server/display/RampRateController;->mTargetBrightness:F

    .line 188
    move/from16 v7, p7

    iput v7, p0, Lcom/android/server/display/RampRateController;->mTargetSdrBrightness:F

    .line 189
    move/from16 v10, p8

    iput v10, p0, Lcom/android/server/display/RampRateController;->mCurrentPolicy:I

    .line 190
    move/from16 v11, p9

    iput v11, p0, Lcom/android/server/display/RampRateController;->mPreviousPolicy:I

    .line 191
    move/from16 v12, p10

    iput v12, p0, Lcom/android/server/display/RampRateController;->mPreviousDisplayState:I

    .line 192
    move/from16 v13, p13

    iput v13, p0, Lcom/android/server/display/RampRateController;->mDisplayState:I

    .line 193
    iget-object v3, p0, Lcom/android/server/display/RampRateController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    move-object/from16 v4, p11

    invoke-virtual {v3, v4}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 194
    iget-object v3, p0, Lcom/android/server/display/RampRateController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    move-object/from16 v5, p12

    invoke-virtual {v3, v5}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 195
    move-object v3, p0

    move v8, p1

    move/from16 v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/display/RampRateController;->updateRatePriority(Lcom/android/server/display/brightness/BrightnessReason;Lcom/android/server/display/brightness/BrightnessReason;FFZZ)V

    .line 197
    return-void
.end method
