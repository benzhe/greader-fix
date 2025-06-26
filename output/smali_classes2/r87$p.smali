.class public Lr87$p;
.super Le37;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr87;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "p"
.end annotation


# instance fields
.field public final a:Lr87$w;

.field public b:J

.field public final synthetic c:Lr87;


# direct methods
.method public constructor <init>(Lr87;Lr87$w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr87$p;->c:Lr87;

    invoke-direct {p0}, Le37;-><init>()V

    .line 2
    iput-object p2, p0, Lr87$p;->a:Lr87$w;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 10

    .line 1
    iget-object v0, p0, Lr87$p;->c:Lr87;

    .line 2
    iget-object v0, v0, Lr87;->p:Lr87$u;

    .line 3
    iget-object v0, v0, Lr87$u;->f:Lr87$w;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lr87$p;->c:Lr87;

    .line 5
    iget-object v1, v1, Lr87;->j:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lr87$p;->c:Lr87;

    .line 8
    iget-object v2, v2, Lr87;->p:Lr87$u;

    .line 9
    iget-object v2, v2, Lr87$u;->f:Lr87$w;

    if-nez v2, :cond_7

    iget-object v2, p0, Lr87$p;->a:Lr87$w;

    iget-boolean v3, v2, Lr87$w;->b:Z

    if-eqz v3, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-wide v3, p0, Lr87$p;->b:J

    add-long/2addr v3, p1

    iput-wide v3, p0, Lr87$p;->b:J

    .line 11
    iget-object p1, p0, Lr87$p;->c:Lr87;

    .line 12
    iget-wide v5, p1, Lr87;->r:J

    cmp-long p2, v3, v5

    if-gtz p2, :cond_2

    .line 13
    monitor-exit v1

    return-void

    .line 14
    :cond_2
    iget-wide v7, p1, Lr87;->l:J

    const/4 p2, 0x1

    cmp-long v9, v3, v7

    if-lez v9, :cond_3

    .line 15
    iput-boolean p2, v2, Lr87$w;->c:Z

    goto :goto_0

    .line 16
    :cond_3
    iget-object p1, p1, Lr87;->k:Lr87$q;

    sub-long/2addr v3, v5

    .line 17
    iget-object p1, p1, Lr87$q;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    .line 18
    iget-object p1, p0, Lr87$p;->c:Lr87;

    iget-wide v4, p0, Lr87$p;->b:J

    .line 19
    iput-wide v4, p1, Lr87;->r:J

    .line 20
    iget-wide v4, p1, Lr87;->m:J

    cmp-long p1, v2, v4

    if-lez p1, :cond_4

    .line 21
    iget-object p1, p0, Lr87$p;->a:Lr87$w;

    iput-boolean p2, p1, Lr87$w;->c:Z

    .line 22
    :cond_4
    :goto_0
    iget-object p1, p0, Lr87$p;->a:Lr87$w;

    iget-boolean p2, p1, Lr87$w;->c:Z

    if-eqz p2, :cond_5

    .line 23
    iget-object p2, p0, Lr87$p;->c:Lr87;

    .line 24
    invoke-virtual {p2, p1}, Lr87;->p(Lr87$w;)Ljava/lang/Runnable;

    move-result-object v0

    .line 25
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    .line 26
    check-cast v0, Lr87$c;

    invoke-virtual {v0}, Lr87$c;->run()V

    :cond_6
    return-void

    .line 27
    :cond_7
    :goto_1
    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
