.class public Lh67$f;
.super Li67;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final i:Lc47$f;

.field public final j:Ll37;

.field public final synthetic k:Lh67;


# direct methods
.method public constructor <init>(Lh67;Lc47$f;Lh67$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh67$f;->k:Lh67;

    invoke-direct {p0}, Li67;-><init>()V

    .line 2
    invoke-static {}, Ll37;->g()Ll37;

    move-result-object p1

    iput-object p1, p0, Lh67$f;->j:Ll37;

    .line 3
    iput-object p2, p0, Lh67$f;->i:Lc47$f;

    return-void
.end method


# virtual methods
.method public f(Lx47;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Li67;->f(Lx47;)V

    .line 2
    iget-object p1, p0, Lh67$f;->k:Lh67;

    .line 3
    iget-object p1, p1, Lh67;->b:Ljava/lang/Object;

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    iget-object v0, p0, Lh67$f;->k:Lh67;

    .line 6
    iget-object v1, v0, Lh67;->g:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 7
    iget-object v0, v0, Lh67;->i:Ljava/util/Collection;

    .line 8
    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 9
    iget-object v1, p0, Lh67$f;->k:Lh67;

    invoke-virtual {v1}, Lh67;->h()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lh67$f;->k:Lh67;

    .line 11
    iget-object v1, v0, Lh67;->d:Lb57;

    .line 12
    iget-object v0, v0, Lh67;->f:Ljava/lang/Runnable;

    .line 13
    invoke-virtual {v1, v0}, Lb57;->b(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lh67$f;->k:Lh67;

    .line 15
    iget-object v1, v0, Lh67;->j:Lx47;

    if-eqz v1, :cond_0

    .line 16
    iget-object v1, v0, Lh67;->d:Lb57;

    .line 17
    iget-object v0, v0, Lh67;->g:Ljava/lang/Runnable;

    .line 18
    invoke-virtual {v1, v0}, Lb57;->b(Ljava/lang/Runnable;)V

    .line 19
    iget-object v0, p0, Lh67$f;->k:Lh67;

    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lh67;->g:Ljava/lang/Runnable;

    .line 21
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object p1, p0, Lh67$f;->k:Lh67;

    .line 23
    iget-object p1, p1, Lh67;->d:Lb57;

    .line 24
    invoke-virtual {p1}, Lb57;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 25
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
