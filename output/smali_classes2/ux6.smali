.class public Lux6;
.super Lhz6;
.source "SourceFile"


# static fields
.field public static volatile f:Lux6;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhz6;-><init>()V

    return-void
.end method

.method public static n()Lux6;
    .locals 2

    .line 1
    sget-object v0, Lux6;->f:Lux6;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lhz6;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lux6;->f:Lux6;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lux6;

    invoke-direct {v1}, Lux6;-><init>()V

    sput-object v1, Lux6;->f:Lux6;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lux6;->f:Lux6;

    return-object v0
.end method
