# classes.dex

.class public Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "MiuiPhysicalBrightnessMappingStrategy.java"


# static fields
.field public static final CATEGORY_GAME:I = 0x1

.field public static final CATEGORY_IMAGE:I = 0x4

.field public static final CATEGORY_MAPS:I = 0x3

.field public static final CATEGORY_READERS:I = 0x5

.field public static final CATEGORY_SUM:I = 0x6

.field public static final CATEGORY_UNDEFINED:I = 0x0

.field public static final CATEGORY_VIDEO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MiuiBrightnessMappingStrategy"


# instance fields
.field private mAdjustedSplineMapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationCategory:I

.field private mAutoBrightnessAdjustment:F

.field private final mBrightness:[F

.field private mBrightnessMappingStrategyImpl:Lcom/android/server/display/BrightnessMappingStrategyStub;

.field private mBrightnessRangeAdjustmentApplied:Z

.field private mBrightnessSpline:Landroid/util/Spline;

.field private mBrightnessToAdjustedNitsSpline:Landroid/util/Spline;

.field private mBrightnessToNitsSpline:Landroid/util/Spline;

.field private mConfig:Landroid/hardware/display/BrightnessConfiguration;

.field private final mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

.field private mIsGlobalAdjustment:Z

.field private final mMaxGamma:F

.field private mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

.field private final mNits:[F

.field private mNitsToBrightnessSpline:Landroid/util/Spline;

.field private mShortTermModelUserBrightness:F

.field private mShortTermModelUserLux:F

.field private mSplineGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Spline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/display/BrightnessConfiguration;[F[FF)V
    .registers 9
    .param p1, "config"  # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "nits"  # [F
    .param p3, "brightness"  # [F
    .param p4, "maxGamma"  # F

    .line 71
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mSplineGroup:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mAdjustedSplineMapper:Ljava/util/HashMap;

    .line 73
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    array-length v0, p3

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    const-string v3, "Nits and brightness arrays must not be empty!"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 76
    array-length v0, p2

    array-length v3, p3

    if-ne v0, v3, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    const-string v0, "Nits and brightness arrays must be the same length!"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 78
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    const-string/jumbo v1, "nits"

    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 80
    const/high16 v0, 0x3f800000  # 1.0f

    const-string v1, "brightness"

    invoke-static {p3, v3, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 82
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategyStub;->getInstance()Lcom/android/server/display/BrightnessMappingStrategyStub;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mBrightnessMappingStrategyImpl:Lcom/android/server/display/BrightnessMappingStrategyStub;

    .line 83
    iput p4, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mMaxGamma:F

    .line 84
    iput v3, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 85
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mShortTermModelUserLux:F

    .line 86
    iput v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mShortTermModelUserBrightness:F

    .line 87
    iput v2, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mApplicationCategory:I

    .line 88
    iput-boolean v2, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mIsGlobalAdjustment:Z

    .line 89
    iput-object p2, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mNits:[F

    .line 90
    iput-object p3, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mBrightness:[F

    .line 91
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mNits:[F

    invoke-direct {p0, v0}, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->computeNitsBrightnessSplines([F)V

    .line 92
    iput-object p1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 93
    iput-object p1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->computeSpline()V

    .line 95
    return-void
.end method

.method private adjustSplineGroup(ILandroid/util/Spline;)V
    .registers 7
    .param p1, "category"  # I
    .param p2, "spline"  # Landroid/util/Spline;

    .line 105
    iget-boolean v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mIsGlobalAdjustment:Z

    if-eqz v0, :cond_15

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    const/4 v1, 0x6

    if-ge v0, v1, :cond_14

    .line 107
    iget-object v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mSplineGroup:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .end local v0  # "i":I
    :cond_14
    goto :goto_61

    .line 109
    :cond_15
    if-nez p1, :cond_46

    .line 110
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mAdjustedSplineMapper:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 111
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_44

    .line 112
    iget-object v2, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mSplineGroup:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .end local v1  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_44
    goto :goto_21

    :cond_45
    goto :goto_61

    .line 116
    :cond_46
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mSplineGroup:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mApplicationCategory:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mAdjustedSplineMapper:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mApplicationCategory:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_61
    return-void
.end method

.method private applicationCategoryInfo(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    if-eqz v0, :cond_8c

    .line 324
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    invoke-virtual {v0}, Lcom/android/server/display/MiuiDisplayCloudController;->getShortTermModelAppMapper()Ljava/util/Map;

    move-result-object v0

    .line 325
    .local v0, "appMapper":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_8c

    iget-object v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    invoke-virtual {v1}, Lcom/android/server/display/MiuiDisplayCloudController;->isShortTermModelEnable()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 326
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 327
    return v1

    .line 328
    :cond_2c
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 329
    return v1

    .line 330
    :cond_44
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 331
    return v1

    .line 332
    :cond_5c
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 333
    return v1

    .line 334
    :cond_74
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 335
    return v1

    .line 339
    .end local v0  # "appMapper":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_8c
    const/4 v0, 0x0

    return v0
.end method

.method private computeNitsBrightnessSplines([F)V
    .registers 3
    .param p1, "nits"  # [F

    .line 343
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mBrightness:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    .line 345
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mBrightness:[F

    invoke-static {v0, p1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mBrightnessToNitsSpline:Landroid/util/Spline;

    .line 347
    return-void
.end method

.method private computeSpline()V
    .registers 13

    .line 277
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 278
    .local v0, "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, [F

    .line 279
    .local v3, "defaultLux":[F
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [F

    .line 280
    .local v1, "defaultNits":[F
    array-length v2, v1

    new-array v4, v2, [F

    .line 281
    .local v4, "defaultBrightness":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    array-length v5, v4

    if-ge v2, v5, :cond_23

    .line 282
    iget-object v5, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    aget v6, v1, v2

    invoke-virtual {v5, v6}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    aput v5, v4, v2

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 284
    .end local v2  # "i":I
    :cond_23
    iget v5, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mShortTermModelUserLux:F

    iget v6, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mShortTermModelUserBrightness:F

    iget v7, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mAutoBrightnessAdjustment:F

    iget v8, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mMaxGamma:F

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->getAdjustedCurve([F[FFFFF)Landroid/util/Pair;

    move-result-object v5

    .line 286
    .local v5, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [F

    .line 287
    .local v6, "lux":[F
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [F

    .line 288
    .local v7, "brightness":[F
    array-length v8, v7

    new-array v8, v8, [F

    .line 289
    .local v8, "nits":[F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3c
    array-length v10, v8

    if-ge v9, v10, :cond_4c

    .line 290
    iget-object v10, v2, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mBrightnessToNitsSpline:Landroid/util/Spline;

    aget v11, v7, v9

    invoke-virtual {v10, v11}, Landroid/util/Spline;->interpolate(F)F

    move-result v10

    aput v10, v8, v9

    .line 289
    add-int/lit8 v9, v9, 0x1

    goto :goto_3c

    .line 292
    .end local v9  # "i":I
    :cond_4c
    invoke-static {v6, v8}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v9

    iput-object v9, v2, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    .line 293
    iget v9, v2, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mShortTermModelUserLux:F

    const/high16 v10, -0x40800000  # -1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_62

    .line 294
    iget v9, v2, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mApplicationCategory:I

    iget-object v10, v2, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-direct {p0, v9, v10}, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->adjustSplineGroup(ILandroid/util/Spline;)V

    goto :goto_67

    .line 296
    :cond_62
    iget-object v9, v2, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-direct {p0, v9}, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->initializeSplineGroup(Landroid/util/Spline;)V

    .line 298
    :goto_67
    return-void
.end method

.method private correctBrightness(FLjava/lang/String;I)F
    .registers 6
    .param p1, "brightness"  # F
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "category"  # I

    .line 307
    if-eqz p2, :cond_f

    .line 308
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, p2}, Landroid/hardware/display/BrightnessConfiguration;->getCorrectionByPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessCorrection;

    move-result-object v0

    .line 309
    .local v0, "correction":Landroid/hardware/display/BrightnessCorrection;
    if-eqz v0, :cond_f

    .line 310
    invoke-virtual {v0, p1}, Landroid/hardware/display/BrightnessCorrection;->apply(F)F

    move-result v1

    return v1

    .line 313
    .end local v0  # "correction":Landroid/hardware/display/BrightnessCorrection;
    :cond_f
    const/4 v0, -0x1

    if-eq p3, v0, :cond_1f

    .line 314
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, p3}, Landroid/hardware/display/BrightnessConfiguration;->getCorrectionByCategory(I)Landroid/hardware/display/BrightnessCorrection;

    move-result-object v0

    .line 315
    .restart local v0  # "correction":Landroid/hardware/display/BrightnessCorrection;
    if-eqz v0, :cond_1f

    .line 316
    invoke-virtual {v0, p1}, Landroid/hardware/display/BrightnessCorrection;->apply(F)F

    move-result v1

    return v1

    .line 319
    .end local v0  # "correction":Landroid/hardware/display/BrightnessCorrection;
    :cond_1f
    return p1
.end method

.method private getUnadjustedBrightness(F)F
    .registers 6
    .param p1, "lux"  # F

    .line 301
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 302
    .local v0, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    .line 303
    .local v1, "spline":Landroid/util/Spline;
    iget-object v2, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    return v2
.end method

.method private initializeSplineGroup(Landroid/util/Spline;)V
    .registers 6
    .param p1, "spline"  # Landroid/util/Spline;

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1e

    .line 99
    iget-object v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mSplineGroup:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mAdjustedSplineMapper:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    .end local v0  # "i":I
    :cond_1e
    return-void
.end method

.method private isGlobalAdjustment(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    .line 355
    invoke-virtual {v0}, Lcom/android/server/display/MiuiDisplayCloudController;->getShortTermModelAppMapper()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    .line 356
    invoke-virtual {v0}, Lcom/android/server/display/MiuiDisplayCloudController;->getShortTermModelAppMapper()Ljava/util/Map;

    move-result-object v0

    .line 357
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 356
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 357
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v1, 0x1

    goto :goto_2c

    :cond_2b
    nop

    :goto_2c
    iput-boolean v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mIsGlobalAdjustment:Z

    .line 358
    return-void
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .registers 4
    .param p1, "lux"  # F
    .param p2, "brightness"  # F

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->addUserDataPoint(FFLjava/lang/String;)V

    .line 207
    return-void
.end method

.method public addUserDataPoint(FFLjava/lang/String;)V
    .registers 6
    .param p1, "lux"  # F
    .param p2, "brightness"  # F
    .param p3, "packageName"  # Ljava/lang/String;

    .line 210
    invoke-direct {p0, p3}, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->isGlobalAdjustment(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p3}, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->applicationCategoryInfo(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mApplicationCategory:I

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User add data point: lux = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", brightness = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mApplicationCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBrightnessMappingStrategy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0, p1}, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v0

    .line 215
    .local v0, "unadjustedBrightness":F
    iget-object v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mBrightnessMappingStrategyImpl:Lcom/android/server/display/BrightnessMappingStrategyStub;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategyStub;->updateUnadjustedBrightness(FFF)V

    .line 216
    iget v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mMaxGamma:F

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v1

    .line 219
    .local v1, "adjustment":F
    iput v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 220
    iput p1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mShortTermModelUserLux:F

    .line 221
    iput p2, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mShortTermModelUserBrightness:F

    .line 222
    invoke-direct {p0}, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->computeSpline()V

    .line 223
    return-void
.end method

.method public clearUserDataPoints()V
    .registers 4

    .line 227
    iget v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mShortTermModelUserLux:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_19

    .line 228
    const-string v0, "MiuiBrightnessMappingStrategy"

    const-string v2, "Clear user data points."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 230
    iput v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mShortTermModelUserLux:F

    .line 231
    iput v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mShortTermModelUserBrightness:F

    .line 232
    invoke-direct {p0}, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->computeSpline()V

    .line 234
    :cond_19
    return-void
.end method

.method public convertToAdjustedNits(F)F
    .registers 3
    .param p1, "brightness"  # F

    .line 191
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mBrightnessToAdjustedNitsSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public convertToBrightness(F)F
    .registers 3
    .param p1, "nit"  # F

    .line 201
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public convertToNits(F)F
    .registers 3
    .param p1, "brightness"  # F

    .line 186
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mBrightnessToNitsSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;F)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "hbmTransition"  # F

    .line 377
    const-string v0, "MiuiPhysicalMappingStrategy Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNitsToBacklightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mMaxGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelUserLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mShortTermModelUserLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelUserBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mShortTermModelUserBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDefaultConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  UndefinedBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mSplineGroup:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  GameBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mSplineGroup:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  VideoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mSplineGroup:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  MapsBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mSplineGroup:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ImageBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mSplineGroup:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ReadersBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mSplineGroup:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .registers 2

    .line 170
    iget v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mAutoBrightnessAdjustment:F

    return v0
.end method

.method public getBrightness(FLjava/lang/String;)F
    .registers 8
    .param p1, "lux"  # F
    .param p2, "packageName"  # Ljava/lang/String;

    .line 160
    invoke-direct {p0, p2}, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->applicationCategoryInfo(Ljava/lang/String;)I

    move-result v0

    .line 161
    .local v0, "category":I
    iget-object v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mSplineGroup:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Spline;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 162
    .local v1, "nits":F
    iget-object v2, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v2, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    .line 163
    .local v2, "backlight":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autobrightness adjustment by applications is applied, lux = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", brightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", appPackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiBrightnessMappingStrategy"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return v2
.end method

.method public getBrightness(FLjava/lang/String;I)F
    .registers 8
    .param p1, "lux"  # F
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "category"  # I

    .line 147
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 148
    .local v0, "nits":F
    iget-object v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v1, v0}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 151
    .local v1, "brightness":F
    iget v2, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mShortTermModelUserLux:F

    const/high16 v3, -0x40800000  # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_19

    .line 152
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->correctBrightness(FLjava/lang/String;I)F

    move-result v1

    goto :goto_25

    .line 153
    :cond_19
    iget-boolean v2, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_25

    .line 154
    const-string v2, "MiuiBrightnessMappingStrategy"

    const-string/jumbo v3, "user point set, correction not applied"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_25
    :goto_25
    return v1
.end method

.method public getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    return-object v0
.end method

.method public getBrightnessFromNits(F)F
    .registers 3
    .param p1, "nits"  # F

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public getBrightnessSpline()Landroid/util/Spline;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    return-object v0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    return-object v0
.end method

.method getMode()I
    .registers 2

    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public getPreset()I
    .registers 2

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getShortTermModelTimeout()J
    .registers 5

    .line 269
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelTimeoutMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_13

    .line 270
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelTimeoutMillis()J

    move-result-wide v0

    return-wide v0

    .line 272
    :cond_13
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method getUserBrightness()F
    .registers 2

    .line 367
    iget v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mShortTermModelUserBrightness:F

    return v0
.end method

.method public getUserDataPoint()F
    .registers 2

    .line 259
    iget v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mShortTermModelUserLux:F

    return v0
.end method

.method getUserLux()F
    .registers 2

    .line 362
    iget v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mShortTermModelUserLux:F

    return v0
.end method

.method public hasUserDataPoints()Z
    .registers 3

    .line 238
    iget v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mShortTermModelUserLux:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isDefaultConfig()Z
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    iget-object v1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public recalculateSplines(Z[F)V
    .registers 4
    .param p1, "applyAdjustment"  # Z
    .param p2, "adjustedNits"  # [F

    .line 253
    iput-boolean p1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mBrightnessRangeAdjustmentApplied:Z

    .line 254
    iget-boolean v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mBrightnessRangeAdjustmentApplied:Z

    if-eqz v0, :cond_8

    move-object v0, p2

    goto :goto_a

    :cond_8
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mNits:[F

    :goto_a
    invoke-direct {p0, v0}, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->computeNitsBrightnessSplines([F)V

    .line 255
    return-void
.end method

.method public setAutoBrightnessAdjustment(F)Z
    .registers 4
    .param p1, "adjustment"  # F

    .line 175
    const/high16 v0, -0x40800000  # -1.0f

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 176
    iget v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_10

    .line 177
    const/4 v0, 0x0

    return v0

    .line 179
    :cond_10
    iput p1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 180
    invoke-direct {p0}, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->computeSpline()V

    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 3
    .param p1, "config"  # Landroid/hardware/display/BrightnessConfiguration;

    .line 123
    if-nez p1, :cond_4

    .line 124
    iget-object p1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p1, v0}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 127
    const/4 v0, 0x0

    return v0

    .line 129
    :cond_e
    iput-object p1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 130
    invoke-direct {p0}, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->computeSpline()V

    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method protected setMiuiDisplayCloudController(Lcom/android/server/display/MiuiDisplayCloudController;)V
    .registers 2
    .param p1, "cloudController"  # Lcom/android/server/display/MiuiDisplayCloudController;

    .line 350
    iput-object p1, p0, Lcom/android/server/display/MiuiPhysicalBrightnessMappingStrategy;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    .line 351
    return-void
.end method
