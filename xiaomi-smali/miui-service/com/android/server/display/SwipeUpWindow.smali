# classes.dex

.class public Lcom/android/server/display/SwipeUpWindow;
.super Ljava/lang/Object;
.source "SwipeUpWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/SwipeUpWindow$SwipeUpWindowHandler;,
        Lcom/android/server/display/SwipeUpWindow$AnimationState;,
        Lcom/android/server/display/SwipeUpWindow$SwipeUpFrameLayout;,
        Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;
    }
.end annotation


# static fields
.field private static final BG_INIT_ALPHA:F = 0.6f

.field private static final DEBUG:Z = false

.field private static final DEFAULT_DAMPING:F = 0.95f

.field private static final DEFAULT_STIFFNESS:F = 322.27f

.field private static final DISTANCE_DEBOUNCE:F = 200.0f

.field private static final ICON_HEIGHT:I = 0x1c

.field private static final ICON_OFFSET:F = 30.0f

.field private static final ICON_TIP_SHOW_DAMPING:F = 1.0f

.field private static final ICON_TIP_SHOW_STIFFNESS:F = 39.478416f

.field private static final ICON_VIEW_BOTTOM:F = 117.0f

.field private static final ICON_WIDTH:I = 0x1c

.field private static final LOCK_SATE_START_DELAY:I = 0x3e8

.field private static final LOCK_STATE_LONG_DAMPING:F = 1.0f

.field private static final LOCK_STATE_LONG_STIFFNESS:F = 6.86f

.field private static final MSG_ICON_LOCK_ANIMATION:I = 0x66

.field private static final MSG_ICON_TIP_HIDE_ANIMATION:I = 0x67

.field private static final MSG_LOCK_STATE_WITH_LONG_ANIMATION:I = 0x65

.field private static final MSG_RELEASE_WINDOW:I = 0x69

.field private static final MSG_SCREEN_OFF:I = 0x68

.field private static final SCREEN_HEIGHT:I = 0x9d8

.field private static final SCREEN_OFF_DELAY:I = 0x1770

.field private static final SCREEN_WIDTH:I = 0x438

.field private static final SCROLL_DAMPING:F = 0.9f

.field private static final SCROLL_STIFFNESS:F = 986.96045f

.field private static final SHOW_STATE_DAMPING:F = 1.0f

.field private static final SHOW_STATE_STIFFNESS:F = 157.91367f

.field public static final TAG:Ljava/lang/String; = "SwipeUpWindow"

.field private static final TIP_HEIGHT:I = 0x19

.field private static final TIP_INIT_ALPHA:F = 0.4f

.field private static final TIP_OFFSET:F = 50.0f

.field private static final TIP_TEXT_SIZE:I = 0x13

.field private static final TIP_VIEW_BOTTOM:F = 63.0f


# instance fields
.field private mAnimationState:Lcom/android/server/display/SwipeUpWindow$AnimationState;

.field private mBlackLinearGradientView:Lcom/android/server/display/BlackLinearGradientView;

.field private mContext:Landroid/content/Context;

.field private mGradientShadowSpringAnimation:Lcom/android/server/display/animation/SpringAnimation;

.field private mHandler:Landroid/os/Handler;

.field private mIconDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mIconSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

.field private mIconView:Landroid/widget/ImageView;

.field private mLockStateLongAnimationEndListener:Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

.field private mLockStateShortAnimationEndListener:Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreBlurLevel:I

.field private mPreBottomColor:I

.field private mPreOnAnimationEndListener:Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

.field private mPreTopColor:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mScrollAnimationNeedInit:Z

.field private mStartPer:F

.field private mSwipeUpFrameLayout:Landroid/widget/FrameLayout;

.field private mSwipeUpLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mSwipeUpWindowShowing:Z

.field private mTipSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

.field private mTipView:Landroid/widget/TextView;

.field private mUnlockDistance:F

.field private mUnlockStateAnimationEndListener:Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWakeStateAnimationEndListener:Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnimationState(Lcom/android/server/display/SwipeUpWindow;)Lcom/android/server/display/SwipeUpWindow$AnimationState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/SwipeUpWindow;->mAnimationState:Lcom/android/server/display/SwipeUpWindow$AnimationState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGradientShadowSpringAnimation(Lcom/android/server/display/SwipeUpWindow;)Lcom/android/server/display/animation/SpringAnimation;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/SwipeUpWindow;->mGradientShadowSpringAnimation:Lcom/android/server/display/animation/SpringAnimation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/SwipeUpWindow;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/SwipeUpWindow;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconSpringAnimation(Lcom/android/server/display/SwipeUpWindow;)Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconView(Lcom/android/server/display/SwipeUpWindow;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenHeight(Lcom/android/server/display/SwipeUpWindow;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/SwipeUpWindow;->mScreenHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollAnimationNeedInit(Lcom/android/server/display/SwipeUpWindow;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/SwipeUpWindow;->mScrollAnimationNeedInit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartPer(Lcom/android/server/display/SwipeUpWindow;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/SwipeUpWindow;->mStartPer:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTipSpringAnimation(Lcom/android/server/display/SwipeUpWindow;)Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/SwipeUpWindow;->mTipSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTipView(Lcom/android/server/display/SwipeUpWindow;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/SwipeUpWindow;->mTipView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnlockDistance(Lcom/android/server/display/SwipeUpWindow;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/SwipeUpWindow;->mUnlockDistance:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVelocityTracker(Lcom/android/server/display/SwipeUpWindow;)Landroid/view/VelocityTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/SwipeUpWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIconSpringAnimation(Lcom/android/server/display/SwipeUpWindow;Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/SwipeUpWindow;->mIconSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScrollAnimationNeedInit(Lcom/android/server/display/SwipeUpWindow;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/SwipeUpWindow;->mScrollAnimationNeedInit:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartPer(Lcom/android/server/display/SwipeUpWindow;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/SwipeUpWindow;->mStartPer:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTipSpringAnimation(Lcom/android/server/display/SwipeUpWindow;Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/SwipeUpWindow;->mTipSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVelocityTracker(Lcom/android/server/display/SwipeUpWindow;Landroid/view/VelocityTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/SwipeUpWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreatSpringAnimation(Lcom/android/server/display/SwipeUpWindow;Landroid/view/View;Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;FFF)Lcom/android/server/display/animation/SpringAnimation;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/SwipeUpWindow;->creatSpringAnimation(Landroid/view/View;Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;FFF)Lcom/android/server/display/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleScreenOff(Lcom/android/server/display/SwipeUpWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->handleScreenOff()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitVelocityTrackerIfNotExists(Lcom/android/server/display/SwipeUpWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->initVelocityTrackerIfNotExists()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mplayIconAndTipHideAnimation(Lcom/android/server/display/SwipeUpWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->playIconAndTipHideAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mplayIconAnimation(Lcom/android/server/display/SwipeUpWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->playIconAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecycleVelocityTracker(Lcom/android/server/display/SwipeUpWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->recycleVelocityTracker()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetIconAnimation(Lcom/android/server/display/SwipeUpWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->resetIconAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLockStateWithLongAnimation(Lcom/android/server/display/SwipeUpWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->setLockStateWithLongAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLockStateWithShortAnimation(Lcom/android/server/display/SwipeUpWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->setLockStateWithShortAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUnlockState(Lcom/android/server/display/SwipeUpWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->setUnlockState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWakeState(Lcom/android/server/display/SwipeUpWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->setWakeState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartGradientShadowAnimation(Lcom/android/server/display/SwipeUpWindow;FFF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/SwipeUpWindow;->startGradientShadowAnimation(FFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSwipeUpAnimation(Lcom/android/server/display/SwipeUpWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->startSwipeUpAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBlackView(Lcom/android/server/display/SwipeUpWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->updateBlackView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/SwipeUpWindow;->mPreTopColor:I

    .line 122
    iput v0, p0, Lcom/android/server/display/SwipeUpWindow;->mPreBottomColor:I

    .line 123
    iput v0, p0, Lcom/android/server/display/SwipeUpWindow;->mPreBlurLevel:I

    .line 124
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/server/display/SwipeUpWindow;->mStartPer:F

    .line 529
    new-instance v0, Lcom/android/server/display/SwipeUpWindow$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/SwipeUpWindow$3;-><init>(Lcom/android/server/display/SwipeUpWindow;)V

    iput-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mWakeStateAnimationEndListener:Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

    .line 544
    new-instance v0, Lcom/android/server/display/SwipeUpWindow$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/SwipeUpWindow$4;-><init>(Lcom/android/server/display/SwipeUpWindow;)V

    iput-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mLockStateLongAnimationEndListener:Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

    .line 559
    new-instance v0, Lcom/android/server/display/SwipeUpWindow$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/SwipeUpWindow$5;-><init>(Lcom/android/server/display/SwipeUpWindow;)V

    iput-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mLockStateShortAnimationEndListener:Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

    .line 571
    new-instance v0, Lcom/android/server/display/SwipeUpWindow$6;

    invoke-direct {v0, p0}, Lcom/android/server/display/SwipeUpWindow$6;-><init>(Lcom/android/server/display/SwipeUpWindow;)V

    iput-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mUnlockStateAnimationEndListener:Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

    .line 584
    new-instance v0, Lcom/android/server/display/SwipeUpWindow$7;

    invoke-direct {v0, p0}, Lcom/android/server/display/SwipeUpWindow$7;-><init>(Lcom/android/server/display/SwipeUpWindow;)V

    iput-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 132
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/display/SwipeUpWindow;->mScreenHeight:I

    .line 133
    iput v0, p0, Lcom/android/server/display/SwipeUpWindow;->mScreenWidth:I

    .line 134
    iput-object p1, p0, Lcom/android/server/display/SwipeUpWindow;->mContext:Landroid/content/Context;

    .line 135
    new-instance v0, Lcom/android/server/display/SwipeUpWindow$SwipeUpWindowHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/display/SwipeUpWindow$SwipeUpWindowHandler;-><init>(Lcom/android/server/display/SwipeUpWindow;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/android/server/display/SwipeUpWindow$AnimationState;

    invoke-direct {v0, p0}, Lcom/android/server/display/SwipeUpWindow$AnimationState;-><init>(Lcom/android/server/display/SwipeUpWindow;)V

    iput-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mAnimationState:Lcom/android/server/display/SwipeUpWindow$AnimationState;

    .line 138
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 139
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mPowerManager:Landroid/os/PowerManager;

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/SwipeUpWindow;->updateSettings(Z)V

    .line 142
    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->updateSizeInfo()V

    .line 143
    return-void
.end method

.method private calculateBlackAlpha(F)I
    .registers 4
    .param p1, "alpha"  # F

    .line 427
    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 429
    .local v0, "blackAlpha":I
    shl-int/lit8 v1, v0, 0x18

    or-int/lit8 v1, v1, 0x0

    return v1
.end method

.method private constraintAlpha(F)F
    .registers 4
    .param p1, "alpha"  # F

    .line 459
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_7

    :goto_6
    goto :goto_e

    :cond_7
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_d

    goto :goto_6

    :cond_d
    move v0, p1

    :goto_e
    return v0
.end method

.method private constraintBlur(F)F
    .registers 4
    .param p1, "level"  # F

    .line 463
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_7

    :goto_6
    goto :goto_e

    :cond_7
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_d

    goto :goto_6

    :cond_d
    move v0, p1

    :goto_e
    return v0
.end method

.method private creatSpringAnimation(Landroid/view/View;Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;F)Lcom/android/server/display/animation/SpringAnimation;
    .registers 10
    .param p1, "view"  # Landroid/view/View;
    .param p2, "viewProperty"  # Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;
    .param p3, "finalPosition"  # F

    .line 790
    const v3, 0x43a1228f

    const v4, 0x3f733333  # 0.95f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .end local p1  # "view":Landroid/view/View;
    .end local p2  # "viewProperty":Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;
    .end local p3  # "finalPosition":F
    .local v1, "view":Landroid/view/View;
    .local v2, "viewProperty":Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;
    .local v5, "finalPosition":F
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/SwipeUpWindow;->creatSpringAnimation(Landroid/view/View;Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;FFF)Lcom/android/server/display/animation/SpringAnimation;

    move-result-object p1

    return-object p1
.end method

.method private creatSpringAnimation(Landroid/view/View;Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;FFF)Lcom/android/server/display/animation/SpringAnimation;
    .registers 9
    .param p1, "view"  # Landroid/view/View;
    .param p2, "viewProperty"  # Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;
    .param p3, "stiffness"  # F
    .param p4, "damping"  # F
    .param p5, "finalPosition"  # F

    .line 797
    new-instance v0, Lcom/android/server/display/animation/SpringAnimation;

    invoke-direct {v0, p1, p2}, Lcom/android/server/display/animation/SpringAnimation;-><init>(Ljava/lang/Object;Lcom/android/server/display/animation/FloatPropertyCompat;)V

    .line 798
    .local v0, "springAnimation":Lcom/android/server/display/animation/SpringAnimation;
    new-instance v1, Lcom/android/server/display/animation/SpringForce;

    invoke-direct {v1, p5}, Lcom/android/server/display/animation/SpringForce;-><init>(F)V

    .line 799
    .local v1, "springForce":Lcom/android/server/display/animation/SpringForce;
    invoke-virtual {v1, p3}, Lcom/android/server/display/animation/SpringForce;->setStiffness(F)Lcom/android/server/display/animation/SpringForce;

    .line 800
    invoke-virtual {v1, p4}, Lcom/android/server/display/animation/SpringForce;->setDampingRatio(F)Lcom/android/server/display/animation/SpringForce;

    .line 801
    invoke-virtual {v0, v1}, Lcom/android/server/display/animation/SpringAnimation;->setSpring(Lcom/android/server/display/animation/SpringForce;)Lcom/android/server/display/animation/SpringAnimation;

    .line 802
    const/high16 v2, 0x3b800000  # 0.00390625f

    invoke-virtual {v0, v2}, Lcom/android/server/display/animation/SpringAnimation;->setMinimumVisibleChange(F)Lcom/android/server/display/animation/DynamicAnimation;

    .line 803
    return-object v0
.end method

.method private handleScreenOff()V
    .registers 6

    .line 490
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 491
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 493
    return-void
.end method

.method private initBlackLinearGradientView()V
    .registers 4

    .line 241
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 245
    .local v0, "backViewParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Lcom/android/server/display/BlackLinearGradientView;

    iget-object v2, p0, Lcom/android/server/display/SwipeUpWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/display/BlackLinearGradientView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mBlackLinearGradientView:Lcom/android/server/display/BlackLinearGradientView;

    .line 246
    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mBlackLinearGradientView:Lcom/android/server/display/BlackLinearGradientView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/BlackLinearGradientView;->setBackgroundResource(I)V

    .line 247
    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/display/SwipeUpWindow;->mBlackLinearGradientView:Lcom/android/server/display/BlackLinearGradientView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    return-void
.end method

.method private initGradientShadowAnimation()V
    .registers 5

    .line 289
    new-instance v0, Lcom/android/server/display/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mAnimationState:Lcom/android/server/display/SwipeUpWindow$AnimationState;

    new-instance v2, Lcom/android/server/display/SwipeUpWindow$1;

    const-string/jumbo v3, "perState"

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/SwipeUpWindow$1;-><init>(Lcom/android/server/display/SwipeUpWindow;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/animation/SpringAnimation;-><init>(Ljava/lang/Object;Lcom/android/server/display/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mGradientShadowSpringAnimation:Lcom/android/server/display/animation/SpringAnimation;

    .line 302
    new-instance v0, Lcom/android/server/display/animation/SpringForce;

    invoke-direct {v0}, Lcom/android/server/display/animation/SpringForce;-><init>()V

    .line 303
    .local v0, "springForce":Lcom/android/server/display/animation/SpringForce;
    const v1, 0x43a1228f

    invoke-virtual {v0, v1}, Lcom/android/server/display/animation/SpringForce;->setStiffness(F)Lcom/android/server/display/animation/SpringForce;

    .line 304
    const v1, 0x3f733333  # 0.95f

    invoke-virtual {v0, v1}, Lcom/android/server/display/animation/SpringForce;->setDampingRatio(F)Lcom/android/server/display/animation/SpringForce;

    .line 305
    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mGradientShadowSpringAnimation:Lcom/android/server/display/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Lcom/android/server/display/animation/SpringAnimation;->setSpring(Lcom/android/server/display/animation/SpringForce;)Lcom/android/server/display/animation/SpringAnimation;

    .line 306
    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mGradientShadowSpringAnimation:Lcom/android/server/display/animation/SpringAnimation;

    const/high16 v2, 0x3b800000  # 0.00390625f

    invoke-virtual {v1, v2}, Lcom/android/server/display/animation/SpringAnimation;->setMinimumVisibleChange(F)Lcom/android/server/display/animation/DynamicAnimation;

    .line 309
    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mGradientShadowSpringAnimation:Lcom/android/server/display/animation/SpringAnimation;

    new-instance v2, Lcom/android/server/display/SwipeUpWindow$2;

    invoke-direct {v2, p0}, Lcom/android/server/display/SwipeUpWindow$2;-><init>(Lcom/android/server/display/SwipeUpWindow;)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/animation/SpringAnimation;->addUpdateListener(Lcom/android/server/display/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/android/server/display/animation/DynamicAnimation;

    .line 316
    return-void
.end method

.method private initIconView()V
    .registers 6

    .line 251
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconView:Landroid/widget/ImageView;

    .line 252
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconView:Landroid/widget/ImageView;

    const v1, 0x1108019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 254
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 255
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 256
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 257
    const/high16 v2, 0x41e00000  # 28.0f

    invoke-virtual {p0, v2}, Lcom/android/server/display/SwipeUpWindow;->transformDpToPx(F)I

    move-result v3

    .line 258
    invoke-virtual {p0, v2}, Lcom/android/server/display/SwipeUpWindow;->transformDpToPx(F)I

    move-result v2

    const/16 v4, 0x31

    invoke-direct {v0, v3, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 260
    .local v0, "iconViewParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/android/server/display/SwipeUpWindow;->mScreenHeight:I

    const/high16 v3, 0x43110000  # 145.0f

    invoke-virtual {p0, v3}, Lcom/android/server/display/SwipeUpWindow;->transformDpToPx(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 261
    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/display/SwipeUpWindow;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_5d

    .line 264
    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mIconDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_65

    .line 266
    :cond_5d
    const-string v1, "SwipeUpWindow"

    const-string/jumbo v2, "icon drawable get incompatible class"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_65
    return-void
.end method

.method private initSwipeUpWindow()V
    .registers 11

    .line 212
    new-instance v0, Lcom/android/server/display/SwipeUpWindow$SwipeUpFrameLayout;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/server/display/SwipeUpWindow;->mContext:Landroid/content/Context;

    const v3, 0x1030007

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/SwipeUpWindow$SwipeUpFrameLayout;-><init>(Lcom/android/server/display/SwipeUpWindow;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpFrameLayout:Landroid/widget/FrameLayout;

    .line 214
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    const v8, 0x1820104

    const/4 v9, -0x3

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x7ea

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v4, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 224
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 226
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 227
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 228
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SwipeUpWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 230
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/display/SwipeUpWindow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 231
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLongClickable(Z)V

    .line 232
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 234
    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->initBlackLinearGradientView()V

    .line 235
    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->initIconView()V

    .line 236
    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->initTipView()V

    .line 237
    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->initGradientShadowAnimation()V

    .line 238
    return-void
.end method

.method private initTipView()V
    .registers 6

    .line 271
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mTipView:Landroid/widget/TextView;

    .line 272
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mTipView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 273
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mTipView:Landroid/widget/TextView;

    const v1, 0x110f03ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 274
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mTipView:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41980000  # 19.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 275
    const-string/jumbo v0, "mipro-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 276
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget-object v2, p0, Lcom/android/server/display/SwipeUpWindow;->mTipView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 277
    iget-object v2, p0, Lcom/android/server/display/SwipeUpWindow;->mTipView:Landroid/widget/TextView;

    const v3, 0x66ffffff

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    iget-object v2, p0, Lcom/android/server/display/SwipeUpWindow;->mTipView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 279
    iget-object v2, p0, Lcom/android/server/display/SwipeUpWindow;->mTipView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 280
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0x31

    invoke-direct {v2, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 284
    .local v2, "tipViewParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lcom/android/server/display/SwipeUpWindow;->mScreenHeight:I

    const/high16 v4, 0x42b00000  # 88.0f

    invoke-virtual {p0, v4}, Lcom/android/server/display/SwipeUpWindow;->transformDpToPx(F)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v1, v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 285
    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpFrameLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/server/display/SwipeUpWindow;->mTipView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .line 685
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 686
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 688
    :cond_a
    return-void
.end method

.method private playIconAndTipHideAnimation()V
    .registers 6

    .line 768
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    if-eqz v0, :cond_9

    .line 769
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    invoke-virtual {v0}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->cancel()V

    .line 771
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mTipSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    if-eqz v0, :cond_12

    .line 772
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mTipSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    invoke-virtual {v0}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->cancel()V

    .line 775
    :cond_12
    new-instance v0, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mIconView:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/server/display/animation/SpringAnimation;->Y:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    iget-object v3, p0, Lcom/android/server/display/SwipeUpWindow;->mIconView:Landroid/widget/ImageView;

    .line 776
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/display/SwipeUpWindow;->creatSpringAnimation(Landroid/view/View;Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;F)Lcom/android/server/display/animation/SpringAnimation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/SwipeUpWindow;->mIconView:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/server/display/animation/SpringAnimation;->ALPHA:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 777
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/display/SwipeUpWindow;->creatSpringAnimation(Landroid/view/View;Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;F)Lcom/android/server/display/animation/SpringAnimation;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;-><init>(Lcom/android/server/display/SwipeUpWindow;Lcom/android/server/display/animation/SpringAnimation;Lcom/android/server/display/animation/SpringAnimation;)V

    iput-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    .line 779
    new-instance v0, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mTipView:Landroid/widget/TextView;

    sget-object v2, Lcom/android/server/display/animation/SpringAnimation;->Y:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    iget-object v3, p0, Lcom/android/server/display/SwipeUpWindow;->mTipView:Landroid/widget/TextView;

    .line 780
    invoke-virtual {v3}, Landroid/widget/TextView;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/display/SwipeUpWindow;->creatSpringAnimation(Landroid/view/View;Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;F)Lcom/android/server/display/animation/SpringAnimation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/SwipeUpWindow;->mTipView:Landroid/widget/TextView;

    sget-object v3, Lcom/android/server/display/animation/SpringAnimation;->ALPHA:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 781
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/display/SwipeUpWindow;->creatSpringAnimation(Landroid/view/View;Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;F)Lcom/android/server/display/animation/SpringAnimation;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;-><init>(Lcom/android/server/display/SwipeUpWindow;Lcom/android/server/display/animation/SpringAnimation;Lcom/android/server/display/animation/SpringAnimation;)V

    iput-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mTipSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    .line 783
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    invoke-virtual {v0}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->start()V

    .line 784
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mTipSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    invoke-virtual {v0}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->start()V

    .line 785
    return-void
.end method

.method private playIconAndTipShowAnimation()V
    .registers 10

    .line 744
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    if-eqz v0, :cond_9

    .line 745
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    invoke-virtual {v0}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->cancel()V

    .line 747
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mTipSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    if-eqz v0, :cond_12

    .line 748
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mTipSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    invoke-virtual {v0}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->cancel()V

    .line 751
    :cond_12
    new-instance v0, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    iget-object v2, p0, Lcom/android/server/display/SwipeUpWindow;->mIconView:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/server/display/animation/SpringAnimation;->Y:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mIconView:Landroid/widget/ImageView;

    .line 753
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v6, v1

    .line 752
    const v4, 0x421de9e6

    const/high16 v5, 0x3f800000  # 1.0f

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/SwipeUpWindow;->creatSpringAnimation(Landroid/view/View;Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;FFF)Lcom/android/server/display/animation/SpringAnimation;

    move-result-object v2

    move-object v3, v1

    iget-object v4, v3, Lcom/android/server/display/SwipeUpWindow;->mIconView:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/server/display/animation/SpringAnimation;->ALPHA:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 754
    const v6, 0x421de9e6

    const/high16 v7, 0x3f800000  # 1.0f

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-direct/range {v3 .. v8}, Lcom/android/server/display/SwipeUpWindow;->creatSpringAnimation(Landroid/view/View;Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;FFF)Lcom/android/server/display/animation/SpringAnimation;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;-><init>(Lcom/android/server/display/SwipeUpWindow;Lcom/android/server/display/animation/SpringAnimation;Lcom/android/server/display/animation/SpringAnimation;)V

    iput-object v0, v3, Lcom/android/server/display/SwipeUpWindow;->mIconSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    .line 757
    new-instance v0, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    iget-object v4, v3, Lcom/android/server/display/SwipeUpWindow;->mTipView:Landroid/widget/TextView;

    sget-object v5, Lcom/android/server/display/animation/SpringAnimation;->Y:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    iget-object v1, v3, Lcom/android/server/display/SwipeUpWindow;->mTipView:Landroid/widget/TextView;

    .line 759
    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    int-to-float v8, v1

    .line 758
    invoke-direct/range {v3 .. v8}, Lcom/android/server/display/SwipeUpWindow;->creatSpringAnimation(Landroid/view/View;Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;FFF)Lcom/android/server/display/animation/SpringAnimation;

    move-result-object v1

    iget-object v4, v3, Lcom/android/server/display/SwipeUpWindow;->mTipView:Landroid/widget/TextView;

    sget-object v5, Lcom/android/server/display/animation/SpringAnimation;->ALPHA:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 760
    const/high16 v8, 0x3f800000  # 1.0f

    invoke-direct/range {v3 .. v8}, Lcom/android/server/display/SwipeUpWindow;->creatSpringAnimation(Landroid/view/View;Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;FFF)Lcom/android/server/display/animation/SpringAnimation;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;-><init>(Lcom/android/server/display/SwipeUpWindow;Lcom/android/server/display/animation/SpringAnimation;Lcom/android/server/display/animation/SpringAnimation;)V

    iput-object v0, v3, Lcom/android/server/display/SwipeUpWindow;->mTipSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    .line 763
    iget-object v0, v3, Lcom/android/server/display/SwipeUpWindow;->mIconSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    invoke-virtual {v0}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->start()V

    .line 764
    iget-object v0, v3, Lcom/android/server/display/SwipeUpWindow;->mTipSpringAnimation:Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;

    invoke-virtual {v0}, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->start()V

    .line 765
    return-void
.end method

.method private playIconAnimation()V
    .registers 3

    .line 710
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-nez v0, :cond_5

    .line 711
    return-void

    .line 714
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    new-instance v1, Lcom/android/server/display/SwipeUpWindow$8;

    invoke-direct {v1, p0}, Lcom/android/server/display/SwipeUpWindow$8;-><init>(Lcom/android/server/display/SwipeUpWindow;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 722
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 723
    return-void
.end method

.method private prepareIconAndTipAnimation()V
    .registers 5

    .line 736
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    const/high16 v2, 0x41f00000  # 30.0f

    invoke-virtual {p0, v2}, Lcom/android/server/display/SwipeUpWindow;->transformDpToPx(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 737
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 739
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mTipView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/display/SwipeUpWindow;->mTipView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v2

    const/high16 v3, 0x42480000  # 50.0f

    invoke-virtual {p0, v3}, Lcom/android/server/display/SwipeUpWindow;->transformDpToPx(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setY(F)V

    .line 740
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mTipView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 741
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .line 691
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 692
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 693
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 695
    :cond_c
    return-void
.end method

.method private resetIconAnimation()V
    .registers 2

    .line 726
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-nez v0, :cond_5

    .line 727
    return-void

    .line 730
    :cond_5
    nop

    .line 731
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mIconDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    .line 733
    return-void
.end method

.method private setBackgroudBlur(I)V
    .registers 5
    .param p1, "blurRadius"  # I

    .line 437
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2f

    iget v0, p0, Lcom/android/server/display/SwipeUpWindow;->mPreBlurLevel:I

    if-ne v0, p1, :cond_9

    goto :goto_2f

    .line 444
    :cond_9
    iput p1, p0, Lcom/android/server/display/SwipeUpWindow;->mPreBlurLevel:I

    .line 446
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 447
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_1c

    .line 448
    const-string v1, "SwipeUpWindow"

    const-string/jumbo v2, "mViewRootImpl is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void

    .line 451
    :cond_1c
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 452
    .local v1, "surfaceControl":Landroid/view/SurfaceControl;
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 453
    .local v2, "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v2, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 454
    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 455
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 456
    return-void

    .line 438
    .end local v0  # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v1  # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v2  # "transaction":Landroid/view/SurfaceControl$Transaction;
    :cond_2f
    :goto_2f
    return-void
.end method

.method private setLockStateWithLongAnimation()V
    .registers 7

    .line 351
    iget-object v4, p0, Lcom/android/server/display/SwipeUpWindow;->mLockStateLongAnimationEndListener:Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

    const/high16 v5, 0x3b800000  # 0.00390625f

    const v1, 0x40db851f  # 6.86f

    const/high16 v2, 0x3f800000  # 1.0f

    const/high16 v3, 0x3f800000  # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/SwipeUpWindow;->startGradientShadowAnimation(FFFLcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;F)V

    .line 354
    return-void
.end method

.method private setLockStateWithShortAnimation()V
    .registers 7

    .line 357
    iget-object v4, p0, Lcom/android/server/display/SwipeUpWindow;->mLockStateShortAnimationEndListener:Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

    const/high16 v5, 0x3b800000  # 0.00390625f

    const v1, 0x43a1228f

    const v2, 0x3f733333  # 0.95f

    const/high16 v3, 0x3f800000  # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/SwipeUpWindow;->startGradientShadowAnimation(FFFLcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;F)V

    .line 360
    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->playIconAndTipHideAnimation()V

    .line 361
    return-void
.end method

.method private setUnlockState()V
    .registers 9

    .line 364
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 365
    const-string v0, "SwipeUpWindow"

    const-string/jumbo v1, "unlock state animation start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v6, p0, Lcom/android/server/display/SwipeUpWindow;->mUnlockStateAnimationEndListener:Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

    const/high16 v7, 0x3f800000  # 1.0f

    const v3, 0x43a1228f

    const v4, 0x3f733333  # 0.95f

    const/high16 v5, -0x40800000  # -1.0f

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/SwipeUpWindow;->startGradientShadowAnimation(FFFLcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;F)V

    .line 369
    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->playIconAndTipHideAnimation()V

    .line 370
    return-void
.end method

.method private setWakeState()V
    .registers 9

    .line 337
    const-string v0, "SwipeUpWindow"

    const-string/jumbo v1, "wake state animation start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v6, p0, Lcom/android/server/display/SwipeUpWindow;->mWakeStateAnimationEndListener:Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

    const/high16 v7, 0x3b800000  # 0.00390625f

    const v3, 0x431de9e6

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/SwipeUpWindow;->startGradientShadowAnimation(FFFLcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;F)V

    .line 342
    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->resetIconAnimation()V

    .line 343
    iget-object v0, v2, Lcom/android/server/display/SwipeUpWindow;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_27

    .line 344
    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->prepareIconAndTipAnimation()V

    .line 347
    :cond_27
    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->playIconAndTipShowAnimation()V

    .line 348
    return-void
.end method

.method private startGradientShadowAnimation(F)V
    .registers 4
    .param p1, "finalPosition"  # F

    .line 373
    const v0, 0x43a1228f

    const v1, 0x3f733333  # 0.95f

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/display/SwipeUpWindow;->startGradientShadowAnimation(FFF)V

    .line 374
    return-void
.end method

.method private startGradientShadowAnimation(FFF)V
    .registers 10
    .param p1, "stiffness"  # F
    .param p2, "dampingRatio"  # F
    .param p3, "finalPosition"  # F

    .line 378
    const/4 v4, 0x0

    const/high16 v5, 0x3b800000  # 0.00390625f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .end local p1  # "stiffness":F
    .end local p2  # "dampingRatio":F
    .end local p3  # "finalPosition":F
    .local v1, "stiffness":F
    .local v2, "dampingRatio":F
    .local v3, "finalPosition":F
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/SwipeUpWindow;->startGradientShadowAnimation(FFFLcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;F)V

    .line 380
    return-void
.end method

.method private startGradientShadowAnimation(FFFLcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;F)V
    .registers 9
    .param p1, "stiffness"  # F
    .param p2, "dampingRatio"  # F
    .param p3, "finalPosition"  # F
    .param p4, "onAnimationEndListener"  # Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;
    .param p5, "minimumVisibleChange"  # F

    .line 385
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mGradientShadowSpringAnimation:Lcom/android/server/display/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/server/display/animation/SpringAnimation;->cancel()V

    .line 386
    new-instance v0, Lcom/android/server/display/animation/SpringForce;

    invoke-direct {v0}, Lcom/android/server/display/animation/SpringForce;-><init>()V

    .line 387
    .local v0, "springForce":Lcom/android/server/display/animation/SpringForce;
    invoke-virtual {v0, p1}, Lcom/android/server/display/animation/SpringForce;->setStiffness(F)Lcom/android/server/display/animation/SpringForce;

    .line 388
    invoke-virtual {v0, p2}, Lcom/android/server/display/animation/SpringForce;->setDampingRatio(F)Lcom/android/server/display/animation/SpringForce;

    .line 389
    invoke-virtual {v0, p3}, Lcom/android/server/display/animation/SpringForce;->setFinalPosition(F)Lcom/android/server/display/animation/SpringForce;

    .line 390
    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mGradientShadowSpringAnimation:Lcom/android/server/display/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Lcom/android/server/display/animation/SpringAnimation;->setSpring(Lcom/android/server/display/animation/SpringForce;)Lcom/android/server/display/animation/SpringAnimation;

    .line 392
    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mPreOnAnimationEndListener:Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

    if-eqz v1, :cond_23

    .line 393
    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mGradientShadowSpringAnimation:Lcom/android/server/display/animation/SpringAnimation;

    iget-object v2, p0, Lcom/android/server/display/SwipeUpWindow;->mPreOnAnimationEndListener:Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v1, v2}, Lcom/android/server/display/animation/SpringAnimation;->removeEndListener(Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 395
    :cond_23
    if-eqz p4, :cond_2a

    .line 396
    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mGradientShadowSpringAnimation:Lcom/android/server/display/animation/SpringAnimation;

    invoke-virtual {v1, p4}, Lcom/android/server/display/animation/SpringAnimation;->addEndListener(Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/server/display/animation/DynamicAnimation;

    .line 398
    :cond_2a
    iput-object p4, p0, Lcom/android/server/display/SwipeUpWindow;->mPreOnAnimationEndListener:Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

    .line 400
    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mGradientShadowSpringAnimation:Lcom/android/server/display/animation/SpringAnimation;

    invoke-virtual {v1, p5}, Lcom/android/server/display/animation/SpringAnimation;->setMinimumVisibleChange(F)Lcom/android/server/display/animation/DynamicAnimation;

    .line 402
    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mGradientShadowSpringAnimation:Lcom/android/server/display/animation/SpringAnimation;

    invoke-virtual {v1}, Lcom/android/server/display/animation/SpringAnimation;->start()V

    .line 403
    return-void
.end method

.method private startSwipeUpAnimation()V
    .registers 5

    .line 319
    iget-boolean v0, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpWindowShowing:Z

    if-nez v0, :cond_5

    .line 320
    return-void

    .line 323
    :cond_5
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/server/display/SwipeUpWindow;->mPreTopColor:I

    .line 324
    iput v0, p0, Lcom/android/server/display/SwipeUpWindow;->mPreBottomColor:I

    .line 325
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/SwipeUpWindow;->mPreBlurLevel:I

    .line 326
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mAnimationState:Lcom/android/server/display/SwipeUpWindow$AnimationState;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/server/display/SwipeUpWindow$AnimationState;->setPerState(F)V

    .line 327
    invoke-direct {p0, v1}, Lcom/android/server/display/SwipeUpWindow;->updateBlur(F)V

    .line 329
    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->setWakeState()V

    .line 331
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 332
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 333
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 334
    return-void
.end method

.method private updateBlackView()V
    .registers 9

    .line 406
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mAnimationState:Lcom/android/server/display/SwipeUpWindow$AnimationState;

    invoke-virtual {v0}, Lcom/android/server/display/SwipeUpWindow$AnimationState;->getPerState()F

    move-result v0

    .line 407
    .local v0, "per":F
    const/high16 v1, 0x3f800000  # 1.0f

    add-float v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/server/display/SwipeUpWindow;->constraintAlpha(F)F

    move-result v2

    .line 408
    .local v2, "topAlpha":F
    const v3, 0x3f19999a  # 0.6f

    add-float/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/android/server/display/SwipeUpWindow;->constraintAlpha(F)F

    move-result v3

    .line 410
    .local v3, "bottomAlpha":F
    invoke-direct {p0, v2}, Lcom/android/server/display/SwipeUpWindow;->calculateBlackAlpha(F)I

    move-result v4

    .line 411
    .local v4, "topColor":I
    invoke-direct {p0, v3}, Lcom/android/server/display/SwipeUpWindow;->calculateBlackAlpha(F)I

    move-result v5

    .line 412
    .local v5, "bottomColor":I
    iget v6, p0, Lcom/android/server/display/SwipeUpWindow;->mPreTopColor:I

    if-ne v4, v6, :cond_26

    iget v6, p0, Lcom/android/server/display/SwipeUpWindow;->mPreBottomColor:I

    if-eq v5, v6, :cond_33

    .line 413
    :cond_26
    iput v4, p0, Lcom/android/server/display/SwipeUpWindow;->mPreTopColor:I

    .line 414
    iput v5, p0, Lcom/android/server/display/SwipeUpWindow;->mPreBottomColor:I

    .line 415
    iget-object v6, p0, Lcom/android/server/display/SwipeUpWindow;->mBlackLinearGradientView:Lcom/android/server/display/BlackLinearGradientView;

    filled-new-array {v4, v5}, [I

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/display/BlackLinearGradientView;->setLinearGradientColor([I)V

    .line 422
    :cond_33
    const/4 v6, 0x0

    invoke-static {v6, v0}, Landroid/util/MathUtils;->min(FF)F

    move-result v6

    add-float/2addr v6, v1

    invoke-direct {p0, v6}, Lcom/android/server/display/SwipeUpWindow;->constraintBlur(F)F

    move-result v1

    .line 423
    .local v1, "blurLevel":F
    invoke-direct {p0, v1}, Lcom/android/server/display/SwipeUpWindow;->updateBlur(F)V

    .line 424
    return-void
.end method

.method private updateBlur(F)V
    .registers 3
    .param p1, "level"  # F

    .line 433
    const/high16 v0, 0x42c80000  # 100.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/server/display/SwipeUpWindow;->setBackgroudBlur(I)V

    .line 434
    return-void
.end method

.method private updateSettings(Z)V
    .registers 5
    .param p1, "bool"  # Z

    .line 496
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 497
    nop

    .line 496
    const-string/jumbo v1, "swipe_up_is_showing"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 498
    return-void
.end method

.method private updateSizeInfo()V
    .registers 9

    .line 146
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 148
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const-string v1, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v1

    .line 149
    .local v1, "displays":[Landroid/view/Display;
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 150
    .local v2, "outDisplayInfo":Landroid/view/DisplayInfo;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_34

    aget-object v5, v1, v4

    .line 151
    .local v5, "display":Landroid/view/Display;
    invoke-virtual {v5, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 152
    iget v6, v2, Landroid/view/DisplayInfo;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_31

    .line 153
    iget v6, p0, Lcom/android/server/display/SwipeUpWindow;->mScreenWidth:I

    iget v7, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    if-le v6, v7, :cond_31

    .line 154
    iget v6, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v6, p0, Lcom/android/server/display/SwipeUpWindow;->mScreenWidth:I

    .line 155
    iget v6, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v6, p0, Lcom/android/server/display/SwipeUpWindow;->mScreenHeight:I

    .line 150
    .end local v5  # "display":Landroid/view/Display;
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 160
    :cond_34
    iget v3, p0, Lcom/android/server/display/SwipeUpWindow;->mScreenWidth:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_43

    .line 161
    const/16 v3, 0x438

    iput v3, p0, Lcom/android/server/display/SwipeUpWindow;->mScreenWidth:I

    .line 162
    const/16 v3, 0x9d8

    iput v3, p0, Lcom/android/server/display/SwipeUpWindow;->mScreenHeight:I

    .line 164
    :cond_43
    iget v3, p0, Lcom/android/server/display/SwipeUpWindow;->mScreenHeight:I

    int-to-float v3, v3

    const v4, 0x3e4ccccd  # 0.2f

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/display/SwipeUpWindow;->mUnlockDistance:F

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSizeInfo: (h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/SwipeUpWindow;->mScreenHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/SwipeUpWindow;->mScreenWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SwipeUpWindow"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method


# virtual methods
.method public afterFrictionValue(FF)F
    .registers 7
    .param p1, "value"  # F
    .param p2, "range"  # F

    .line 699
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_6

    .line 700
    return v0

    .line 702
    :cond_6
    cmpl-float v0, p1, v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-ltz v0, :cond_e

    move v0, v1

    goto :goto_10

    :cond_e
    const/high16 v0, -0x40800000  # -1.0f

    .line 703
    .local v0, "t":F
    :goto_10
    invoke-static {p1}, Landroid/util/MathUtils;->abs(F)F

    move-result p1

    .line 704
    div-float v2, p1, p2

    invoke-static {v2, v1}, Landroid/util/MathUtils;->min(FF)F

    move-result v1

    .line 705
    .local v1, "per":F
    mul-float v2, v1, v1

    mul-float/2addr v2, v1

    const/high16 v3, 0x40400000  # 3.0f

    div-float/2addr v2, v3

    mul-float v3, v1, v1

    sub-float/2addr v2, v3

    add-float/2addr v2, v1

    mul-float/2addr v2, v0

    mul-float/2addr v2, p2

    return v2
.end method

.method public cancelScreenOffDelay()V
    .registers 4

    .line 479
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 480
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mGradientShadowSpringAnimation:Lcom/android/server/display/animation/SpringAnimation;

    if-eqz v0, :cond_1c

    .line 481
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mPreOnAnimationEndListener:Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

    if-eqz v0, :cond_17

    .line 482
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mGradientShadowSpringAnimation:Lcom/android/server/display/animation/SpringAnimation;

    iget-object v2, p0, Lcom/android/server/display/SwipeUpWindow;->mPreOnAnimationEndListener:Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v2}, Lcom/android/server/display/animation/SpringAnimation;->removeEndListener(Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 483
    iput-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mPreOnAnimationEndListener:Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

    .line 485
    :cond_17
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mGradientShadowSpringAnimation:Lcom/android/server/display/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/server/display/animation/SpringAnimation;->cancel()V

    .line 487
    :cond_1c
    return-void
.end method

.method public releaseSwipeWindow()V
    .registers 2

    .line 173
    const-string/jumbo v0, "unknow"

    invoke-virtual {p0, v0}, Lcom/android/server/display/SwipeUpWindow;->releaseSwipeWindow(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public releaseSwipeWindow(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"  # Ljava/lang/String;

    .line 177
    iget-boolean v0, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpWindowShowing:Z

    if-nez v0, :cond_5

    .line 178
    return-void

    .line 180
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "release swipe up window: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwipeUpWindow"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpWindowShowing:Z

    .line 183
    invoke-direct {p0, v0}, Lcom/android/server/display/SwipeUpWindow;->updateSettings(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mGradientShadowSpringAnimation:Lcom/android/server/display/animation/SpringAnimation;

    if-eqz v0, :cond_35

    .line 187
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mGradientShadowSpringAnimation:Lcom/android/server/display/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/server/display/animation/SpringAnimation;->cancel()V

    .line 188
    iput-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mGradientShadowSpringAnimation:Lcom/android/server/display/animation/SpringAnimation;

    .line 191
    :cond_35
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_42

    .line 192
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpFrameLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 193
    iput-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpFrameLayout:Landroid/widget/FrameLayout;

    .line 195
    :cond_42
    return-void
.end method

.method public removeSwipeUpWindow()V
    .registers 1

    .line 170
    return-void
.end method

.method public showSwipeUpWindow()V
    .registers 4

    .line 198
    iget-boolean v0, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpWindowShowing:Z

    if-eqz v0, :cond_5

    .line 199
    return-void

    .line 202
    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/SwipeUpWindow;->updateSettings(Z)V

    .line 203
    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpFrameLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_10

    .line 204
    invoke-direct {p0}, Lcom/android/server/display/SwipeUpWindow;->initSwipeUpWindow()V

    .line 206
    :cond_10
    iput-boolean v0, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpWindowShowing:Z

    .line 207
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/display/SwipeUpWindow;->mSwipeUpLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    const-string v0, "SwipeUpWindow"

    const-string/jumbo v1, "show swipe up window"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method public transformDpToPx(F)I
    .registers 4
    .param p1, "dp"  # F

    .line 472
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow;->mContext:Landroid/content/Context;

    .line 473
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 472
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public transformDpToPx(Landroid/content/Context;F)I
    .registers 5
    .param p1, "ctx"  # Landroid/content/Context;
    .param p2, "dp"  # F

    .line 467
    nop

    .line 468
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 467
    const/4 v1, 0x1

    invoke-static {v1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
