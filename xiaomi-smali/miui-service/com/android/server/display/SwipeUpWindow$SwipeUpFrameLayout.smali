# classes.dex

.class Lcom/android/server/display/SwipeUpWindow$SwipeUpFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeUpWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/SwipeUpWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwipeUpFrameLayout"
.end annotation


# instance fields
.field private mSurface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/android/server/display/SwipeUpWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/display/SwipeUpWindow;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/display/SwipeUpWindow;
    .param p2, "context"  # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 810
    iput-object p1, p0, Lcom/android/server/display/SwipeUpWindow$SwipeUpFrameLayout;->this$0:Lcom/android/server/display/SwipeUpWindow;

    .line 811
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/SwipeUpWindow$SwipeUpFrameLayout;->mSurface:Landroid/view/Surface;

    .line 812
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"  # Landroid/graphics/Canvas;

    .line 822
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 823
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$SwipeUpFrameLayout;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_13

    .line 824
    invoke-virtual {p0}, Lcom/android/server/display/SwipeUpWindow$SwipeUpFrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 825
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_f

    const/4 v1, 0x0

    goto :goto_11

    :cond_f
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    :goto_11
    iput-object v1, p0, Lcom/android/server/display/SwipeUpWindow$SwipeUpFrameLayout;->mSurface:Landroid/view/Surface;

    .line 828
    .end local v0  # "root":Landroid/view/ViewRootImpl;
    :cond_13
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$SwipeUpFrameLayout;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_27

    .line 829
    const-string v0, "SwipeUpWindow"

    const-string/jumbo v1, "setDequeueTimeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$SwipeUpFrameLayout;->mSurface:Landroid/view/Surface;

    const v1, 0x1312d00

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setDequeueTimeout(I)V

    .line 832
    :cond_27
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"  # Z

    .line 816
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 817
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$SwipeUpFrameLayout;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v0}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$mstartSwipeUpAnimation(Lcom/android/server/display/SwipeUpWindow;)V

    .line 818
    return-void
.end method
