.class public Le63;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le63$a;
    }
.end annotation


# static fields
.field public static volatile b:Le63;

.field public static volatile c:Le63;

.field public static final d:Le63;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le63$a;",
            "Ls63$f<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le63;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le63;-><init>(Z)V

    sput-object v0, Le63;->d:Le63;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le63;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Le63;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Le63;
    .locals 2

    .line 1
    sget-object v0, Le63;->b:Le63;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Le63;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Le63;->b:Le63;

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Le63;->d:Le63;

    sput-object v0, Le63;->b:Le63;

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

.method public static b()Le63;
    .locals 2

    .line 1
    const-class v0, Le63;

    sget-object v1, Le63;->c:Le63;

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Le63;->c:Le63;

    if-eqz v1, :cond_1

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :cond_1
    invoke-static {v0}, Lp63;->b(Ljava/lang/Class;)Le63;

    move-result-object v1

    .line 6
    sput-object v1, Le63;->c:Le63;

    .line 7
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
