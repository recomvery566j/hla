# classes.dex

.class Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;
.super Lcom/android/server/display/BrightnessCurve$Curve;
.source "BrightnessCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecondOutdoorLightCurve"
.end annotation


# instance fields
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

    .line 537
    iput-object p1, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessCurve$Curve;-><init>(Lcom/android/server/display/BrightnessCurve;)V

    .line 538
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmCurrentCurveInterval(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mHeadLux:F

    .line 539
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmCurrentCurveInterval(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v0

    const/4 v1, 0x4

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mTailLux:F

    .line 540
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmCurrentCurveInterval(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mPullUpAnchorPointLux:F

    .line 541
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mTailLux:F

    invoke-virtual {v0, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mHeadLux:F

    invoke-virtual {v1, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mTailLux:F

    iget v2, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mHeadLux:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 543
    .local v0, "tan":F
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mTailLux:F

    invoke-virtual {v1, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    iget v2, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mTailLux:F

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mPullUpAnchorPointLux:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mPullUpAnchorPointNit:F

    .line 545
    return-void
.end method


# virtual methods
.method public connectLeft(Lcom/android/server/display/BrightnessCurve$Curve;)V
    .registers 10
    .param p1, "curve"  # Lcom/android/server/display/BrightnessCurve$Curve;

    .line 560
    iget-object v0, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7f

    .line 561
    iget-object v0, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    iget-object v1, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 562
    .local v0, "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v2}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mHeadLux:F

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3e

    .line 563
    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mHeadLux:F

    iget v4, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mTailLux:F

    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mPointList:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$mcopyToDefaultSpline(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FF)V

    goto :goto_7f

    .line 564
    :cond_3e
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

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

    if-lez v1, :cond_70

    .line 565
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->create(FF)V

    goto :goto_7f

    .line 567
    :cond_70
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    iget v2, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mTailLux:F

    iget-object v3, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v3}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmSecondOutdoorCurveBrightenMinTan(Lcom/android/server/display/BrightnessCurve;)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mPointList:Ljava/util/List;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$mpullUpConnectTail(Lcom/android/server/display/BrightnessCurve;Landroid/util/Pair;FFLjava/util/List;)V

    .line 570
    .end local v0  # "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_7f
    :goto_7f
    return-void
.end method

.method public connectRight(Lcom/android/server/display/BrightnessCurve$Curve;)V
    .registers 10
    .param p1, "curve"  # Lcom/android/server/display/BrightnessCurve$Curve;

    .line 574
    iget-object v0, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4a

    .line 575
    iget-object v0, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 576
    .local v0, "tailPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v2}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mTailLux:F

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_37

    .line 577
    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mHeadLux:F

    iget v4, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mTailLux:F

    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mPointList:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$mcopyToDefaultSpline(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FF)V

    goto :goto_4a

    .line 579
    :cond_37
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->create(FF)V

    .line 582
    .end local v0  # "tailPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_4a
    :goto_4a
    return-void
.end method

.method public create(FF)V
    .registers 12
    .param p1, "lux"  # F
    .param p2, "changeNit"  # F

    .line 549
    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v0}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_28

    .line 550
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    iget-object v4, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mPointList:Ljava/util/List;

    iget v5, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mHeadLux:F

    iget v6, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mTailLux:F

    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v0}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmSecondOutdoorCurveBrightenMinTan(Lcom/android/server/display/BrightnessCurve;)F

    move-result v7

    iget-object v0, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v0}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmSecondOutdoorCurveBrightenMinTan(Lcom/android/server/display/BrightnessCurve;)F

    move-result v8

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v8}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$mpullDownCurveCreate(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FFFF)V

    goto :goto_39

    .line 553
    :cond_28
    iget-object v1, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    iget-object v4, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mPointList:Ljava/util/List;

    iget v5, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mHeadLux:F

    iget v6, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mTailLux:F

    iget v7, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mPullUpAnchorPointLux:F

    iget v8, p0, Lcom/android/server/display/BrightnessCurve$SecondOutdoorLightCurve;->mPullUpAnchorPointNit:F

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v8}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$mpullUpCurveCreate(Lcom/android/server/display/BrightnessCurve;FFLjava/util/List;FFFF)V

    .line 556
    :goto_39
    return-void
.end method
