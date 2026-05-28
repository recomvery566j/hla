# classes.dex

.class Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;
.super Lcom/android/server/display/BrightnessCurve$Curve;
.source "BrightnessCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndoorLightCurve"
.end annotation


# instance fields
.field private final mAnchorPointLux:F

.field private final mHeadLux:F

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

    .line 371
    iput-object p1, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessCurve$Curve;-><init>(Lcom/android/server/display/BrightnessCurve;)V

    .line 372
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmCurrentCurveInterval(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mHeadLux:F

    .line 373
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmCurrentCurveInterval(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mTailLux:F

    .line 374
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmCurveAnchorPointLux(Lcom/android/server/display/BrightnessCurve;)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mAnchorPointLux:F

    .line 375
    return-void
.end method

.method private pullDownConnectLeft(Landroid/util/Pair;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 438
    .local p1, "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mPointList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v0}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mAnchorPointLux:F

    invoke-virtual {v0, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mAnchorPointLux:F

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    .line 440
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 441
    .local v0, "tanToAnchorPoint":F
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mTailLux:F

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 442
    .local v1, "tailPointNit":F
    new-instance v2, Landroid/util/Pair;

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mTailLux:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 443
    .local v2, "tailPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v3, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mPointList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    return-void
.end method

.method private pullDownConnectRight(Landroid/util/Pair;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 447
    .local p1, "tailPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mHeadLux:F

    invoke-virtual {v1, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mTailLux:F

    iget v2, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mHeadLux:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 449
    .local v0, "tanToHead":F
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmBrightnessMinTan(Lcom/android/server/display/BrightnessCurve;)F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2b

    .line 450
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmBrightnessMinTan(Lcom/android/server/display/BrightnessCurve;)F

    move-result v0

    .line 452
    :cond_2b
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mHeadLux:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    .line 453
    .local v1, "headPointNit":F
    new-instance v2, Landroid/util/Pair;

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mHeadLux:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 454
    .local v2, "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v3, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mPointList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v3, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mPointList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    return-void
.end method

.method private pullUpConnectLeft(Landroid/util/Pair;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 426
    .local p1, "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mPointList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v0}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mAnchorPointLux:F

    invoke-virtual {v0, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mAnchorPointLux:F

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    .line 428
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 429
    .local v0, "tanToAnchorPoint":F
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmBrightnessMinTan(Lcom/android/server/display/BrightnessCurve;)F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_36

    .line 430
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmBrightnessMinTan(Lcom/android/server/display/BrightnessCurve;)F

    move-result v0

    .line 432
    :cond_36
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mTailLux:F

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 433
    .local v1, "tailPointNit":F
    new-instance v2, Landroid/util/Pair;

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mTailLux:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 434
    .local v2, "tailPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v3, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mPointList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    return-void
.end method


# virtual methods
.method public connectLeft(Lcom/android/server/display/BrightnessCurve$Curve;)V
    .registers 10
    .param p1, "curve"  # Lcom/android/server/display/BrightnessCurve$Curve;

    .line 396
    iget-object v0, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_63

    .line 397
    iget-object v0, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    iget-object v1, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 398
    .local v0, "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v2}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mHeadLux:F

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3e

    .line 399
    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mHeadLux:F

    iget v4, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mTailLux:F

    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mPointList:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$mcopyToDefaultSpline(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FF)V

    goto :goto_63

    .line 400
    :cond_3e
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

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

    if-lez v1, :cond_60

    .line 401
    invoke-direct {p0, v0}, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->pullDownConnectLeft(Landroid/util/Pair;)V

    goto :goto_63

    .line 403
    :cond_60
    invoke-direct {p0, v0}, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->pullUpConnectLeft(Landroid/util/Pair;)V

    .line 406
    .end local v0  # "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_63
    :goto_63
    return-void
.end method

.method public connectRight(Lcom/android/server/display/BrightnessCurve$Curve;)V
    .registers 10
    .param p1, "curve"  # Lcom/android/server/display/BrightnessCurve$Curve;

    .line 410
    iget-object v0, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7e

    .line 411
    iget-object v0, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 412
    .local v0, "tailPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v2}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mTailLux:F

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_37

    .line 413
    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mHeadLux:F

    iget v4, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mTailLux:F

    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mPointList:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$mcopyToDefaultSpline(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FF)V

    goto :goto_7e

    .line 414
    :cond_37
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

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

    if-lez v1, :cond_59

    .line 415
    invoke-direct {p0, v0}, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->pullDownConnectRight(Landroid/util/Pair;)V

    goto :goto_7e

    .line 417
    :cond_59
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mHeadLux:F

    invoke-virtual {v1, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 418
    .local v1, "headPointNit":F
    new-instance v2, Landroid/util/Pair;

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mHeadLux:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    .local v2, "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v3, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mPointList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v3, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mPointList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    .end local v0  # "tailPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    .end local v1  # "headPointNit":F
    .end local v2  # "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_7e
    :goto_7e
    return-void
.end method

.method public create(FF)V
    .registers 11
    .param p1, "lux"  # F
    .param p2, "changeNit"  # F

    .line 379
    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v0}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mAnchorPointLux:F

    invoke-virtual {v0, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mAnchorPointLux:F

    sub-float/2addr v1, p1

    div-float/2addr v0, v1

    .line 381
    .local v0, "tanToAnchorPoint":F
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmBrightnessMinTan(Lcom/android/server/display/BrightnessCurve;)F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_21

    .line 382
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmBrightnessMinTan(Lcom/android/server/display/BrightnessCurve;)F

    move-result v0

    .line 384
    :cond_21
    iget v1, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mHeadLux:F

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v2}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmIndoorLightCurveTan(Lcom/android/server/display/BrightnessCurve;)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float v1, p2, v1

    .line 385
    .local v1, "headPointNit":F
    new-instance v2, Landroid/util/Pair;

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mHeadLux:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 386
    .local v2, "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v3, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mPointList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v3, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 388
    .local v3, "changePoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v4, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mPointList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    iget v4, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mTailLux:F

    sub-float/2addr v4, p1

    mul-float/2addr v4, v0

    add-float/2addr v4, p2

    .line 390
    .local v4, "tailPointNit":F
    new-instance v5, Landroid/util/Pair;

    iget v6, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mTailLux:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 391
    .local v5, "tailPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v6, p0, Lcom/android/server/display/BrightnessCurve$IndoorLightCurve;->mPointList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    return-void
.end method
