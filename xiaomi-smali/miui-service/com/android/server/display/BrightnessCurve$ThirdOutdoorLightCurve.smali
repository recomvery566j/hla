# classes.dex

.class Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;
.super Lcom/android/server/display/BrightnessCurve$Curve;
.source "BrightnessCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThirdOutdoorLightCurve"
.end annotation


# instance fields
.field private final mAnchorPointLux:F

.field private final mHeadLux:F

.field private final mTailLux:F

.field final synthetic this$0:Lcom/android/server/display/BrightnessCurve;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessCurve;)V
    .registers 5
    .param p1, "this$0"  # Lcom/android/server/display/BrightnessCurve;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 590
    iput-object p1, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessCurve$Curve;-><init>(Lcom/android/server/display/BrightnessCurve;)V

    .line 591
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmCurrentCurveInterval(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->mHeadLux:F

    .line 592
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmMaxLux(Lcom/android/server/display/BrightnessCurve;)F

    move-result v0

    iget v2, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->mHeadLux:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1d

    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmMaxLux(Lcom/android/server/display/BrightnessCurve;)F

    move-result v0

    goto :goto_22

    :cond_1d
    iget v0, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->mHeadLux:F

    const/high16 v2, 0x3f800000  # 1.0f

    add-float/2addr v0, v2

    :goto_22
    iput v0, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->mTailLux:F

    .line 593
    invoke-static {p1}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmCurrentCurveInterval(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->mAnchorPointLux:F

    .line 594
    return-void
.end method


# virtual methods
.method public connectLeft(Lcom/android/server/display/BrightnessCurve$Curve;)V
    .registers 12
    .param p1, "curve"  # Lcom/android/server/display/BrightnessCurve$Curve;

    .line 623
    iget-object v0, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_97

    .line 624
    iget-object v0, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    iget-object v1, p1, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 625
    .local v0, "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 626
    .local v1, "lux":F
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 627
    .local v2, "changeNit":F
    move v3, v2

    .line 628
    .local v3, "lastNit":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2a
    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v5}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLux(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_97

    .line 629
    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v5}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLux(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v5

    aget v5, v5, v4

    cmpg-float v5, v5, v1

    if-gez v5, :cond_40

    .line 630
    goto :goto_94

    .line 632
    :cond_40
    iget v5, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->mTailLux:F

    iget-object v6, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v6}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLux(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v6

    aget v6, v6, v4

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->mTailLux:F

    sub-float/2addr v6, v1

    div-float/2addr v5, v6

    .line 633
    .local v5, "ratio":F
    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-lez v7, :cond_55

    move v6, v5

    .line 634
    .end local v5  # "ratio":F
    .local v6, "ratio":F
    :cond_55
    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v5}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v7}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLux(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v7

    aget v7, v7, v4

    invoke-virtual {v5, v7}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    iget-object v7, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v7}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v7

    .line 635
    invoke-virtual {v7, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v7

    sub-float v7, v2, v7

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    .line 636
    .local v5, "nit":F
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 637
    move v3, v5

    .line 638
    new-instance v7, Landroid/util/Pair;

    iget-object v8, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v8}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLux(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v8

    aget v8, v8, v4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 639
    .local v7, "point":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v8, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->mPointList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    .end local v5  # "nit":F
    .end local v6  # "ratio":F
    .end local v7  # "point":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :goto_94
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 642
    .end local v0  # "headPoint":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    .end local v1  # "lux":F
    .end local v2  # "changeNit":F
    .end local v3  # "lastNit":F
    .end local v4  # "i":I
    :cond_97
    return-void
.end method

.method public connectRight(Lcom/android/server/display/BrightnessCurve$Curve;)V
    .registers 2
    .param p1, "curve"  # Lcom/android/server/display/BrightnessCurve$Curve;

    .line 647
    return-void
.end method

.method public create(FF)V
    .registers 10
    .param p1, "lux"  # F
    .param p2, "changeNit"  # F

    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "lastNit":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v2}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLux(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_c9

    .line 600
    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v2}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLux(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v2

    aget v2, v2, v1

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->mHeadLux:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1b

    .line 601
    goto/16 :goto_c5

    .line 604
    :cond_1b
    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v2}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmIdx(Lcom/android/server/display/BrightnessCurve;)I

    move-result v2

    if-ge v1, v2, :cond_79

    .line 605
    iget v2, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->mAnchorPointLux:F

    iget-object v3, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v3}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLux(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v3

    aget v3, v3, v1

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->mAnchorPointLux:F

    iget-object v4, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v4}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLux(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v5}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmIdx(Lcom/android/server/display/BrightnessCurve;)I

    move-result v5

    aget v4, v4, v5

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    .line 606
    .local v2, "ratio":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_46

    move v3, v2

    .line 607
    .end local v2  # "ratio":F
    .local v3, "ratio":F
    :cond_46
    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v2}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v4}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLux(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v4

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    iget-object v4, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v4}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v5}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLux(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v6}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmIdx(Lcom/android/server/display/BrightnessCurve;)I

    move-result v6

    aget v5, v5, v6

    .line 608
    invoke-virtual {v4, v5}, Landroid/util/Spline;->interpolate(F)F

    move-result v4

    sub-float v4, p2, v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 609
    .local v2, "nit":F
    invoke-static {p2, v2}, Landroid/util/MathUtils;->min(FF)F

    move-result v2

    .line 610
    .end local v3  # "ratio":F
    goto :goto_a6

    .line 611
    .end local v2  # "nit":F
    :cond_79
    iget-object v2, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v2}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v3}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLux(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v3}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLuxToNitsDefault(Lcom/android/server/display/BrightnessCurve;)Landroid/util/Spline;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v4}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLux(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v5}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmIdx(Lcom/android/server/display/BrightnessCurve;)I

    move-result v5

    aget v4, v4, v5

    .line 612
    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    sub-float v3, p2, v3

    add-float/2addr v2, v3

    .line 614
    .restart local v2  # "nit":F
    :goto_a6
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 615
    move v0, v2

    .line 616
    new-instance v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->this$0:Lcom/android/server/display/BrightnessCurve;

    invoke-static {v4}, Lcom/android/server/display/BrightnessCurve;->-$$Nest$fgetmLux(Lcom/android/server/display/BrightnessCurve;)[F

    move-result-object v4

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 617
    .local v3, "point":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v4, p0, Lcom/android/server/display/BrightnessCurve$ThirdOutdoorLightCurve;->mPointList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    .end local v2  # "nit":F
    .end local v3  # "point":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :goto_c5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 619
    .end local v1  # "i":I
    :cond_c9
    return-void
.end method
