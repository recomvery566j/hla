# classes.dex

.class public abstract Lcom/android/server/display/animation/DynamicAnimation;
.super Ljava/lang/Object;
.source "DynamicAnimation.java"

# interfaces
.implements Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;,
        Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;,
        Lcom/android/server/display/animation/DynamicAnimation$OnAnimationUpdateListener;,
        Lcom/android/server/display/animation/DynamicAnimation$MassState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/display/animation/DynamicAnimation<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallback;"
    }
.end annotation


# static fields
.field public static final ALPHA:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

.field public static final MIN_VISIBLE_CHANGE_ALPHA:F = 0.00390625f

.field public static final MIN_VISIBLE_CHANGE_PIXELS:F = 1.0f

.field public static final MIN_VISIBLE_CHANGE_ROTATION_DEGREES:F = 0.1f

.field public static final MIN_VISIBLE_CHANGE_SCALE:F = 0.002f

.field public static final ROTATION:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

.field public static final ROTATION_X:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

.field public static final ROTATION_Y:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

.field public static final SCALE_X:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

.field public static final SCALE_Y:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

.field public static final SCROLL_X:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

.field public static final SCROLL_Y:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

.field private static final THRESHOLD_MULTIPLIER:F = 0.75f

.field public static final TRANSLATION_X:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

.field public static final TRANSLATION_Y:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

.field public static final TRANSLATION_Z:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

.field private static final UNSET:F = 3.4028235E38f

.field public static final X:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

.field public static final Y:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

.field public static final Z:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;


# instance fields
.field private final mEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameTime:J

.field mMaxValue:F

.field mMinValue:F

.field private mMinVisibleChange:F

.field final mProperty:Lcom/android/server/display/animation/FloatPropertyCompat;

.field mRunning:Z

.field mStartValueIsSet:Z

.field final mTarget:Ljava/lang/Object;

.field private final mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValue:F

.field mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Lcom/android/server/display/animation/DynamicAnimation$1;

    const-string/jumbo v1, "translationX"

    invoke-direct {v0, v1}, Lcom/android/server/display/animation/DynamicAnimation$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/animation/DynamicAnimation;->TRANSLATION_X:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 70
    new-instance v0, Lcom/android/server/display/animation/DynamicAnimation$2;

    const-string/jumbo v1, "translationY"

    invoke-direct {v0, v1}, Lcom/android/server/display/animation/DynamicAnimation$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/animation/DynamicAnimation;->TRANSLATION_Y:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 85
    new-instance v0, Lcom/android/server/display/animation/DynamicAnimation$3;

    const-string/jumbo v1, "translationZ"

    invoke-direct {v0, v1}, Lcom/android/server/display/animation/DynamicAnimation$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/animation/DynamicAnimation;->TRANSLATION_Z:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 100
    new-instance v0, Lcom/android/server/display/animation/DynamicAnimation$4;

    const-string/jumbo v1, "scaleX"

    invoke-direct {v0, v1}, Lcom/android/server/display/animation/DynamicAnimation$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/animation/DynamicAnimation;->SCALE_X:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 115
    new-instance v0, Lcom/android/server/display/animation/DynamicAnimation$5;

    const-string/jumbo v1, "scaleY"

    invoke-direct {v0, v1}, Lcom/android/server/display/animation/DynamicAnimation$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/animation/DynamicAnimation;->SCALE_Y:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 130
    new-instance v0, Lcom/android/server/display/animation/DynamicAnimation$6;

    const-string/jumbo v1, "rotation"

    invoke-direct {v0, v1}, Lcom/android/server/display/animation/DynamicAnimation$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/animation/DynamicAnimation;->ROTATION:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 145
    new-instance v0, Lcom/android/server/display/animation/DynamicAnimation$7;

    const-string/jumbo v1, "rotationX"

    invoke-direct {v0, v1}, Lcom/android/server/display/animation/DynamicAnimation$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/animation/DynamicAnimation;->ROTATION_X:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 160
    new-instance v0, Lcom/android/server/display/animation/DynamicAnimation$8;

    const-string/jumbo v1, "rotationY"

    invoke-direct {v0, v1}, Lcom/android/server/display/animation/DynamicAnimation$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/animation/DynamicAnimation;->ROTATION_Y:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 175
    new-instance v0, Lcom/android/server/display/animation/DynamicAnimation$9;

    const-string/jumbo v1, "x"

    invoke-direct {v0, v1}, Lcom/android/server/display/animation/DynamicAnimation$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/animation/DynamicAnimation;->X:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 190
    new-instance v0, Lcom/android/server/display/animation/DynamicAnimation$10;

    const-string/jumbo v1, "y"

    invoke-direct {v0, v1}, Lcom/android/server/display/animation/DynamicAnimation$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/animation/DynamicAnimation;->Y:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 205
    new-instance v0, Lcom/android/server/display/animation/DynamicAnimation$11;

    const-string/jumbo v1, "z"

    invoke-direct {v0, v1}, Lcom/android/server/display/animation/DynamicAnimation$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/animation/DynamicAnimation;->Z:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 220
    new-instance v0, Lcom/android/server/display/animation/DynamicAnimation$12;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/android/server/display/animation/DynamicAnimation$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/animation/DynamicAnimation;->ALPHA:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 236
    new-instance v0, Lcom/android/server/display/animation/DynamicAnimation$13;

    const-string/jumbo v1, "scrollX"

    invoke-direct {v0, v1}, Lcom/android/server/display/animation/DynamicAnimation$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/animation/DynamicAnimation;->SCROLL_X:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    .line 251
    new-instance v0, Lcom/android/server/display/animation/DynamicAnimation$14;

    const-string/jumbo v1, "scrollY"

    invoke-direct {v0, v1}, Lcom/android/server/display/animation/DynamicAnimation$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/animation/DynamicAnimation;->SCROLL_Y:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/animation/FloatValueHolder;)V
    .registers 4
    .param p1, "floatValueHolder"  # Lcom/android/server/display/animation/FloatValueHolder;

    .line 331
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mVelocity:F

    .line 290
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mValue:F

    .line 294
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 303
    iput-boolean v1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mRunning:Z

    .line 306
    iput v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMaxValue:F

    .line 307
    iget v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMinValue:F

    .line 310
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mLastFrameTime:J

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 333
    new-instance v0, Lcom/android/server/display/animation/DynamicAnimation$15;

    const-string v1, "FloatValueHolder"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/display/animation/DynamicAnimation$15;-><init>(Lcom/android/server/display/animation/DynamicAnimation;Ljava/lang/String;Lcom/android/server/display/animation/FloatValueHolder;)V

    iput-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mProperty:Lcom/android/server/display/animation/FloatPropertyCompat;

    .line 344
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 345
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lcom/android/server/display/animation/FloatPropertyCompat;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/android/server/display/animation/FloatPropertyCompat<",
            "TK;>;)V"
        }
    .end annotation

    .line 354
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TK;"
    .local p2, "property":Lcom/android/server/display/animation/FloatPropertyCompat;, "Lcom/android/server/display/animation/FloatPropertyCompat<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mVelocity:F

    .line 290
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mValue:F

    .line 294
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 303
    iput-boolean v1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mRunning:Z

    .line 306
    iput v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMaxValue:F

    .line 307
    iget v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMinValue:F

    .line 310
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mLastFrameTime:J

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 355
    iput-object p1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 356
    iput-object p2, p0, Lcom/android/server/display/animation/DynamicAnimation;->mProperty:Lcom/android/server/display/animation/FloatPropertyCompat;

    .line 357
    iget-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mProperty:Lcom/android/server/display/animation/FloatPropertyCompat;

    sget-object v1, Lcom/android/server/display/animation/DynamicAnimation;->ROTATION:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    if-eq v0, v1, :cond_60

    iget-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mProperty:Lcom/android/server/display/animation/FloatPropertyCompat;

    sget-object v1, Lcom/android/server/display/animation/DynamicAnimation;->ROTATION_X:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    if-eq v0, v1, :cond_60

    iget-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mProperty:Lcom/android/server/display/animation/FloatPropertyCompat;

    sget-object v1, Lcom/android/server/display/animation/DynamicAnimation;->ROTATION_Y:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    if-ne v0, v1, :cond_40

    goto :goto_60

    .line 360
    :cond_40
    iget-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mProperty:Lcom/android/server/display/animation/FloatPropertyCompat;

    sget-object v1, Lcom/android/server/display/animation/DynamicAnimation;->ALPHA:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    const/high16 v2, 0x3b800000  # 0.00390625f

    if-ne v0, v1, :cond_4b

    .line 361
    iput v2, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_65

    .line 362
    :cond_4b
    iget-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mProperty:Lcom/android/server/display/animation/FloatPropertyCompat;

    sget-object v1, Lcom/android/server/display/animation/DynamicAnimation;->SCALE_X:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    if-eq v0, v1, :cond_5d

    iget-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mProperty:Lcom/android/server/display/animation/FloatPropertyCompat;

    sget-object v1, Lcom/android/server/display/animation/DynamicAnimation;->SCALE_Y:Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;

    if-ne v0, v1, :cond_58

    goto :goto_5d

    .line 365
    :cond_58
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_65

    .line 363
    :cond_5d
    :goto_5d
    iput v2, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_65

    .line 359
    :cond_60
    :goto_60
    const v0, 0x3dcccccd  # 0.1f

    iput v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 367
    :goto_65
    return-void
.end method

.method private endAnimationInternal(Z)V
    .registers 6
    .param p1, "canceled"  # Z

    .line 671
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mRunning:Z

    .line 672
    invoke-static {}, Lcom/android/server/display/animation/AnimationHandler;->getInstance()Lcom/android/server/display/animation/AnimationHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/display/animation/AnimationHandler;->removeCallback(Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 673
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mLastFrameTime:J

    .line 674
    iput-boolean v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 675
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 676
    iget-object v1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 677
    iget-object v1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

    iget v2, p0, Lcom/android/server/display/animation/DynamicAnimation;->mValue:F

    iget v3, p0, Lcom/android/server/display/animation/DynamicAnimation;->mVelocity:F

    invoke-interface {v1, p0, p1, v2, v3}, Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;->onAnimationEnd(Lcom/android/server/display/animation/DynamicAnimation;ZFF)V

    .line 675
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 680
    .end local v0  # "i":I
    :cond_33
    iget-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/display/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    .line 681
    return-void
.end method

.method private getPropertyValue()F
    .registers 3

    .line 707
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mProperty:Lcom/android/server/display/animation/FloatPropertyCompat;

    iget-object v1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/server/display/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method private static removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 556
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "entry":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 557
    .local v0, "id":I
    if-ltz v0, :cond_a

    .line 558
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 560
    :cond_a
    return-void
.end method

.method private static removeNullEntries(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 545
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 546
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    .line 547
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 545
    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 550
    .end local v0  # "i":I
    :cond_14
    return-void
.end method

.method private startAnimationInternal()V
    .registers 4

    .line 611
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_33

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mRunning:Z

    .line 613
    iget-boolean v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mStartValueIsSet:Z

    if-nez v0, :cond_11

    .line 614
    invoke-direct {p0}, Lcom/android/server/display/animation/DynamicAnimation;->getPropertyValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mValue:F

    .line 617
    :cond_11
    iget v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mValue:F

    iget v1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMaxValue:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2b

    iget v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mValue:F

    iget v1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMinValue:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2b

    .line 621
    invoke-static {}, Lcom/android/server/display/animation/AnimationHandler;->getInstance()Lcom/android/server/display/animation/AnimationHandler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/display/animation/AnimationHandler;->addAnimationFrameCallback(Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallback;J)V

    goto :goto_33

    .line 618
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Starting value need to be in between min value and max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_33
    :goto_33
    return-void
.end method


# virtual methods
.method public addEndListener(Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/server/display/animation/DynamicAnimation;
    .registers 3
    .param p1, "listener"  # Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;",
            ")TT;"
        }
    .end annotation

    .line 443
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 444
    iget-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_d
    return-object p0
.end method

.method public addUpdateListener(Lcom/android/server/display/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/android/server/display/animation/DynamicAnimation;
    .registers 4
    .param p1, "listener"  # Lcom/android/server/display/animation/DynamicAnimation$OnAnimationUpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ")TT;"
        }
    .end annotation

    .line 471
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/display/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_14

    .line 477
    iget-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 478
    iget-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_13
    return-object p0

    .line 474
    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel()V
    .registers 2

    .line 592
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_8

    .line 593
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/animation/DynamicAnimation;->endAnimationInternal(Z)V

    .line 595
    :cond_8
    return-void
.end method

.method public doAnimationFrame(J)Z
    .registers 9
    .param p1, "frameTime"  # J

    .line 636
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    iget-wide v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 638
    iput-wide p1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mLastFrameTime:J

    .line 639
    iget v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mValue:F

    invoke-virtual {p0, v0}, Lcom/android/server/display/animation/DynamicAnimation;->setPropertyValue(F)V

    .line 640
    return v1

    .line 642
    :cond_11
    iget-wide v2, p0, Lcom/android/server/display/animation/DynamicAnimation;->mLastFrameTime:J

    sub-long v2, p1, v2

    .line 643
    .local v2, "deltaT":J
    iput-wide p1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mLastFrameTime:J

    .line 644
    invoke-virtual {p0, v2, v3}, Lcom/android/server/display/animation/DynamicAnimation;->updateValueAndVelocity(J)Z

    move-result v0

    .line 646
    .local v0, "finished":Z
    iget v4, p0, Lcom/android/server/display/animation/DynamicAnimation;->mValue:F

    iget v5, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMaxValue:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/android/server/display/animation/DynamicAnimation;->mValue:F

    .line 647
    iget v4, p0, Lcom/android/server/display/animation/DynamicAnimation;->mValue:F

    iget v5, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMinValue:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/android/server/display/animation/DynamicAnimation;->mValue:F

    .line 649
    iget v4, p0, Lcom/android/server/display/animation/DynamicAnimation;->mValue:F

    invoke-virtual {p0, v4}, Lcom/android/server/display/animation/DynamicAnimation;->setPropertyValue(F)V

    .line 651
    if-eqz v0, :cond_39

    .line 652
    invoke-direct {p0, v1}, Lcom/android/server/display/animation/DynamicAnimation;->endAnimationInternal(Z)V

    .line 654
    :cond_39
    return v0
.end method

.method abstract getAcceleration(FF)F
.end method

.method public getMinimumVisibleChange()F
    .registers 2

    .line 537
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    iget v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMinVisibleChange:F

    return v0
.end method

.method getValueThreshold()F
    .registers 3

    .line 700
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    iget v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v1, 0x3f400000  # 0.75f

    mul-float/2addr v0, v1

    return v0
.end method

.method abstract isAtEquilibrium(FF)Z
.end method

.method public isRunning()Z
    .registers 2

    .line 603
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mRunning:Z

    return v0
.end method

.method public removeEndListener(Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;)V
    .registers 3
    .param p1, "listener"  # Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;

    .line 455
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/display/animation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 456
    return-void
.end method

.method public removeUpdateListener(Lcom/android/server/display/animation/DynamicAnimation$OnAnimationUpdateListener;)V
    .registers 3
    .param p1, "listener"  # Lcom/android/server/display/animation/DynamicAnimation$OnAnimationUpdateListener;

    .line 490
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/display/animation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 491
    return-void
.end method

.method public setMaxValue(F)Lcom/android/server/display/animation/DynamicAnimation;
    .registers 2
    .param p1, "max"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 418
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    iput p1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMaxValue:F

    .line 419
    return-object p0
.end method

.method public setMinValue(F)Lcom/android/server/display/animation/DynamicAnimation;
    .registers 2
    .param p1, "min"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 431
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    iput p1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMinValue:F

    .line 432
    return-object p0
.end method

.method public setMinimumVisibleChange(F)Lcom/android/server/display/animation/DynamicAnimation;
    .registers 4
    .param p1, "minimumVisibleChange"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 522
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_e

    .line 525
    iput p1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 526
    const/high16 v0, 0x3f400000  # 0.75f

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/server/display/animation/DynamicAnimation;->setValueThreshold(F)V

    .line 527
    return-object p0

    .line 523
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum visible change must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setPropertyValue(F)V
    .registers 6
    .param p1, "value"  # F

    .line 687
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mProperty:Lcom/android/server/display/animation/FloatPropertyCompat;

    iget-object v1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    .line 688
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 689
    iget-object v1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 690
    iget-object v1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/animation/DynamicAnimation$OnAnimationUpdateListener;

    iget v2, p0, Lcom/android/server/display/animation/DynamicAnimation;->mValue:F

    iget v3, p0, Lcom/android/server/display/animation/DynamicAnimation;->mVelocity:F

    invoke-interface {v1, p0, v2, v3}, Lcom/android/server/display/animation/DynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(Lcom/android/server/display/animation/DynamicAnimation;FF)V

    .line 688
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 693
    .end local v0  # "i":I
    :cond_2a
    iget-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/display/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    .line 694
    return-void
.end method

.method public setStartValue(F)Lcom/android/server/display/animation/DynamicAnimation;
    .registers 3
    .param p1, "startValue"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 377
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    iput p1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mValue:F

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 379
    return-object p0
.end method

.method public setStartVelocity(F)Lcom/android/server/display/animation/DynamicAnimation;
    .registers 2
    .param p1, "startVelocity"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 401
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    iput p1, p0, Lcom/android/server/display/animation/DynamicAnimation;->mVelocity:F

    .line 402
    return-object p0
.end method

.method abstract setValueThreshold(F)V
.end method

.method public start()V
    .registers 2

    .line 577
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation;, "Lcom/android/server/display/animation/DynamicAnimation<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_7

    .line 578
    invoke-direct {p0}, Lcom/android/server/display/animation/DynamicAnimation;->startAnimationInternal()V

    .line 580
    :cond_7
    return-void
.end method

.method abstract updateValueAndVelocity(J)Z
.end method
