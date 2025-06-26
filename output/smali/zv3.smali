.class public final synthetic Lzv3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgw3;


# instance fields
.field public final a:Lyv3;

.field public final b:Lvv3;


# direct methods
.method public constructor <init>(Lyv3;Lvv3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzv3;->a:Lyv3;

    iput-object p2, p0, Lzv3;->b:Lvv3;

    return-void
.end method


# virtual methods
.method public final k()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lzv3;->a:Lyv3;

    iget-object v1, p0, Lzv3;->b:Lvv3;

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gms:phenotype:phenotype_flag:debug_disable_caching"

    invoke-static {v2}, Lyv3;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lvv3;->a()Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lvv3;->e:Ljava/util/Map;

    :goto_0
    if-nez v2, :cond_2

    iget-object v3, v1, Lvv3;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, v1, Lvv3;->e:Ljava/util/Map;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lvv3;->a()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lvv3;->e:Ljava/util/Map;

    :cond_1
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 2
    :goto_2
    iget-object v0, v0, Lyv3;->b:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
