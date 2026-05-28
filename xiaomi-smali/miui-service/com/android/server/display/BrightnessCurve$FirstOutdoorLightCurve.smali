# classes.dex

.class Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;
.super Lcom/android/server/display/BrightnessCurve$Curve;
.source "BrightnessCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FirstOutdoorLightCurve"
.end annotation


# instance fields
.field private final mAnchorPointLux:F

.field private final mHeadLux:F

.field private final mPullUpAnchorPointLux:F

.field private final mPullUpAnchorPointNit:F

.field private final mTailLux:F

.field final synthetic this$0:Lcom/android/server/display/BrightnessCurve;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessCurve;)V
    .registers 6
    .param p1, "this$0"  # Lcom/android/server/display/BrightnessCurve;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 466
    iput-object p1, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessCurve$Curve;-><init>(Lcom/android/server/display/BrightnessCurve;)V

    .line 467
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmCurrentCurveInterval(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mHeadLux:F

    .line 468
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmCurrentCurveInterval(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mTailLux:F

    .line 469
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmCurveAnchorPointLux(Lcom/android/server/display/BrightnessCurve;)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mAnchorPointLux:F

    .line 470
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmCurrentCurveInterval(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mPullUpAnchorPointLux:F

    .line 471
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mTailLux:F

    invoke-virtual {v0, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mHeadLux:F

    invoke-virtual {v1, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mTailLux:F

    iget v2, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mHeadLux:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 473
    .local v0, "tan":F
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mTailLux:F

    invoke-virtual {v1, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    iget v2, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mTailLux:F

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mPullUpAnchorPointLux:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mPullUpAnchorPointNit:F

    .line 475
    return-void
.end method

.method private pullUpConnectLeft(Landroid/util/Pair;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 516
    .local p1, "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mPointList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v0}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mAnchorPointLux:F

    invoke-virtual {v0, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mAnchorPointLux:F

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    .line 518
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 519
    .local v0, "tanToAnchorPoint":F
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmBrightnessMinTan(Lcom/android/server/display/BrightnessCurve;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3e

    .line 520
    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mAnchorPointLux:F

    iget v4, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mTailLux:F

    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mPointList:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$mcopyToDefaultSpline(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FF)V

    goto :goto_77

    .line 522
    :cond_3e
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmBrightnessMinTan(Lcom/android/server/display/BrightnessCurve;)F

    move-result v0

    .line 523
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mAnchorPointLux:F

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    .line 524
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 525
    .local v1, "anchorPointNit":F
    new-instance v2, Landroid/util/Pair;

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mAnchorPointLux:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 526
    .local v2, "anchorPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v3, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    iget v4, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mTailLux:F

    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v5}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmBrightnessMinTan(Lcom/android/server/display/BrightnessCurve;)F

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mPointList:Ljava/util/List;

    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$mpullUpConnectTail(Lcom/android/server/display/BrightnessCurve;Landroid/util/Pair;FFLjava/util/List;)V

    .line 528
    .end local v1  # "anchorPointNit":F
    .end local v2  # "anchorPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :goto_77
    return-void
.end method


# virtual methods
.method public connectLeft(Lcom/android/server/display/BrightnessCurve$Curve;)V
    .registers 10
    .param p1, "curve"  # Lcom/android/server/display/BrightnessCurve$Curve;

    .line 490
    iget-object v0, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_72

    .line 491
    iget-object v0, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    iget-object v1, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 492
    .local v0, "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v2}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mHeadLux:F

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3e

    .line 493
    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mHeadLux:F

    iget v4, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mTailLux:F

    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mPointList:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$mcopyToDefaultSpline(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FF)V

    goto :goto_72

    .line 494
    :cond_3e
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

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

    if-lez v1, :cond_6f

    .line 495
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mPointList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mAnchorPointLux:F

    iget v4, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mTailLux:F

    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mPointList:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$mcopyToDefaultSpline(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FF)V

    goto :goto_72

    .line 498
    :cond_6f
    invoke-direct {p0, v0}, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->pullUpConnectLeft(Landroid/util/Pair;)V

    .line 501
    .end local v0  # "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_72
    :goto_72
    return-void
.end method

.method public connectRight(Lcom/android/server/display/BrightnessCurve$Curve;)V
    .registers 10
    .param p1, "curve"  # Lcom/android/server/display/BrightnessCurve$Curve;

    .line 505
    iget-object v0, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4a

    .line 506
    iget-object v0, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 507
    .local v0, "tailPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v2}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mTailLux:F

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_37

    .line 508
    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mHeadLux:F

    iget v4, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mTailLux:F

    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mPointList:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$mcopyToDefaultSpline(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FF)V

    goto :goto_4a

    .line 510
    :cond_37
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->create(FF)V

    .line 513
    .end local v0  # "tailPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_4a
    :goto_4a
    return-void
.end method

.method public create(FF)V
    .registers 12
    .param p1, "lux"  # F
    .param p2, "changeNit"  # F

    .line 479
    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v0}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_28

    .line 480
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    iget-object v4, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mPointList:Ljava/util/List;

    iget v5, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mHeadLux:F

    iget v6, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mTailLux:F

    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v0}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmBrightnessMinTan(Lcom/android/server/display/BrightnessCurve;)F

    move-result v7

    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v0}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmBrightnessMinTan(Lcom/android/server/display/BrightnessCurve;)F

    move-result v8

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v8}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$mpullDownCurveCreate(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FFFF)V

    goto :goto_39

    .line 483
    :cond_28
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    iget-object v4, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mPointList:Ljava/util/List;

    iget v5, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mHeadLux:F

    iget v6, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mTailLux:F

    iget v7, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mPullUpAnchorPointLux:F

    iget v8, p0, Lcom/android/server/display/BrightnessCurve$FirstOutdoorLightCurve;->mPullUpAnchorPointNit:F

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v8}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$mpullUpCurveCreate(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FFFF)V

    .line 486
    :goto_39
    return-void
.end method
