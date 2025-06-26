.class public final synthetic Lkt5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Llt5;

.field public final f:[B

.field public final g:Lyq5;

.field public final h:[Ljn5;


# direct methods
.method public constructor <init>(Llt5;[BLyq5;[Ljn5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkt5;->e:Llt5;

    iput-object p2, p0, Lkt5;->f:[B

    iput-object p3, p0, Lkt5;->g:Lyq5;

    iput-object p4, p0, Lkt5;->h:[Ljn5;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lkt5;->e:Llt5;

    iget-object v1, p0, Lkt5;->f:[B

    iget-object v2, p0, Lkt5;->g:Lyq5;

    iget-object v3, p0, Lkt5;->h:[Ljn5;

    .line 1
    invoke-virtual {v0, v1}, Llt5;->f([B)Lfu5;

    move-result-object v1

    .line 2
    instance-of v4, v1, Lyt5;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lyt5;

    invoke-virtual {v2, v4}, Lyq5;->h(Lyt5;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    monitor-enter v0

    const/4 v2, 0x0

    .line 4
    :try_start_0
    aget-object v4, v3, v2

    .line 5
    iget-object v5, v1, Lfu5;->a:Lbu5;

    .line 6
    check-cast v1, Lyt5;

    invoke-virtual {v4, v5, v1}, Ljn5;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;

    move-result-object v1

    aput-object v1, v3, v2

    .line 7
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
