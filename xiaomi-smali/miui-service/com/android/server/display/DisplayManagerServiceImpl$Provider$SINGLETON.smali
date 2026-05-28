# classes.dex

.class public final Lcom/android/server/display/DisplayManagerServiceImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "DisplayManagerServiceImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerServiceImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/display/DisplayManagerServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-direct {v0}, Lcom/android/server/display/DisplayManagerServiceImpl;-><init>()V

    sput-object v0, Lcom/android/server/display/DisplayManagerServiceImpl$Provider$SINGLETON;->INSTANCE:Lcom/android/server/display/DisplayManagerServiceImpl;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
