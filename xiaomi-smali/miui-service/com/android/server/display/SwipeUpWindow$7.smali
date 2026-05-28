# classes.dex

.class Lcom/android/server/display/SwipeUpWindow$7;
.super Ljava/lang/Object;
.source "SwipeUpWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/SwipeUpWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private startTouchY:F

.field final synthetic this$0:Lcom/android/server/display/SwipeUpWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/SwipeUpWindow;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/SwipeUpWindow;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 584
    iput-object p1, p0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 30
    .param p1, "v"  # Landroid/view/View;
    .param p2, "event"  # Landroid/view/MotionEvent;

    .line 589
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v2}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$minitVelocityTrackerIfNotExists(Lcom/android/server/display/SwipeUpWindow;)V

    .line 590
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_252

    const/4 v3, 0x1

    goto/16 :goto_251

    .line 607
    :pswitch_13  #0x2
    iget-object v2, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v2}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmHandler(Lcom/android/server/display/SwipeUpWindow;)Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0x65

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 609
    iget-object v2, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v2}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmVelocityTracker(Lcom/android/server/display/SwipeUpWindow;)Landroid/view/VelocityTracker;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 611
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v4, v0, Lcom/android/server/display/SwipeUpWindow$7;->startTouchY:F

    sub-float/2addr v2, v4

    .line 612
    .local v2, "offsetY":F
    iget-object v4, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v4}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmStartPer(Lcom/android/server/display/SwipeUpWindow;)F

    move-result v4

    iget-object v5, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v5}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmScreenHeight(Lcom/android/server/display/SwipeUpWindow;)I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    div-float v5, v2, v5

    add-float/2addr v4, v5

    .line 613
    .local v4, "per":F
    iget-object v5, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    iget-object v6, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v6}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmScreenHeight(Lcom/android/server/display/SwipeUpWindow;)I

    move-result v6

    int-to-float v6, v6

    div-float v6, v2, v6

    .line 614
    const/high16 v7, 0x3f800000  # 1.0f

    invoke-virtual {v5, v6, v7}, Lcom/android/server/display/SwipeUpWindow;->afterFrictionValue(FF)F

    move-result v5

    .line 613
    const/4 v6, 0x0

    invoke-static {v6, v5}, Landroid/util/MathUtils;->min(FF)F

    move-result v5

    .line 615
    .local v5, "frictionY":F
    const/high16 v6, 0x40400000  # 3.0f

    mul-float/2addr v6, v4

    add-float/2addr v6, v7

    invoke-static {v7, v6}, Landroid/util/MathUtils;->min(FF)F

    move-result v13

    .line 617
    .local v13, "alpha":F
    iget-object v6, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v6}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmTipView(Lcom/android/server/display/SwipeUpWindow;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getTop()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x43160000  # 150.0f

    mul-float/2addr v7, v5

    add-float v19, v6, v7

    .line 618
    .local v19, "tipY":F
    const v6, 0x3ecccccd  # 0.4f

    mul-float/2addr v6, v13

    .line 619
    .local v6, "tipAlpha":F
    iget-object v7, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v7}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmIconView(Lcom/android/server/display/SwipeUpWindow;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42480000  # 50.0f

    mul-float/2addr v8, v5

    add-float v25, v7, v8

    .line 621
    .local v25, "iconY":F
    iget-object v7, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v7}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmScrollAnimationNeedInit(Lcom/android/server/display/SwipeUpWindow;)Z

    move-result v7

    if-eqz v7, :cond_158

    .line 622
    iget-object v7, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fputmScrollAnimationNeedInit(Lcom/android/server/display/SwipeUpWindow;Z)V

    .line 624
    iget-object v7, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    const v8, 0x4476bd78

    const v9, 0x3f666666  # 0.9f

    invoke-static {v7, v8, v9, v4}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$mstartGradientShadowAnimation(Lcom/android/server/display/SwipeUpWindow;FFF)V

    .line 626
    iget-object v7, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v7}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmIconSpringAnimation(Lcom/android/server/display/SwipeUpWindow;)Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    move-result-object v7

    if-eqz v7, :cond_ac

    .line 627
    iget-object v7, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v7}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmIconSpringAnimation(Lcom/android/server/display/SwipeUpWindow;)Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->cancel()V

    .line 630
    :cond_ac
    iget-object v7, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v7}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmTipSpringAnimation(Lcom/android/server/display/SwipeUpWindow;)Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    move-result-object v7

    if-eqz v7, :cond_bd

    .line 631
    iget-object v7, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v7}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmTipSpringAnimation(Lcom/android/server/display/SwipeUpWindow;)Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->cancel()V

    .line 633
    :cond_bd
    iget-object v7, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    new-instance v14, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    iget-object v15, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    iget-object v8, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    iget-object v9, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v9}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmIconView(Lcom/android/server/display/SwipeUpWindow;)Landroid/widget/ImageView;

    move-result-object v21

    sget-object v22, Lcom/android/server/display/animation/SpringAnimation;->Y:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 634
    const v23, 0x4476bd78

    const v24, 0x3f666666  # 0.9f

    move-object/from16 v20, v8

    invoke-static/range {v20 .. v25}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$mcreatSpringAnimation(Lcom/android/server/display/SwipeUpWindow;Landroid/view/View;Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;FFF)Lcom/android/server/display/animation/SpringAnimation;

    move-result-object v8

    move-object v9, v8

    iget-object v8, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    iget-object v10, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v10}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmIconView(Lcom/android/server/display/SwipeUpWindow;)Landroid/widget/ImageView;

    move-result-object v10

    move-object v11, v9

    move-object v9, v10

    sget-object v10, Lcom/android/server/display/animation/SpringAnimation;->ALPHA:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 636
    move-object v12, v11

    const v11, 0x4476bd78

    move-object/from16 v16, v12

    const v12, 0x3f666666  # 0.9f

    move/from16 v21, v2

    move-object/from16 v2, v16

    move/from16 v3, v25

    .end local v2  # "offsetY":F
    .end local v25  # "iconY":F
    .local v3, "iconY":F
    .local v21, "offsetY":F
    invoke-static/range {v8 .. v13}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$mcreatSpringAnimation(Lcom/android/server/display/SwipeUpWindow;Landroid/view/View;Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;FFF)Lcom/android/server/display/animation/SpringAnimation;

    move-result-object v8

    invoke-direct {v14, v15, v2, v8}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;-><init>(Lcom/android/server/display/SwipeUpWindow;Lcom/android/server/display/animation/SpringAnimation;Lcom/android/server/display/animation/SpringAnimation;)V

    invoke-static {v7, v14}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fputmIconSpringAnimation(Lcom/android/server/display/SwipeUpWindow;Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;)V

    .line 639
    iget-object v2, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    new-instance v7, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    iget-object v8, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    iget-object v14, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    iget-object v9, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v9}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmTipView(Lcom/android/server/display/SwipeUpWindow;)Landroid/widget/TextView;

    move-result-object v15

    sget-object v16, Lcom/android/server/display/animation/SpringAnimation;->Y:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 640
    const v17, 0x4476bd78

    const v18, 0x3f666666  # 0.9f

    invoke-static/range {v14 .. v19}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$mcreatSpringAnimation(Lcom/android/server/display/SwipeUpWindow;Landroid/view/View;Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;FFF)Lcom/android/server/display/animation/SpringAnimation;

    move-result-object v14

    move-object v9, v7

    move/from16 v15, v19

    .end local v19  # "tipY":F
    .local v15, "tipY":F
    iget-object v7, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    iget-object v10, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v10}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmTipView(Lcom/android/server/display/SwipeUpWindow;)Landroid/widget/TextView;

    move-result-object v10

    move-object v11, v9

    sget-object v9, Lcom/android/server/display/animation/SpringAnimation;->ALPHA:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 642
    move-object v12, v8

    move-object v8, v10

    const v10, 0x4476bd78

    move-object/from16 v16, v11

    const v11, 0x3f666666  # 0.9f

    move-object/from16 v26, v16

    move/from16 v16, v5

    move-object v5, v12

    move v12, v6

    move-object/from16 v6, v26

    .end local v5  # "frictionY":F
    .end local v6  # "tipAlpha":F
    .local v12, "tipAlpha":F
    .local v16, "frictionY":F
    invoke-static/range {v7 .. v12}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$mcreatSpringAnimation(Lcom/android/server/display/SwipeUpWindow;Landroid/view/View;Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;FFF)Lcom/android/server/display/animation/SpringAnimation;

    move-result-object v7

    invoke-direct {v6, v5, v14, v7}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;-><init>(Lcom/android/server/display/SwipeUpWindow;Lcom/android/server/display/animation/SpringAnimation;Lcom/android/server/display/animation/SpringAnimation;)V

    invoke-static {v2, v6}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fputmTipSpringAnimation(Lcom/android/server/display/SwipeUpWindow;Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;)V

    .line 645
    iget-object v2, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v2}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmIconSpringAnimation(Lcom/android/server/display/SwipeUpWindow;)Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->start()V

    .line 646
    iget-object v2, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v2}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmTipSpringAnimation(Lcom/android/server/display/SwipeUpWindow;)Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->start()V

    const/4 v3, 0x1

    goto/16 :goto_251

    .line 648
    .end local v3  # "iconY":F
    .end local v12  # "tipAlpha":F
    .end local v15  # "tipY":F
    .end local v16  # "frictionY":F
    .end local v21  # "offsetY":F
    .restart local v2  # "offsetY":F
    .restart local v5  # "frictionY":F
    .restart local v6  # "tipAlpha":F
    .restart local v19  # "tipY":F
    .restart local v25  # "iconY":F
    :cond_158
    move/from16 v21, v2

    move/from16 v16, v5

    move v12, v6

    move/from16 v15, v19

    move/from16 v3, v25

    .end local v2  # "offsetY":F
    .end local v5  # "frictionY":F
    .end local v6  # "tipAlpha":F
    .end local v19  # "tipY":F
    .end local v25  # "iconY":F
    .restart local v3  # "iconY":F
    .restart local v12  # "tipAlpha":F
    .restart local v15  # "tipY":F
    .restart local v16  # "frictionY":F
    .restart local v21  # "offsetY":F
    iget-object v2, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v2}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmGradientShadowSpringAnimation(Lcom/android/server/display/SwipeUpWindow;)Lcom/android/server/display/animation/SpringAnimation;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/display/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 649
    iget-object v2, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v2}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmIconSpringAnimation(Lcom/android/server/display/SwipeUpWindow;)Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    move-result-object v2

    invoke-virtual {v2, v3, v13}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->animateToFinalPosition(FF)V

    .line 650
    iget-object v2, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v2}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmTipSpringAnimation(Lcom/android/server/display/SwipeUpWindow;)Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    move-result-object v2

    invoke-virtual {v2, v15, v12}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->animateToFinalPosition(FF)V

    .line 652
    const/4 v3, 0x1

    goto/16 :goto_251

    .line 655
    .end local v3  # "iconY":F
    .end local v4  # "per":F
    .end local v12  # "tipAlpha":F
    .end local v13  # "alpha":F
    .end local v15  # "tipY":F
    .end local v16  # "frictionY":F
    .end local v21  # "offsetY":F
    :pswitch_17f  #0x1, 0x3
    iget-object v2, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v2}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmVelocityTracker(Lcom/android/server/display/SwipeUpWindow;)Landroid/view/VelocityTracker;

    move-result-object v2

    .line 656
    .local v2, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 657
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    .line 658
    .local v3, "curVelocitY":F
    iget-object v4, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v4}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$mrecycleVelocityTracker(Lcom/android/server/display/SwipeUpWindow;)V

    .line 660
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, v0, Lcom/android/server/display/SwipeUpWindow$7;->startTouchY:F

    sub-float/2addr v4, v5

    .line 661
    .local v4, "distance":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive ACTION_UP or ACTION_CANCEL curVelocityY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " distance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SwipeUpWindow"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/high16 v5, -0x3b860000  # -1000.0f

    cmpg-float v5, v3, v5

    const/high16 v6, 0x43480000  # 200.0f

    if-gez v5, :cond_1d1

    neg-float v5, v4

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1d1

    .line 664
    iget-object v5, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v5}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$msetUnlockState(Lcom/android/server/display/SwipeUpWindow;)V

    const/4 v3, 0x1

    goto/16 :goto_251

    .line 665
    :cond_1d1
    const/high16 v5, 0x447a0000  # 1000.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_1e2

    cmpl-float v5, v4, v6

    if-ltz v5, :cond_1e2

    .line 666
    iget-object v5, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v5}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$msetLockStateWithShortAnimation(Lcom/android/server/display/SwipeUpWindow;)V

    const/4 v3, 0x1

    goto :goto_251

    .line 668
    :cond_1e2
    neg-float v5, v4

    iget-object v6, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v6}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmUnlockDistance(Lcom/android/server/display/SwipeUpWindow;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1f4

    .line 669
    iget-object v5, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v5}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$msetUnlockState(Lcom/android/server/display/SwipeUpWindow;)V

    const/4 v3, 0x1

    goto :goto_251

    .line 670
    :cond_1f4
    iget-object v5, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v5}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmUnlockDistance(Lcom/android/server/display/SwipeUpWindow;)F

    move-result v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_205

    .line 671
    iget-object v5, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v5}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$msetLockStateWithShortAnimation(Lcom/android/server/display/SwipeUpWindow;)V

    const/4 v3, 0x1

    goto :goto_251

    .line 673
    :cond_205
    iget-object v5, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v5}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$msetWakeState(Lcom/android/server/display/SwipeUpWindow;)V

    .line 676
    const/4 v3, 0x1

    goto :goto_251

    .line 592
    .end local v2  # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v3  # "curVelocitY":F
    .end local v4  # "distance":F
    :pswitch_20c  #0x0
    iget-object v2, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v2}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmVelocityTracker(Lcom/android/server/display/SwipeUpWindow;)Landroid/view/VelocityTracker;

    move-result-object v2

    if-nez v2, :cond_21e

    .line 593
    iget-object v2, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fputmVelocityTracker(Lcom/android/server/display/SwipeUpWindow;Landroid/view/VelocityTracker;)V

    goto :goto_227

    .line 596
    :cond_21e
    iget-object v2, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v2}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmVelocityTracker(Lcom/android/server/display/SwipeUpWindow;)Landroid/view/VelocityTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 598
    :goto_227
    iget-object v2, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v2}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmVelocityTracker(Lcom/android/server/display/SwipeUpWindow;)Landroid/view/VelocityTracker;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 600
    iget-object v2, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    iget-object v3, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v3}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmAnimationState(Lcom/android/server/display/SwipeUpWindow;)Lcom/android/server/display/SwipeUpWindow$AnimationState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/SwipeUpWindow$AnimationState;->getCurrentState()F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fputmStartPer(Lcom/android/server/display/SwipeUpWindow;F)V

    .line 601
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v0, Lcom/android/server/display/SwipeUpWindow$7;->startTouchY:F

    .line 602
    iget-object v2, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v2}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$mresetIconAnimation(Lcom/android/server/display/SwipeUpWindow;)V

    .line 603
    iget-object v2, v0, Lcom/android/server/display/SwipeUpWindow$7;->this$0:Lcom/android/server/display/SwipeUpWindow;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fputmScrollAnimationNeedInit(Lcom/android/server/display/SwipeUpWindow;Z)V

    .line 604
    nop

    .line 680
    :goto_251
    return v3

    :pswitch_data_252
    .packed-switch 0x0
        :pswitch_20c  #00000000
        :pswitch_17f  #00000001
        :pswitch_13  #00000002
        :pswitch_17f  #00000003
    .end packed-switch
.end method
