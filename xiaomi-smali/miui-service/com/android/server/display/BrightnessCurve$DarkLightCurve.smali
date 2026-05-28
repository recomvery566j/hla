# classes.dex

.class Lcom/android/server/display/BrightnessCurve$DarkLightCurve;
.super Lcom/android/server/display/BrightnessCurve$Curve;
.source "BrightnessCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DarkLightCurve"
.end annotation


# instance fields
.field private final mHeadLux:F

.field private final mPullUpLimitNit:F

.field private final mPullUpMaxTan:F

.field private final mTailLux:F

.field final synthetic this$0:Lcom/android/server/display/BrightnessCurve;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessCurve;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/display/BrightnessCurve;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessCurve$Curve;-><init>(Lcom/android/server/display/BrightnessCurve;)V

    .line 310
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmCurrentCurveInterval(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mHeadLux:F

    .line 311
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmCurrentCurveInterval(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mTailLux:F

    .line 312
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmDarkLightCurvePullUpMaxTan(Lcom/android/server/display/BrightnessCurve;)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mPullUpMaxTan:F

    .line 313
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmDarkLightCurvePullUpLimitNit(Lcom/android/server/display/BrightnessCurve;)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mPullUpLimitNit:F

    .line 314
    return-void
.end method


# virtual methods
.method public connectLeft(Lcom/android/server/display/BrightnessCurve$Curve;)V
    .registers 2
    .param p1, "curve"  # Lcom/android/server/display/BrightnessCurve$Curve;

    .line 348
    return-void
.end method

.method public connectRight(Lcom/android/server/display/BrightnessCurve$Curve;)V
    .registers 11
    .param p1, "curve"  # Lcom/android/server/display/BrightnessCurve$Curve;

    .line 352
    iget-object v0, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_93

    .line 353
    iget-object v0, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 354
    .local v0, "tailPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v2}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mTailLux:F

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_37

    .line 355
    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mHeadLux:F

    iget v4, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mTailLux:F

    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mPointList:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$mcopyToDefaultSpline(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FF)V

    goto :goto_93

    .line 356
    :cond_37
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_69

    .line 357
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->create(FF)V

    goto :goto_93

    .line 359
    :cond_69
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v7, v1, v2

    .line 360
    .local v7, "diffNit":F
    iget-object v3, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    iget v4, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mHeadLux:F

    iget v5, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mTailLux:F

    iget-object v6, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mPointList:Ljava/util/List;

    const v8, 0x3f333333  # 0.7f

    invoke-static/range {v3 .. v8}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$mcopyToDefaultSpline(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FF)V

    .line 363
    .end local v0  # "tailPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    .end local v7  # "diffNit":F
    :cond_93
    :goto_93
    return-void
.end method

.method public create(FF)V
    .registers 12
    .param p1, "lux"  # F
    .param p2, "changeNit"  # F

    .line 318
    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v0}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_4d

    .line 319
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_33

    const/high16 v0, 0x40400000  # 3.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_33

    .line 320
    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v0}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    sub-float v6, v0, p2

    .line 321
    .local v6, "diffNit":F
    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mHeadLux:F

    iget v4, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mTailLux:F

    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mPointList:Ljava/util/List;

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$mcopyToDefaultSpline(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FF)V

    .line 322
    .end local v6  # "diffNit":F
    goto/16 :goto_be

    .line 323
    :cond_33
    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    iget-object v3, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mPointList:Ljava/util/List;

    iget v4, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mHeadLux:F

    iget v5, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mTailLux:F

    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v2}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmBrightnessMinTan(Lcom/android/server/display/BrightnessCurve;)F

    move-result v6

    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v2}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmBrightnessMinTan(Lcom/android/server/display/BrightnessCurve;)F

    move-result v7

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$mpullDownCurveCreate(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FFFF)V

    goto :goto_be

    .line 327
    :cond_4d
    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v0}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    sub-float v6, v0, p2

    .line 328
    .restart local v6  # "diffNit":F
    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v0}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mTailLux:F

    invoke-virtual {v0, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    sub-float/2addr v0, v6

    .line 329
    .local v0, "tailPointNit":F
    iget v2, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mPullUpLimitNit:F

    sub-float/2addr v2, p2

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mTailLux:F

    sub-float/2addr v3, p1

    div-float v8, v2, v3

    .line 330
    .local v8, "tanToLimitPoint":F
    iget v2, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mPullUpLimitNit:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_81

    .line 331
    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mHeadLux:F

    iget v4, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mTailLux:F

    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mPointList:Ljava/util/List;

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$mcopyToDefaultSpline(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FF)V

    .line 332
    return-void

    .line 333
    :cond_81
    iget v2, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mPullUpMaxTan:F

    cmpg-float v2, v8, v2

    if-gez v2, :cond_89

    .line 334
    iget v8, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mPullUpMaxTan:F

    .line 336
    :cond_89
    iget v2, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mTailLux:F

    sub-float/2addr v2, p1

    mul-float/2addr v2, v8

    add-float v0, p2, v2

    .line 337
    iget v2, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mHeadLux:F

    sub-float v2, p1, v2

    mul-float/2addr v2, v8

    sub-float v2, p2, v2

    .line 338
    .local v2, "headPointNit":F
    new-instance v3, Landroid/util/Pair;

    iget v4, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mHeadLux:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    .local v3, "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v4, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mPointList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v4, Landroid/util/Pair;

    iget v5, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mTailLux:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 341
    .local v4, "tailPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve$DarkLightCurve;->mPointList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    .end local v0  # "tailPointNit":F
    .end local v2  # "headPointNit":F
    .end local v3  # "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    .end local v4  # "tailPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    .end local v6  # "diffNit":F
    .end local v8  # "tanToLimitPoint":F
    :goto_be
    return-void
.end method
