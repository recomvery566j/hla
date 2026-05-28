# classes.dex

.class public final Lcom/android/server/display/mode/DisplayModeDirectorImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "DisplayModeDirectorImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/mode/DisplayModeDirectorImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/display/mode/DisplayModeDirectorImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;

    invoke-direct {v0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;-><init>()V

    sput-object v0, Lcom/android/server/display/mode/DisplayModeDirectorImpl$Provider$SINGLETON;->INSTANCE:Lcom/android/server/display/mode/DisplayModeDirectorImpl;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
