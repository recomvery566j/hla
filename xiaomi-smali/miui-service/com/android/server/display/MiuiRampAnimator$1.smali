# classes.dex

.class Lcom/android/server/display/MiuiRampAnimator$1;
.super Ljava/lang/Object;
.source "MiuiRampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MiuiRampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MiuiRampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/MiuiRampAnimator;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/MiuiRampAnimator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 136
    .local p0, "this":Lcom/android/server/display/MiuiRampAnimator$1;, "Lcom/android/server/display/MiuiRampAnimator$1;"
    iput-object p1, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 139
    .local p0, "this":Lcom/android/server/display/MiuiRampAnimator$1;, "Lcom/android/server/display/MiuiRampAnimator$1;"
    iget-object v0, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v0}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmChoreographer(Lcom/android/server/display/MiuiRampAnimator;)Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    .line 140
    .local v0, "frameTimeNanos":J
    iget-object v2, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v2}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmLastFrameTimeNanos(Lcom/android/server/display/MiuiRampAnimator;)J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x3089705f  # 1.0E-9f

    mul-float/2addr v2, v3

    .line 142
    .local v2, "timeDelta":F
    iget-object v3, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v3, v0, v1}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fputmLastFrameTimeNanos(Lcom/android/server/display/MiuiRampAnimator;J)V

    .line 148
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v3

    .line 149
    .local v3, "scale":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_32

    .line 151
    iget-object v4, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    iget-object v5, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fputmAnimatedValue(Lcom/android/server/display/MiuiRampAnimator;F)V

    goto :goto_78

    .line 153
    :cond_32
    iget-object v4, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v4}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmRate(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v3

    .line 154
    .local v4, "amount":F
    iget-object v5, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v6

    if-le v5, v6, :cond_61

    .line 155
    iget-object v5, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmAnimatedValue(Lcom/android/server/display/MiuiRampAnimator;)F

    move-result v6

    add-float/2addr v6, v4

    iget-object v7, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v7}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fputmAnimatedValue(Lcom/android/server/display/MiuiRampAnimator;F)V

    goto :goto_78

    .line 157
    :cond_61
    iget-object v5, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmAnimatedValue(Lcom/android/server/display/MiuiRampAnimator;)F

    move-result v6

    sub-float/2addr v6, v4

    iget-object v7, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v7}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fputmAnimatedValue(Lcom/android/server/display/MiuiRampAnimator;F)V

    .line 160
    .end local v4  # "amount":F
    :goto_78
    iget-object v4, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v4}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v4

    .line 161
    .local v4, "oldCurrentValue":I
    iget-object v5, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmAnimatedValue(Lcom/android/server/display/MiuiRampAnimator;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fputmCurrentValue(Lcom/android/server/display/MiuiRampAnimator;I)V

    .line 163
    iget-object v5, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v5

    if-eq v4, v5, :cond_aa

    .line 164
    iget-object v5, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmProperty(Lcom/android/server/display/MiuiRampAnimator;)Landroid/util/IntProperty;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmObject(Lcom/android/server/display/MiuiRampAnimator;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v7}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 167
    :cond_aa
    iget-object v5, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v6

    if-eq v5, v6, :cond_be

    .line 168
    iget-object v5, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$mpostAnimationCallback(Lcom/android/server/display/MiuiRampAnimator;)V

    goto :goto_d5

    .line 170
    :cond_be
    iget-object v5, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fputmAnimating(Lcom/android/server/display/MiuiRampAnimator;Z)V

    .line 171
    iget-object v5, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmListener(Lcom/android/server/display/MiuiRampAnimator;)Lcom/android/server/display/MiuiRampAnimator$Listener;

    move-result-object v5

    if-eqz v5, :cond_d5

    .line 172
    iget-object v5, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/MiuiRampAnimator;->-$$Nest$fgetmListener(Lcom/android/server/display/MiuiRampAnimator;)Lcom/android/server/display/MiuiRampAnimator$Listener;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/display/MiuiRampAnimator$Listener;->onAnimationEnd()V

    .line 175
    :cond_d5
    :goto_d5
    return-void
.end method
