.class public Lgk4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lgk4;

.field public static final b:Lgk4;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgk4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgk4;-><init>(Z)V

    sput-object v0, Lgk4;->b:Lgk4;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    return-void
.end method

.method public static a()Lgk4;
    .locals 2

    .line 1
    sget-object v0, Lgk4;->a:Lgk4;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lgk4;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lgk4;->a:Lgk4;

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lgk4;->b:Lgk4;

    sput-object v0, Lgk4;->a:Lgk4;

    .line 5
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
