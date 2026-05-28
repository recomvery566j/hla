# classes.dex

.class public final synthetic Lcom/android/server/display/CustomFeatureFlags$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Lcom/android/server/display/FeatureFlags;

    invoke-interface {p1}, Lcom/android/server/display/FeatureFlags;->autobrightnessResetPolicy()Z

    move-result p1

    return p1
.end method
