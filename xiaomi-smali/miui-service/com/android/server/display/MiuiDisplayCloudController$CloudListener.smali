# classes.dex

.class public interface abstract Lcom/android/server/display/MiuiDisplayCloudController$CloudListener;
.super Ljava/lang/Object;
.source "MiuiDisplayCloudController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MiuiDisplayCloudController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CloudListener"
.end annotation


# virtual methods
.method public abstract onCloudUpdated(JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
