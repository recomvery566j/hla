# classes.dex

.class public Lcom/android/server/display/BrightnessCurve;
.super Ljava/lang/Object;
.source "BrightnessCurve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessCurve$Curve;,
        Lcom/android/server/display/BrightnessCurve$DarkLightCurve;,
        Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;,
        Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;,
        Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;,
        Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;
    }
.end annotation


# static fields
.field private static final DARK_LIGHT_CURVE_HEAD_LUX_INDEX:I = 0x0

.field private static final DARK_LIGHT_CURVE_RATIO:F = 0.7f

.field private static final DARK_LIGHT_CURVE_TAIL_LUX_INDEX:I = 0x1

.field private static final FIRST_OUTDOOR_LIGHT_CURVE_TAIL_INDEX:I = 0x3

.field private static final INDOOR_LIGHT_CURVE_TAIL_LUX_INDEX:I = 0x2

.field public static final IS_CN_BUILD:Z

.field private static final SECOND_OUTDOOR_LIGHT_CURVE_TAIL_INDEX:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BrightnessCurve"


# instance fields
.field private mBrightness:[F

.field private final mBrightnessCurveAlgoAvailable:Z

.field private final mBrightnessMinTan:F

.field private mBrightnessToNit:Landroid/util/Spline;

.field private mConfig:Landroid/hardware/display/BrightnessConfiguration;

.field private mCurrentCurveInterval:[F

.field private final mCurveAnchorPointLux:F

.field private final mCustomBrighteningCurveInterval:[F

.field private final mCustomDarkeningCurveInterval:[F

.field private final mDarkLightCurvePullUpLimitNit:F

.field private final mDarkLightCurvePullUpMaxTan:F

.field private mDefault:Landroid/hardware/display/BrightnessConfiguration;

.field private final mDefaultCurveInterval:[F

.field private mIdx:I

.field private final mIndoorLightCurveTan:F

.field private mLux:[F

.field private mLuxToNit:Landroid/util/Spline;

.field private mLuxToNitsDefault:Landroid/util/Spline;

.field private mMaxLux:F

.field private mMinNit:F

.field private mNitToBrightness:Landroid/util/Spline;

.field private final mSecondOutdoorCurveBrightenMinTan:F

.field private final mThirdOutdoorCurveBrightenMinTan:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmBrightnessMinTan(Lcom/android/server/display/BrightnessCurve;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/BrightnessCurve;->mBrightnessMinTan:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentCurveInterval(Lcom/android/server/display/BrightnessCurve;)[F
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/BrightnessCurve;->mCurrentCurveInterval:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurveAnchorPointLux(Lcom/android/server/display/BrightnessCurve;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/BrightnessCurve;->mCurveAnchorPointLux:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDarkLightCurvePullUpLimitNit(Lcom/android/server/display/BrightnessCurve;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/BrightnessCurve;->mDarkLightCurvePullUpLimitNit:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDarkLightCurvePullUpMaxTan(Lcom/android/server/display/BrightnessCurve;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/BrightnessCurve;->mDarkLightCurvePullUpMaxTan:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIdx(Lcom/android/server/display/BrightnessCurve;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/BrightnessCurve;->mIdx:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIndoorLightCurveTan(Lcom/android/server/display/BrightnessCurve;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/BrightnessCurve;->mIndoorLightCurveTan:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLux(Lcom/android/server/display/BrightnessCurve;)[F
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/BrightnessCurve;->mLux:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/BrightnessCurve;->mLuxToNitsDefault:Landroid/util/Spline;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxLux(Lcom/android/server/display/BrightnessCurve;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/BrightnessCurve;->mMaxLux:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecondOutdoorCurveBrightenMinTan(Lcom/android/server/display/BrightnessCurve;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/BrightnessCurve;->mSecondOutdoorCurveBrightenMinTan:F

    return p0
.end method

.method static bridge synthetic -$$Nest$mcopyToDefaultSpline(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FF)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/BrightnessCurve;->copyToDefaultSpline(FFLjava/util/List;FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpullDownCurveCreate(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FFFF)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/display/BrightnessCurve;->pullDownCurveCreate(FFLjava/util/List;FFFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpullUpConnectTail(Lcom/android/server/display/BrightnessCurve;Landroid/util/Pair;FFLjava/util/List;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/BrightnessCurve;->pullUpConnectTail(Landroid/util/Pair;FFLjava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpullUpCurveCreate(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FFFF)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/display/BrightnessCurve;->pullUpCurveCreate(FFLjava/util/List;FFFF)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 32
    nop

    .line 33
    const-string/jumbo v0, "ro.miui.build.region"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/BrightnessCurve;->IS_CN_BUILD:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/BrightnessConfiguration;Landroid/util/Spline;Landroid/util/Spline;)V
    .registers 6
    .param p1, "defaultConfig"  # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "nitsToBrightnessSpline"  # Landroid/util/Spline;
    .param p3, "brightnessToNitsSpline"  # Landroid/util/Spline;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/display/BrightnessCurve;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 61
    iput-object p1, p0, Lcom/android/server/display/BrightnessCurve;->mDefault:Landroid/hardware/display/BrightnessConfiguration;

    .line 62
    iput-object p2, p0, Lcom/android/server/display/BrightnessCurve;->mNitToBrightness:Landroid/util/Spline;

    .line 63
    iput-object p3, p0, Lcom/android/server/display/BrightnessCurve;->mBrightnessToNit:Landroid/util/Spline;

    .line 64
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    .local v0, "resources":Landroid/content/res/Resources;
    nop

    .line 66
    const v1, 0x1103003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 65
    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mDefaultCurveInterval:[F

    .line 67
    nop

    .line 68
    const v1, 0x11030037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 67
    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mCustomBrighteningCurveInterval:[F

    .line 69
    nop

    .line 70
    const v1, 0x11030038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mCustomDarkeningCurveInterval:[F

    .line 71
    const v1, 0x11070026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/BrightnessCurve;->mBrightnessMinTan:F

    .line 72
    const v1, 0x11070033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/BrightnessCurve;->mSecondOutdoorCurveBrightenMinTan:F

    .line 74
    const v1, 0x11070039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/BrightnessCurve;->mThirdOutdoorCurveBrightenMinTan:F

    .line 76
    const v1, 0x11070027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/BrightnessCurve;->mCurveAnchorPointLux:F

    .line 78
    const v1, 0x11070029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/BrightnessCurve;->mDarkLightCurvePullUpMaxTan:F

    .line 80
    const v1, 0x11070028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/BrightnessCurve;->mDarkLightCurvePullUpLimitNit:F

    .line 82
    const v1, 0x1105000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/BrightnessCurve;->mBrightnessCurveAlgoAvailable:Z

    .line 84
    const v1, 0x1107002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/BrightnessCurve;->mIndoorLightCurveTan:F

    .line 86
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mDefaultCurveInterval:[F

    iput-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mCurrentCurveInterval:[F

    .line 87
    return-void
.end method

.method private buildCurve(FF)Ljava/util/List;
    .registers 11
    .param p1, "lux"  # F
    .param p2, "changeNit"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Ljava/util/List<",
            "Lcom/android/server/display/BrightnessCurve$Curve;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;

    invoke-direct {v0, p0}, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;-><init>(Lcom/android/server/display/BrightnessCurve;)V

    .line 169
    .local v0, "darkLightCurve":Lcom/android/server/display/BrightnessCurve$Curve;
    new-instance v1, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;

    invoke-direct {v1, p0}, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;-><init>(Lcom/android/server/display/BrightnessCurve;)V

    .line 170
    .local v1, "indoorLightCurve":Lcom/android/server/display/BrightnessCurve$Curve;
    new-instance v2, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;

    invoke-direct {v2, p0}, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;-><init>(Lcom/android/server/display/BrightnessCurve;)V

    .line 171
    .local v2, "firstOutdoorLightCurve":Lcom/android/server/display/BrightnessCurve$Curve;
    new-instance v3, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;

    invoke-direct {v3, p0}, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;-><init>(Lcom/android/server/display/BrightnessCurve;)V

    .line 172
    .local v3, "secondOutdoorLightCurve":Lcom/android/server/display/BrightnessCurve$Curve;
    new-instance v4, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;

    invoke-direct {v4, p0}, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;-><init>(Lcom/android/server/display/BrightnessCurve;)V

    .line 173
    .local v4, "thirdOutdoorLightCurve":Lcom/android/server/display/BrightnessCurve$Curve;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v5, "curveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/BrightnessCurve$Curve;>;"
    iget-object v6, p0, Lcom/android/server/display/BrightnessCurve;->mCurrentCurveInterval:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    cmpl-float v6, p1, v6

    const/4 v7, 0x1

    if-ltz v6, :cond_41

    iget-object v6, p0, Lcom/android/server/display/BrightnessCurve;->mCurrentCurveInterval:[F

    aget v6, v6, v7

    cmpg-float v6, p1, v6

    if-gez v6, :cond_41

    .line 176
    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/BrightnessCurve$Curve;->create(FF)V

    .line 177
    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessCurve$Curve;->connectLeft(Lcom/android/server/display/BrightnessCurve$Curve;)V

    .line 178
    invoke-virtual {v2, v1}, Lcom/android/server/display/BrightnessCurve$Curve;->connectLeft(Lcom/android/server/display/BrightnessCurve$Curve;)V

    .line 179
    invoke-virtual {v3, v2}, Lcom/android/server/display/BrightnessCurve$Curve;->connectLeft(Lcom/android/server/display/BrightnessCurve$Curve;)V

    .line 180
    invoke-virtual {v4, v3}, Lcom/android/server/display/BrightnessCurve$Curve;->connectLeft(Lcom/android/server/display/BrightnessCurve$Curve;)V

    goto/16 :goto_b8

    .line 181
    :cond_41
    iget-object v6, p0, Lcom/android/server/display/BrightnessCurve;->mCurrentCurveInterval:[F

    aget v6, v6, v7

    cmpl-float v6, p1, v6

    const/4 v7, 0x2

    if-ltz v6, :cond_62

    iget-object v6, p0, Lcom/android/server/display/BrightnessCurve;->mCurrentCurveInterval:[F

    aget v6, v6, v7

    cmpg-float v6, p1, v6

    if-gez v6, :cond_62

    .line 183
    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/BrightnessCurve$Curve;->create(FF)V

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessCurve$Curve;->connectRight(Lcom/android/server/display/BrightnessCurve$Curve;)V

    .line 185
    invoke-virtual {v2, v1}, Lcom/android/server/display/BrightnessCurve$Curve;->connectLeft(Lcom/android/server/display/BrightnessCurve$Curve;)V

    .line 186
    invoke-virtual {v3, v2}, Lcom/android/server/display/BrightnessCurve$Curve;->connectLeft(Lcom/android/server/display/BrightnessCurve$Curve;)V

    .line 187
    invoke-virtual {v4, v3}, Lcom/android/server/display/BrightnessCurve$Curve;->connectLeft(Lcom/android/server/display/BrightnessCurve$Curve;)V

    goto :goto_b8

    .line 188
    :cond_62
    iget-object v6, p0, Lcom/android/server/display/BrightnessCurve;->mCurrentCurveInterval:[F

    aget v6, v6, v7

    cmpl-float v6, p1, v6

    const/4 v7, 0x3

    if-ltz v6, :cond_83

    iget-object v6, p0, Lcom/android/server/display/BrightnessCurve;->mCurrentCurveInterval:[F

    aget v6, v6, v7

    cmpg-float v6, p1, v6

    if-gez v6, :cond_83

    .line 190
    invoke-virtual {v2, p1, p2}, Lcom/android/server/display/BrightnessCurve$Curve;->create(FF)V

    .line 191
    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessCurve$Curve;->connectRight(Lcom/android/server/display/BrightnessCurve$Curve;)V

    .line 192
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessCurve$Curve;->connectRight(Lcom/android/server/display/BrightnessCurve$Curve;)V

    .line 193
    invoke-virtual {v3, v2}, Lcom/android/server/display/BrightnessCurve$Curve;->connectLeft(Lcom/android/server/display/BrightnessCurve$Curve;)V

    .line 194
    invoke-virtual {v4, v3}, Lcom/android/server/display/BrightnessCurve$Curve;->connectLeft(Lcom/android/server/display/BrightnessCurve$Curve;)V

    goto :goto_b8

    .line 195
    :cond_83
    iget-object v6, p0, Lcom/android/server/display/BrightnessCurve;->mCurrentCurveInterval:[F

    aget v6, v6, v7

    cmpl-float v6, p1, v6

    const/4 v7, 0x4

    if-ltz v6, :cond_a4

    iget-object v6, p0, Lcom/android/server/display/BrightnessCurve;->mCurrentCurveInterval:[F

    aget v6, v6, v7

    cmpg-float v6, p1, v6

    if-gez v6, :cond_a4

    .line 197
    invoke-virtual {v3, p1, p2}, Lcom/android/server/display/BrightnessCurve$Curve;->create(FF)V

    .line 198
    invoke-virtual {v2, v3}, Lcom/android/server/display/BrightnessCurve$Curve;->connectRight(Lcom/android/server/display/BrightnessCurve$Curve;)V

    .line 199
    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessCurve$Curve;->connectRight(Lcom/android/server/display/BrightnessCurve$Curve;)V

    .line 200
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessCurve$Curve;->connectRight(Lcom/android/server/display/BrightnessCurve$Curve;)V

    .line 201
    invoke-virtual {v4, v3}, Lcom/android/server/display/BrightnessCurve$Curve;->connectLeft(Lcom/android/server/display/BrightnessCurve$Curve;)V

    goto :goto_b8

    .line 202
    :cond_a4
    iget-object v6, p0, Lcom/android/server/display/BrightnessCurve;->mCurrentCurveInterval:[F

    aget v6, v6, v7

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_b8

    .line 203
    invoke-virtual {v4, p1, p2}, Lcom/android/server/display/BrightnessCurve$Curve;->create(FF)V

    .line 204
    invoke-virtual {v2, v4}, Lcom/android/server/display/BrightnessCurve$Curve;->connectRight(Lcom/android/server/display/BrightnessCurve$Curve;)V

    .line 205
    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessCurve$Curve;->connectRight(Lcom/android/server/display/BrightnessCurve$Curve;)V

    .line 206
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessCurve$Curve;->connectRight(Lcom/android/server/display/BrightnessCurve$Curve;)V

    .line 208
    :cond_b8
    :goto_b8
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    return-object v5
.end method

.method private computeBrightness()V
    .registers 7

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mLux:[F

    array-length v1, v1

    if-ge v0, v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mBrightness:[F

    array-length v1, v1

    if-ge v0, v1, :cond_3e

    .line 156
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mLuxToNit:Landroid/util/Spline;

    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve;->mLux:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 157
    .local v1, "nit":F
    iget v2, p0, Lcom/android/server/display/BrightnessCurve;->mMinNit:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1d

    .line 158
    iget v1, p0, Lcom/android/server/display/BrightnessCurve;->mMinNit:F

    .line 160
    :cond_1d
    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve;->mBrightness:[F

    iget-object v3, p0, Lcom/android/server/display/BrightnessCurve;->mNitToBrightness:Landroid/util/Spline;

    invoke-virtual {v3, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    aput v3, v2, v0

    .line 161
    if-eqz v0, :cond_3b

    .line 162
    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve;->mBrightness:[F

    iget-object v3, p0, Lcom/android/server/display/BrightnessCurve;->mBrightness:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/server/display/BrightnessCurve;->mBrightness:[F

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    invoke-static {v3, v4}, Landroid/util/MathUtils;->max(FF)F

    move-result v3

    aput v3, v2, v0

    .line 155
    .end local v1  # "nit":F
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    .end local v0  # "i":I
    :cond_3e
    return-void
.end method

.method private copyToDefaultSpline(FFLjava/util/List;FF)V
    .registers 12
    .param p1, "startLux"  # F
    .param p2, "endLux"  # F
    .param p4, "diffNit"  # F
    .param p5, "ratio"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;FF)V"
        }
    .end annotation

    .line 218
    .local p3, "mPointList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mLux:[F

    array-length v1, v1

    if-ge v0, v1, :cond_48

    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mLux:[F

    aget v1, v1, v0

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_48

    .line 219
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mLux:[F

    aget v1, v1, v0

    cmpg-float v1, v1, p1

    if-gez v1, :cond_17

    .line 220
    goto :goto_45

    .line 222
    :cond_17
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mLux:[F

    aget v1, v1, v0

    sub-float v1, p2, v1

    mul-float/2addr v1, p5

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v2, v1

    .line 223
    .local v2, "coefficient":F
    new-instance v1, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/server/display/BrightnessCurve;->mLux:[F

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/BrightnessCurve;->mLuxToNitsDefault:Landroid/util/Spline;

    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve;->mLux:[F

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/util/Spline;->interpolate(F)F

    move-result v4

    mul-float v5, p4, v2

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    .local v1, "point":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v1  # "point":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    .end local v2  # "coefficient":F
    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    .end local v0  # "i":I
    :cond_48
    return-void
.end method

.method private createSpline(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/display/BrightnessCurve$Curve;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/BrightnessCurve$Curve;>;"
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessCurve;->getSplinePointList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, "splinePointList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    .line 132
    .local v1, "lux":[F
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [F

    .line 133
    .local v2, "nit":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 134
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 135
    .local v4, "point":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v1, v3

    .line 136
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v2, v3

    .line 133
    .end local v4  # "point":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 138
    .end local v3  # "i":I
    :cond_34
    invoke-static {v1, v2}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/BrightnessCurve;->mLuxToNit:Landroid/util/Spline;

    .line 139
    return-void
.end method

.method private getSplinePointList(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/display/BrightnessCurve$Curve;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 142
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/BrightnessCurve$Curve;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v0, "splinePointList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_53

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessCurve$Curve;

    iget-object v2, v2, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_53

    .line 144
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessCurve$Curve;

    iget-object v2, v2, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessCurve$Curve;

    .line 146
    .local v2, "curve":Lcom/android/server/display/BrightnessCurve$Curve;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_3c
    iget-object v4, v2, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_52

    .line 147
    iget-object v4, v2, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 149
    .end local v2  # "curve":Lcom/android/server/display/BrightnessCurve$Curve;
    .end local v3  # "i":I
    :cond_52
    goto :goto_2f

    .line 151
    :cond_53
    return-object v0
.end method

.method private pullDownCurveCreate(FFLjava/util/List;FFFF)V
    .registers 18
    .param p1, "lux"  # F
    .param p2, "changeNit"  # F
    .param p4, "headLux"  # F
    .param p5, "tailLux"  # F
    .param p6, "minTanToHead"  # F
    .param p7, "minTanToTail"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;FFFF)V"
        }
    .end annotation

    .line 231
    .local p3, "pointList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;>;"
    move v0, p5

    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mLuxToNitsDefault:Landroid/util/Spline;

    invoke-virtual {v1, p5}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve;->mLuxToNitsDefault:Landroid/util/Spline;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    .line 233
    .local v1, "tan0LuxToTailLux":F
    move/from16 v2, p6

    .line 234
    .local v2, "tanToHeadLux":F
    cmpl-float v4, p1, p4

    if-eqz v4, :cond_22

    .line 235
    iget-object v4, p0, Lcom/android/server/display/BrightnessCurve;->mLuxToNitsDefault:Landroid/util/Spline;

    invoke-virtual {v4, p4}, Landroid/util/Spline;->interpolate(F)F

    move-result v4

    sub-float v4, p2, v4

    sub-float v5, p1, p4

    div-float v2, v4, v5

    .line 237
    :cond_22
    cmpg-float v4, v2, p6

    if-gez v4, :cond_28

    .line 238
    move/from16 v2, p6

    .line 240
    :cond_28
    sub-float v4, p1, p4

    mul-float/2addr v4, v2

    sub-float v4, p2, v4

    .line 241
    .local v4, "headPointNit":F
    new-instance v5, Landroid/util/Pair;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    .local v5, "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    cmpl-float v6, p1, p4

    if-eqz v6, :cond_51

    .line 244
    new-instance v6, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    .local v6, "changePoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v6  # "changePoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_51
    iget-object v6, p0, Lcom/android/server/display/BrightnessCurve;->mLuxToNitsDefault:Landroid/util/Spline;

    invoke-virtual {v6, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    sub-float v3, p2, v3

    div-float/2addr v3, p1

    .line 248
    .local v3, "tanToStartPoint":F
    cmpl-float v6, v3, v1

    if-lez v6, :cond_75

    .line 249
    new-instance v6, Landroid/util/Pair;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/BrightnessCurve;->mLuxToNitsDefault:Landroid/util/Spline;

    invoke-virtual {v8, p5}, Landroid/util/Spline;->interpolate(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    .local v6, "tailPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-void

    .line 253
    .end local v6  # "tailPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_75
    cmpg-float v6, v3, p7

    if-gez v6, :cond_7b

    .line 254
    move/from16 v3, p7

    .line 256
    :cond_7b
    sub-float v6, v0, p1

    mul-float/2addr v6, v3

    add-float/2addr v6, p2

    .line 257
    .local v6, "tailPointNit":F
    new-instance v7, Landroid/util/Pair;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    .local v7, "tailPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    return-void
.end method

.method private pullUpConnectTail(Landroid/util/Pair;FFLjava/util/List;)V
    .registers 12
    .param p2, "tailLux"  # F
    .param p3, "minTan"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;FF",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .line 274
    .local p1, "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    .local p4, "pointList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;>;"
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 276
    .local v0, "lux":F
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 277
    .local v1, "changeNit":F
    move v2, p3

    .line 278
    .local v2, "tanToTailPoint":F
    cmpl-float v3, p2, v0

    if-eqz v3, :cond_23

    .line 279
    iget-object v3, p0, Lcom/android/server/display/BrightnessCurve;->mLuxToNitsDefault:Landroid/util/Spline;

    invoke-virtual {v3, p2}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    sub-float/2addr v3, v1

    sub-float v4, p2, v0

    div-float v2, v3, v4

    .line 281
    :cond_23
    cmpg-float v3, v2, p3

    if-gez v3, :cond_28

    .line 282
    move v2, p3

    .line 284
    :cond_28
    sub-float v3, p2, v0

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    .line 285
    .local v3, "tailPointNit":F
    new-instance v4, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    .local v4, "tailPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    return-void
.end method

.method private pullUpCurveCreate(FFLjava/util/List;FFFF)V
    .registers 15
    .param p1, "lux"  # F
    .param p2, "changeNit"  # F
    .param p4, "headLux"  # F
    .param p5, "tailLux"  # F
    .param p6, "anchorPointLux"  # F
    .param p7, "anchorPointNit"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;FFFF)V"
        }
    .end annotation

    .line 263
    .local p3, "pointList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;>;"
    sub-float v0, p2, p7

    sub-float v1, p1, p6

    div-float/2addr v0, v1

    .line 264
    .local v0, "tanToAnchor":F
    sub-float v1, p1, p4

    mul-float/2addr v1, v0

    sub-float v1, p2, v1

    .line 265
    .local v1, "headPointNit":F
    new-instance v2, Landroid/util/Pair;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    .local v2, "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    sub-float v3, p5, p1

    mul-float/2addr v3, v0

    add-float/2addr v3, p2

    .line 268
    .local v3, "tailPointNit":F
    new-instance v4, Landroid/util/Pair;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 269
    .local v4, "tailPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

.method private setCurveInterval(Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 4
    .param p1, "config"  # Landroid/hardware/display/BrightnessConfiguration;

    .line 108
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "description":Ljava/lang/String;
    const-string v1, "custom_brightness_curve_brightening"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 110
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mCustomBrighteningCurveInterval:[F

    iput-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mCurrentCurveInterval:[F

    goto :goto_22

    .line 111
    :cond_11
    const-string v1, "custom_brightness_curve_darkening"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 112
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mCustomDarkeningCurveInterval:[F

    iput-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mCurrentCurveInterval:[F

    goto :goto_22

    .line 114
    :cond_1e
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mDefaultCurveInterval:[F

    iput-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mCurrentCurveInterval:[F

    .line 116
    :goto_22
    return-void
.end method

.method private updateData([F[FI)V
    .registers 7
    .param p1, "lux"  # [F
    .param p2, "brightness"  # [F
    .param p3, "idx"  # I

    .line 97
    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-direct {p0, v0}, Lcom/android/server/display/BrightnessCurve;->setCurveInterval(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 98
    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 99
    .local v0, "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    invoke-static {v1, v2}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mLuxToNitsDefault:Landroid/util/Spline;

    .line 100
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mBrightnessToNit:Landroid/util/Spline;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/BrightnessCurve;->mMinNit:F

    .line 101
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/android/server/display/BrightnessCurve;->mMaxLux:F

    .line 102
    iput-object p1, p0, Lcom/android/server/display/BrightnessCurve;->mLux:[F

    .line 103
    iput p3, p0, Lcom/android/server/display/BrightnessCurve;->mIdx:I

    .line 104
    iput-object p2, p0, Lcom/android/server/display/BrightnessCurve;->mBrightness:[F

    .line 105
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 663
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 664
    const-string v0, "BrightnessCurve Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessCurveAlgoAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessCurve;->mBrightnessCurveAlgoAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  IS_CN_BUILD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/BrightnessCurve;->IS_CN_BUILD:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method public isEnable()Z
    .registers 4

    .line 651
    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "description":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/display/BrightnessCurve;->IS_CN_BUILD:Z

    if-eqz v1, :cond_32

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessCurve;->mBrightnessCurveAlgoAvailable:Z

    if-eqz v1, :cond_32

    .line 653
    const-string v1, "custom_brightness_curve_default"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 654
    const-string v1, "custom_brightness_curve_brightening"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 655
    const-string v1, "custom_brightness_curve_darkening"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mDefault:Landroid/hardware/display/BrightnessConfiguration;

    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 656
    invoke-virtual {v1, v2}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 657
    :cond_30
    const/4 v1, 0x1

    return v1

    .line 659
    :cond_32
    const/4 v1, 0x0

    return v1
.end method

.method public smoothNewCurveV2([F[FI)Landroid/util/Pair;
    .registers 9
    .param p1, "lux"  # [F
    .param p2, "brightness"  # [F
    .param p3, "idx"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FI)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 119
    aget v0, p1, p3

    .line 120
    .local v0, "changeLux":F
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve;->mBrightnessToNit:Landroid/util/Spline;

    aget v2, p2, p3

    invoke-virtual {v1, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 121
    .local v1, "changeNit":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smoothNewCurveV2: changeLux: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", changeNit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BrightnessCurve"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/BrightnessCurve;->updateData([F[FI)V

    .line 123
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/BrightnessCurve;->buildCurve(FF)Ljava/util/List;

    move-result-object v2

    .line 124
    .local v2, "listPoint":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/BrightnessCurve$Curve;>;"
    invoke-direct {p0, v2}, Lcom/android/server/display/BrightnessCurve;->createSpline(Ljava/util/List;)V

    .line 125
    invoke-direct {p0}, Lcom/android/server/display/BrightnessCurve;->computeBrightness()V

    .line 126
    iget-object v3, p0, Lcom/android/server/display/BrightnessCurve;->mLux:[F

    iget-object v4, p0, Lcom/android/server/display/BrightnessCurve;->mBrightness:[F

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method public updateSplineConfig(Landroid/hardware/display/BrightnessConfiguration;Landroid/util/Spline;Landroid/util/Spline;)V
    .registers 4
    .param p1, "config"  # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "nitsToBrightnessSpline"  # Landroid/util/Spline;
    .param p3, "brightnessToNitsSpline"  # Landroid/util/Spline;

    .line 91
    iput-object p1, p0, Lcom/android/server/display/BrightnessCurve;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 92
    iput-object p2, p0, Lcom/android/server/display/BrightnessCurve;->mNitToBrightness:Landroid/util/Spline;

    .line 93
    iput-object p3, p0, Lcom/android/server/display/BrightnessCurve;->mBrightnessToNit:Landroid/util/Spline;

    .line 94
    return-void
.end method
