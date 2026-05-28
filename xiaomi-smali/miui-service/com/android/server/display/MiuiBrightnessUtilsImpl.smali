# classes.dex

.class public Lcom/android/server/display/MiuiBrightnessUtilsImpl;
.super Lcom/android/server/display/MiuiBrightnessUtilsStub;
.source "MiuiBrightnessUtilsImpl.java"


# static fields
.field private static final A:F

.field private static final B:F

.field private static final C:F

.field private static final R:F

.field private static final resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/MiuiBrightnessUtilsImpl;->resources:Landroid/content/res/Resources;

    .line 28
    sget-object v0, Lcom/android/server/display/MiuiBrightnessUtilsImpl;->resources:Landroid/content/res/Resources;

    const v1, 0x1107001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    sput v0, Lcom/android/server/display/MiuiBrightnessUtilsImpl;->R:F

    .line 30
    sget-object v0, Lcom/android/server/display/MiuiBrightnessUtilsImpl;->resources:Landroid/content/res/Resources;

    const v1, 0x1107001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    sput v0, Lcom/android/server/display/MiuiBrightnessUtilsImpl;->A:F

    .line 32
    sget-object v0, Lcom/android/server/display/MiuiBrightnessUtilsImpl;->resources:Landroid/content/res/Resources;

    const v1, 0x1107001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    sput v0, Lcom/android/server/display/MiuiBrightnessUtilsImpl;->B:F

    .line 34
    sget-object v0, Lcom/android/server/display/MiuiBrightnessUtilsImpl;->resources:Landroid/content/res/Resources;

    const v1, 0x1107001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    sput v0, Lcom/android/server/display/MiuiBrightnessUtilsImpl;->C:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/android/server/display/MiuiBrightnessUtilsStub;-><init>()V

    return-void
.end method


# virtual methods
.method public convertGammaToLinear(F)F
    .registers 5
    .param p1, "val"  # F

    .line 46
    sget v0, Lcom/android/server/display/MiuiBrightnessUtilsImpl;->R:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_f

    .line 47
    sget v0, Lcom/android/server/display/MiuiBrightnessUtilsImpl;->R:F

    div-float v0, p1, v0

    invoke-static {v0}, Landroid/util/MathUtils;->sq(F)F

    move-result v0

    .local v0, "ret":F
    goto :goto_1d

    .line 49
    .end local v0  # "ret":F
    :cond_f
    sget v0, Lcom/android/server/display/MiuiBrightnessUtilsImpl;->C:F

    sub-float v0, p1, v0

    sget v1, Lcom/android/server/display/MiuiBrightnessUtilsImpl;->A:F

    div-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/MathUtils;->exp(F)F

    move-result v0

    sget v1, Lcom/android/server/display/MiuiBrightnessUtilsImpl;->B:F

    add-float/2addr v0, v1

    .line 54
    .restart local v0  # "ret":F
    :goto_1d
    const/4 v1, 0x0

    const/high16 v2, 0x41400000  # 12.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 58
    .local v1, "normalizedRet":F
    div-float v2, v1, v2

    return v2
.end method

.method public convertLinearToGamma(F)F
    .registers 5
    .param p1, "val"  # F

    .line 70
    const/high16 v0, 0x41400000  # 12.0f

    mul-float/2addr v0, p1

    .line 72
    .local v0, "normalizedVal":F
    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_11

    .line 73
    invoke-static {v0}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v1

    sget v2, Lcom/android/server/display/MiuiBrightnessUtilsImpl;->R:F

    mul-float/2addr v1, v2

    .local v1, "ret":F
    goto :goto_1f

    .line 75
    .end local v1  # "ret":F
    :cond_11
    sget v1, Lcom/android/server/display/MiuiBrightnessUtilsImpl;->A:F

    sget v2, Lcom/android/server/display/MiuiBrightnessUtilsImpl;->B:F

    sub-float v2, v0, v2

    invoke-static {v2}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    mul-float/2addr v1, v2

    sget v2, Lcom/android/server/display/MiuiBrightnessUtilsImpl;->C:F

    add-float/2addr v1, v2

    .line 77
    .restart local v1  # "ret":F
    :goto_1f
    return v1
.end method
