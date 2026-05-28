# classes.dex

.class final Lcom/android/server/display/SunlightController$UserSwitchObserver;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "SunlightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/SunlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserSwitchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/SunlightController;


# direct methods
.method public static synthetic $r8$lambda$z37SuxpCl6p_AH6t8CPNlYn6s6M(Lcom/android/server/display/SunlightController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/display/SunlightController;->-$$Nest$mupdateSunlightModeSettings(Lcom/android/server/display/SunlightController;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/display/SunlightController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 542
    iput-object p1, p0, Lcom/android/server/display/SunlightController$UserSwitchObserver;->this$0:Lcom/android/server/display/SunlightController;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/SunlightController;Lcom/android/server/display/SunlightController-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/SunlightController$UserSwitchObserver;-><init>(Lcom/android/server/display/SunlightController;)V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .registers 5
    .param p1, "newUserId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/android/server/display/SunlightController$UserSwitchObserver;->this$0:Lcom/android/server/display/SunlightController;

    invoke-static {v0}, Lcom/android/server/display/SunlightController;->-$$Nest$fgetmHandler(Lcom/android/server/display/SunlightController;)Lcom/android/server/display/SunlightController$SunlightModeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/SunlightController$UserSwitchObserver;->this$0:Lcom/android/server/display/SunlightController;

    new-instance v2, Lcom/android/server/display/SunlightController$UserSwitchObserver$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/display/SunlightController$UserSwitchObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/SunlightController;)V

    invoke-virtual {v0, v2}, Lcom/android/server/display/SunlightController$SunlightModeHandler;->post(Ljava/lang/Runnable;)Z

    .line 546
    return-void
.end method
