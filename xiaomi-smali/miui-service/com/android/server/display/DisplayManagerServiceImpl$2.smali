# classes.dex

.class Lcom/android/server/display/DisplayManagerServiceImpl$2;
.super Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;
.source "DisplayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerServiceImpl;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/DisplayManagerServiceImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2118
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerServiceImpl$2;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardLockedStateChanged(Z)V
    .registers 5
    .param p1, "isKeyguardLocked"  # Z

    .line 2121
    if-nez p1, :cond_8

    .line 2122
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl$2;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$msendHotplugBroadcast(Lcom/android/server/display/DisplayManagerServiceImpl;Z)V

    .line 2124
    :cond_8
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 2126
    .local v0, "mWM":Landroid/view/IWindowManager;
    :try_start_c
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl$2;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmIKeyguardLockedStateListener(Lcom/android/server/display/DisplayManagerServiceImpl;)Lcom/android/internal/policy/IKeyguardLockedStateListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 2129
    nop

    .line 2130
    return-void

    .line 2127
    :catch_17
    move-exception v1

    .line 2128
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
