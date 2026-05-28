# classes.dex

.class public final synthetic Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    iput p2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    iget v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->$r8$lambda$Dq8EsM4HWCFNqa-pCEEZT0lousA(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;I)V

    return-void
.end method
