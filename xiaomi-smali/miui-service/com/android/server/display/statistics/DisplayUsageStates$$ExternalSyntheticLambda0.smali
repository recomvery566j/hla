# classes.dex

.class public final synthetic Lcom/android/server/display/statistics/DisplayUsageStates$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/statistics/DisplayUsageStates;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/statistics/DisplayUsageStates;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/statistics/DisplayUsageStates$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/statistics/DisplayUsageStates;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/statistics/DisplayUsageStates;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/display/statistics/DisplayUsageStates;->$r8$lambda$WNV8DEdLS_tNYbe9mP3X7vcKItE(Lcom/android/server/display/statistics/DisplayUsageStates;Z)V

    return-void
.end method
