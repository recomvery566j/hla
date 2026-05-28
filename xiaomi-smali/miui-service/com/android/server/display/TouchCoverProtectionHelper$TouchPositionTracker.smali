# classes.dex

.class final Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;
.super Ljava/lang/Object;
.source "TouchCoverProtectionHelper.java"

# interfaces
.implements Lcom/miui/server/input/gesture/MiuiGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/TouchCoverProtectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TouchPositionTracker"
.end annotation


# instance fields
.field private volatile mIsTouchingInArea:Z

.field private volatile mLastObservedTouchTime:J

.field private mPointerIndexTriggerBitMask:I

.field final synthetic this$0:Lcom/android/server/display/TouchCoverProtectionHelper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastObservedTouchTime(Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->mLastObservedTouchTime:J

    return-wide v0
.end method

.method private constructor <init>(Lcom/android/server/display/TouchCoverProtectionHelper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->this$0:Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/TouchCoverProtectionHelper;Lcom/android/server/display/TouchCoverProtectionHelper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;-><init>(Lcom/android/server/display/TouchCoverProtectionHelper;)V

    return-void
.end method

.method private updateTouchStatus(Landroid/view/MotionEvent;)V
    .registers 12
    .param p1, "motionEvent"  # Landroid/view/MotionEvent;

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 369
    .local v0, "pointerCount":I
    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 370
    .local v1, "pointerCoords":Landroid/view/MotionEvent$PointerCoords;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_42

    .line 371
    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 372
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 373
    .local v3, "pointerId":I
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v4

    .line 374
    .local v4, "x":F
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v6

    .line 375
    .local v6, "y":F
    iget-object v7, p0, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->this$0:Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-static {v7}, Lcom/android/server/display/TouchCoverProtectionHelper;->-$$Nest$fgetmTouchCoverProtectionRect(Lcom/android/server/display/TouchCoverProtectionHelper;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 376
    iget v7, p0, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->mPointerIndexTriggerBitMask:I

    shl-int/2addr v5, v3

    or-int/2addr v5, v7

    iput v5, p0, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->mPointerIndexTriggerBitMask:I

    goto :goto_3f

    .line 378
    :cond_38
    iget v7, p0, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->mPointerIndexTriggerBitMask:I

    shl-int/2addr v5, v3

    not-int v5, v5

    and-int/2addr v5, v7

    iput v5, p0, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->mPointerIndexTriggerBitMask:I

    .line 370
    .end local v3  # "pointerId":I
    .end local v4  # "x":F
    .end local v6  # "y":F
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 381
    .end local v2  # "i":I
    :cond_42
    return-void
.end method


# virtual methods
.method isTouchingInArea()Z
    .registers 2

    .line 384
    iget-boolean v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->mIsTouchingInArea:Z

    return v0
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 9
    .param p1, "motionEvent"  # Landroid/view/MotionEvent;

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 335
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_4c

    :pswitch_11  #0x4
    goto :goto_2c

    .line 346
    :pswitch_12  #0x6
    const v1, 0xff00

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x8

    .line 347
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 348
    .local v4, "pointerId":I
    iget v5, p0, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->mPointerIndexTriggerBitMask:I

    shl-int v6, v2, v4

    not-int v6, v6

    and-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->mPointerIndexTriggerBitMask:I

    .line 349
    goto :goto_2c

    .line 343
    .end local v1  # "index":I
    .end local v4  # "pointerId":I
    :pswitch_25  #0x1, 0x3
    iput v3, p0, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->mPointerIndexTriggerBitMask:I

    .line 344
    goto :goto_2c

    .line 339
    :pswitch_28  #0x0, 0x2, 0x5
    invoke-direct {p0, p1}, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->updateTouchStatus(Landroid/view/MotionEvent;)V

    .line 340
    nop

    .line 355
    :goto_2c
    iget v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->mPointerIndexTriggerBitMask:I

    if-eqz v1, :cond_49

    .line 356
    iput-boolean v2, p0, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->mIsTouchingInArea:Z

    .line 357
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->mLastObservedTouchTime:J

    .line 358
    invoke-static {}, Lcom/android/server/display/TouchCoverProtectionHelper;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 359
    invoke-static {}, Lcom/android/server/display/TouchCoverProtectionHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onPointerEvent: touch events occurred in area"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 362
    :cond_49
    iput-boolean v3, p0, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->mIsTouchingInArea:Z

    .line 365
    .end local v0  # "action":I
    :cond_4b
    :goto_4b
    return-void

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_28  #00000000
        :pswitch_25  #00000001
        :pswitch_28  #00000002
        :pswitch_25  #00000003
        :pswitch_11  #00000004
        :pswitch_28  #00000005
        :pswitch_12  #00000006
    .end packed-switch
.end method

.method setTouchingInArea(Z)V
    .registers 2
    .param p1, "isInArea"  # Z

    .line 388
    iput-boolean p1, p0, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->mIsTouchingInArea:Z

    .line 389
    return-void
.end method
