# classes.dex

.class public final synthetic Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/aiautobrt/CbmStateTracker;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/aiautobrt/CbmStateTracker;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    iput-wide p2, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda15;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    iget-wide v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda15;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->$r8$lambda$4diJMlVf6KpSZYYYZyF4ueAOMR0(Lcom/android/server/display/aiautobrt/CbmStateTracker;J)V

    return-void
.end method
