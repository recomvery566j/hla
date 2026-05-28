# classes.dex

.class public final synthetic Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;Landroid/net/Uri;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    iput-object p2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;->$r8$lambda$R4uIyxWM_juAU3G5HtBq1Ab8Hwk(Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;Landroid/net/Uri;)V

    return-void
.end method
