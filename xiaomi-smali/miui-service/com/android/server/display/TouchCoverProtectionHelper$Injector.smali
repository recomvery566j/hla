# classes.dex

.class final Lcom/android/server/display/TouchCoverProtectionHelper$Injector;
.super Ljava/lang/Object;
.source "TouchCoverProtectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/TouchCoverProtectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Injector"
.end annotation


# instance fields
.field private mTouchAreaView:Landroid/view/View;

.field private mViewHasShown:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/android/server/display/TouchCoverProtectionHelper;


# direct methods
.method static bridge synthetic -$$Nest$mhide(Lcom/android/server/display/TouchCoverProtectionHelper$Injector;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->hide()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshow(Lcom/android/server/display/TouchCoverProtectionHelper$Injector;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->show()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/TouchCoverProtectionHelper;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 397
    iput-object p1, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->this$0:Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    invoke-static {p1}, Lcom/android/server/display/TouchCoverProtectionHelper;->-$$Nest$fgetmContext(Lcom/android/server/display/TouchCoverProtectionHelper;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->mWindowManager:Landroid/view/WindowManager;

    .line 399
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/android/server/display/TouchCoverProtectionHelper;->-$$Nest$fgetmContext(Lcom/android/server/display/TouchCoverProtectionHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->mTouchAreaView:Landroid/view/View;

    .line 400
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->mTouchAreaView:Landroid/view/View;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 401
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->mTouchAreaView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 402
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->mTouchAreaView:Landroid/view/View;

    new-instance v1, Lcom/android/server/display/TouchCoverProtectionHelper$Injector$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/TouchCoverProtectionHelper$Injector$1;-><init>(Lcom/android/server/display/TouchCoverProtectionHelper$Injector;Lcom/android/server/display/TouchCoverProtectionHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 408
    iget-object p1, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->mTouchAreaView:Landroid/view/View;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 409
    return-void
.end method

.method private hide()V
    .registers 3

    .line 440
    iget-boolean v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->mViewHasShown:Z

    if-eqz v0, :cond_e

    .line 441
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->mTouchAreaView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->mViewHasShown:Z

    .line 444
    :cond_e
    return-void
.end method

.method private show()V
    .registers 8

    .line 412
    iget-boolean v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->mViewHasShown:Z

    if-nez v0, :cond_75

    .line 413
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->this$0:Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-static {v0}, Lcom/android/server/display/TouchCoverProtectionHelper;->-$$Nest$fgetmTouchCoverProtectionRect(Lcom/android/server/display/TouchCoverProtectionHelper;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->this$0:Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-static {v2}, Lcom/android/server/display/TouchCoverProtectionHelper;->-$$Nest$fgetmTouchCoverProtectionRect(Lcom/android/server/display/TouchCoverProtectionHelper;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v2, v0, v2

    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->this$0:Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-static {v0}, Lcom/android/server/display/TouchCoverProtectionHelper;->-$$Nest$fgetmTouchCoverProtectionRect(Lcom/android/server/display/TouchCoverProtectionHelper;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->this$0:Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-static {v3}, Lcom/android/server/display/TouchCoverProtectionHelper;->-$$Nest$fgetmTouchCoverProtectionRect(Lcom/android/server/display/TouchCoverProtectionHelper;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, v0, v3

    const v5, 0x810500

    const/4 v6, -0x3

    const/16 v4, 0x7d8

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 421
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x33

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 422
    const-string/jumbo v0, "touch-cover-protection-rect"

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->this$0:Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-static {v0}, Lcom/android/server/display/TouchCoverProtectionHelper;->-$$Nest$fgetmLogicalDisplay(Lcom/android/server/display/TouchCoverProtectionHelper;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 424
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    const/4 v2, 0x0

    .line 425
    .local v2, "insetTop":I
    const/4 v3, 0x0

    .line 426
    .local v3, "insetLeft":I
    if-eqz v0, :cond_55

    .line 427
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    .line 428
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    .line 431
    :cond_55
    iget-object v4, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->this$0:Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-static {v4}, Lcom/android/server/display/TouchCoverProtectionHelper;->-$$Nest$fgetmTouchCoverProtectionRect(Lcom/android/server/display/TouchCoverProtectionHelper;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 432
    iget-object v4, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->this$0:Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-static {v4}, Lcom/android/server/display/TouchCoverProtectionHelper;->-$$Nest$fgetmTouchCoverProtectionRect(Lcom/android/server/display/TouchCoverProtectionHelper;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v2

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 434
    iget-object v4, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->mTouchAreaView:Landroid/view/View;

    invoke-interface {v4, v5, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->mViewHasShown:Z

    .line 437
    .end local v0  # "displayCutout":Landroid/view/DisplayCutout;
    .end local v1  # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v2  # "insetTop":I
    .end local v3  # "insetLeft":I
    :cond_75
    return-void
.end method
