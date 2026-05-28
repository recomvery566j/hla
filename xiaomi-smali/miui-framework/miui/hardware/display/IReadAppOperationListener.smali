.class public interface abstract Lmiui/hardware/display/IReadAppOperationListener;
.super Ljava/lang/Object;
.source "IReadAppOperationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/display/IReadAppOperationListener$Stub;,
        Lmiui/hardware/display/IReadAppOperationListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.hardware.display.IReadAppOperationListener"


# virtual methods
.method public abstract blacklist onStartReadApp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
