# classes.dex

.class public Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;
.super Ljava/lang/Object;
.source "IndividualEventNormalizer.java"


# static fields
.field private static final MAX_NORMALIZATION_VALUE:F = 1.0f

.field private static final MIN_NORMALIZATION_VALUE:F = 0.0f

.field private static final MIXED_ORIENTATION_APP_MAX:I = 0x2

.field private static final MIXED_ORIENTATION_APP_MIN:I


# instance fields
.field private final mAppIdMax:I

.field private final mAppIdMin:I

.field private final mBrightnessMax:F

.field private final mBrightnessMin:F

.field private final mBrightnessSpanMax:F

.field private final mBrightnessSpanMin:F

.field private final mLuxMax:F

.field private final mLuxMin:F

.field private final mLuxSpanMax:F

.field private final mLuxSpanMin:F

.field private final mMixedOrientationAppMax:F

.field private final mMixedOrientationAppMin:F


# direct methods
.method public constructor <init>(FFFFFFFF)V
    .registers 10
    .param p1, "brightnessMin"  # F
    .param p2, "normalBrightnessMax"  # F
    .param p3, "luxMin"  # F
    .param p4, "luxMax"  # F
    .param p5, "brightnessSpanMin"  # F
    .param p6, "brightnessSpanMax"  # F
    .param p7, "luxSpanMin"  # F
    .param p8, "luxSpanMax"  # F

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mBrightnessMin:F

    .line 38
    iput p2, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mBrightnessMax:F

    .line 39
    iput p3, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mLuxMin:F

    .line 40
    iput p4, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mLuxMax:F

    .line 41
    iput p5, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mBrightnessSpanMin:F

    .line 42
    iput p6, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mBrightnessSpanMax:F

    .line 43
    iput p7, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mLuxSpanMin:F

    .line 44
    iput p8, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mLuxSpanMax:F

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mAppIdMin:I

    .line 46
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mAppIdMax:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mMixedOrientationAppMin:F

    .line 48
    const/high16 v0, 0x40000000  # 2.0f

    iput v0, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mMixedOrientationAppMax:F

    .line 49
    return-void
.end method

.method private constrain(F)F
    .registers 4
    .param p1, "amount"  # F

    .line 120
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public antiNormalizeAppId(F)I
    .registers 5
    .param p1, "appId"  # F

    .line 110
    iget v0, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mAppIdMin:I

    iget v1, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mAppIdMax:I

    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mAppIdMin:I

    iget v2, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mAppIdMax:I

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method public antiNormalizeBrightness(F)F
    .registers 5
    .param p1, "brightness"  # F

    .line 115
    iget v0, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mBrightnessMin:F

    iget v1, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mBrightnessMax:F

    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    iget v1, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mBrightnessMin:F

    iget v2, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mBrightnessMax:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method public antiNormalizeLux(F)F
    .registers 5
    .param p1, "lux"  # F

    .line 106
    iget v0, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mLuxMin:F

    iget v1, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mLuxMax:F

    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    iget v1, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mLuxMin:F

    iget v2, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mLuxMax:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method public getMixedOrientApp(II)F
    .registers 6
    .param p1, "appId"  # I
    .param p2, "orientation"  # I

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "mixed":F
    const/4 v1, 0x1

    if-eq p2, v1, :cond_f

    const/4 v2, 0x3

    if-ne p2, v2, :cond_8

    goto :goto_f

    .line 98
    :cond_8
    const/16 v1, 0x9

    if-ne p1, v1, :cond_16

    .line 99
    const/high16 v0, 0x40000000  # 2.0f

    goto :goto_16

    .line 93
    :cond_f
    :goto_f
    if-eq p1, v1, :cond_14

    const/4 v1, 0x2

    if-ne p1, v1, :cond_16

    .line 94
    :cond_14
    const/high16 v0, 0x3f800000  # 1.0f

    .line 102
    :cond_16
    :goto_16
    return v0
.end method

.method public normalizeAppId(I)F
    .registers 5
    .param p1, "appId"  # I

    .line 81
    iget v0, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mAppIdMin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mAppIdMax:I

    int-to-float v1, v1

    int-to-float v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->norm(FFF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->constrain(F)F

    move-result v0

    return v0
.end method

.method public normalizeLux(F)F
    .registers 4
    .param p1, "lux"  # F

    .line 52
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 53
    const/high16 p1, -0x40800000  # -1.0f

    .line 55
    :cond_8
    iget v0, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mLuxMax:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 56
    iget v0, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mLuxMin:F

    iget v1, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mLuxMax:F

    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->norm(FFF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->constrain(F)F

    move-result v0

    return v0
.end method

.method public normalizeLuxSpan(F)F
    .registers 4
    .param p1, "luxSpan"  # F

    .line 60
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 61
    const/high16 p1, -0x40800000  # -1.0f

    .line 63
    :cond_8
    iget v0, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mLuxSpanMin:F

    iget v1, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mLuxSpanMax:F

    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->norm(FFF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->constrain(F)F

    move-result v0

    return v0
.end method

.method public normalizeNit(F)F
    .registers 4
    .param p1, "nit"  # F

    .line 67
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 68
    const/high16 p1, -0x40800000  # -1.0f

    .line 70
    :cond_8
    iget v0, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mBrightnessMin:F

    iget v1, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mBrightnessMax:F

    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->norm(FFF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->constrain(F)F

    move-result v0

    return v0
.end method

.method public normalizeNitSpan(F)F
    .registers 4
    .param p1, "nitSpan"  # F

    .line 74
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 75
    const/high16 p1, -0x40800000  # -1.0f

    .line 77
    :cond_8
    iget v0, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mBrightnessSpanMin:F

    iget v1, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mBrightnessSpanMax:F

    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->norm(FFF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->constrain(F)F

    move-result v0

    return v0
.end method

.method public normalizedMixedOrientationAppId(II)F
    .registers 6
    .param p1, "appId"  # I
    .param p2, "orientation"  # I

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->getMixedOrientApp(II)F

    move-result v0

    .line 86
    .local v0, "mixed":F
    iget v1, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mMixedOrientationAppMin:F

    iget v2, p0, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->mMixedOrientationAppMax:F

    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->norm(FFF)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->constrain(F)F

    move-result v1

    return v1
.end method
