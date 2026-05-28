# classes.dex

.class final Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SwitchStatsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/SwitchStatsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/statistics/SwitchStatsHelper;


# direct methods
.method public static synthetic $r8$lambda$R4uIyxWM_juAU3G5HtBq1Ab8Hwk(Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;->lambda$onChange$0(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/statistics/SwitchStatsHelper;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"  # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 530
    iput-object p1, p0, Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;->this$0:Lcom/android/server/display/statistics/SwitchStatsHelper;

    .line 531
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 532
    return-void
.end method

.method private synthetic lambda$onChange$0(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"  # Landroid/net/Uri;

    .line 536
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;->this$0:Lcom/android/server/display/statistics/SwitchStatsHelper;

    invoke-static {v0, p1}, Lcom/android/server/display/statistics/SwitchStatsHelper;->-$$Nest$mhandleSettingsChangeEvent(Lcom/android/server/display/statistics/SwitchStatsHelper;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 536
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;->this$0:Lcom/android/server/display/statistics/SwitchStatsHelper;

    invoke-static {v0}, Lcom/android/server/display/statistics/SwitchStatsHelper;->-$$Nest$fgetmBgHandler(Lcom/android/server/display/statistics/SwitchStatsHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 537
    return-void
.end method
