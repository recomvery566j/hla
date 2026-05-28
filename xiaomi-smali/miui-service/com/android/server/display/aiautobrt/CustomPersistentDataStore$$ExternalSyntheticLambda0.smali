# classes.dex

.class public final synthetic Lcom/android/server/display/aiautobrt/CustomPersistentDataStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

    iput-boolean p2, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->$r8$lambda$gsII2vJwNwlzxNXqdytHNGXTnXI(Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;Z)V

    return-void
.end method
