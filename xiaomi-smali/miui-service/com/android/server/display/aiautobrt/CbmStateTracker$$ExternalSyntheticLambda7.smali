# classes.dex

.class public final synthetic Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/aiautobrt/CbmStateTracker;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/aiautobrt/CbmStateTracker;IJ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    iput p2, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda7;->f$1:I

    iput-wide p3, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda7;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    iget v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda7;->f$1:I

    iget-wide v2, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda7;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->$r8$lambda$-CiQgz0tfjg4PcWMY7qeZJ3FIMw(Lcom/android/server/display/aiautobrt/CbmStateTracker;IJ)V

    return-void
.end method
