# classes.dex

.class public final synthetic Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/aiautobrt/CbmStateTracker;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/aiautobrt/CbmStateTracker;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    iput p2, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda13;->f$1:I

    iput p3, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda13;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    iget v1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda13;->f$1:I

    iget v2, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda13;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->$r8$lambda$SO2SiZ8zWEDXP_AdGKTU7edHdDA(Lcom/android/server/display/aiautobrt/CbmStateTracker;II)V

    return-void
.end method
