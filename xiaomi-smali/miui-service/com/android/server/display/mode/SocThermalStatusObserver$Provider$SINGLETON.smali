# classes.dex

.class public final Lcom/android/server/display/mode/SocThermalStatusObserver$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "SocThermalStatusObserver$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/mode/SocThermalStatusObserver$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/display/mode/SocThermalStatusObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/android/server/display/mode/SocThermalStatusObserver;

    invoke-direct {v0}, Lcom/android/server/display/mode/SocThermalStatusObserver;-><init>()V

    sput-object v0, Lcom/android/server/display/mode/SocThermalStatusObserver$Provider$SINGLETON;->INSTANCE:Lcom/android/server/display/mode/SocThermalStatusObserver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
