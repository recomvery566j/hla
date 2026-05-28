# classes.dex

.class Lcom/android/server/display/TouchCoverProtectionHelper$Injector$1;
.super Ljava/lang/Object;
.source "TouchCoverProtectionHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/TouchCoverProtectionHelper$Injector;-><init>(Lcom/android/server/display/TouchCoverProtectionHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$this$0:Lcom/android/server/display/TouchCoverProtectionHelper;


# direct methods
.method constructor <init>(Lcom/android/server/display/TouchCoverProtectionHelper$Injector;Lcom/android/server/display/TouchCoverProtectionHelper;)V
    .registers 3
    .param p1, "this$1"  # Lcom/android/server/display/TouchCoverProtectionHelper$Injector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 402
    iput-object p2, p0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector$1;->val$this$0:Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"  # Landroid/view/View;
    .param p2, "event"  # Landroid/view/MotionEvent;

    .line 405
    const/4 v0, 0x1

    return v0
.end method
