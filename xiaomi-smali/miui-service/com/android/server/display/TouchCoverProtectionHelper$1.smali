# classes.dex

.class Lcom/android/server/display/TouchCoverProtectionHelper$1;
.super Ljava/lang/Object;
.source "TouchCoverProtectionHelper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/TouchCoverProtectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/TouchCoverProtectionHelper;


# direct methods
.method constructor <init>(Lcom/android/server/display/TouchCoverProtectionHelper;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/TouchCoverProtectionHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lcom/android/server/display/TouchCoverProtectionHelper$1;->this$0:Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"  # I

    .line 283
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3
    .param p1, "displayId"  # I

    .line 292
    if-eqz p1, :cond_3

    .line 293
    return-void

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper$1;->this$0:Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-static {v0}, Lcom/android/server/display/TouchCoverProtectionHelper;->-$$Nest$mupdateTouchCoverProtectionRect(Lcom/android/server/display/TouchCoverProtectionHelper;)V

    .line 296
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"  # I

    .line 288
    return-void
.end method
