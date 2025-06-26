.class public Ld77$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc87$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld77;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final a:Ld67;

.field public b:Z

.field public final synthetic c:Ld77;


# direct methods
.method public constructor <init>(Ld77;Ld67;Ljava/net/SocketAddress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld77$g;->c:Ld77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ld77$g;->b:Z

    .line 3
    iput-object p2, p0, Ld77$g;->a:Ld67;

    return-void
.end method


# virtual methods
.method public a(Lx47;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ld77$g;->c:Ld77;

    .line 2
    iget-object v0, v0, Ld77;->j:Lz27;

    .line 3
    sget-object v1, Lz27$a;->f:Lz27$a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ld77$g;->a:Ld67;

    .line 4
    invoke-interface {v4}, Lx37;->e()Ly37;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Ld77$g;->c:Ld77;

    .line 5
    invoke-virtual {v3, p1}, Ld77;->k(Lx47;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "{0} SHUTDOWN with {1}"

    .line 6
    invoke-virtual {v0, v1, v3, v2}, Lz27;->b(Lz27$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iput-boolean v4, p0, Ld77$g;->b:Z

    .line 8
    iget-object v0, p0, Ld77$g;->c:Ld77;

    .line 9
    iget-object v0, v0, Ld77;->k:Lb57;

    .line 10
    new-instance v1, Ld77$g$b;

    invoke-direct {v1, p0, p1}, Ld77$g$b;-><init>(Ld77$g;Lx47;)V

    .line 11
    iget-object p1, v0, Lb57;->f:Ljava/util/Queue;

    const-string v2, "runnable is null"

    invoke-static {v1, v2}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v0}, Lb57;->a()V

    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld77$g;->c:Ld77;

    .line 2
    iget-object v0, v0, Ld77;->j:Lz27;

    .line 3
    sget-object v1, Lz27$a;->f:Lz27$a;

    const-string v2, "READY"

    invoke-virtual {v0, v1, v2}, Lz27;->a(Lz27$a;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Ld77$g;->c:Ld77;

    .line 5
    iget-object v0, v0, Ld77;->k:Lb57;

    .line 6
    new-instance v1, Ld77$g$a;

    invoke-direct {v1, p0}, Ld77$g$a;-><init>(Ld77$g;)V

    .line 7
    iget-object v2, v0, Lb57;->f:Ljava/util/Queue;

    const-string v3, "runnable is null"

    invoke-static {v1, v3}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v0}, Lb57;->a()V

    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Ld77$g;->b:Z

    const-string v1, "transportShutdown() must be called before transportTerminated()."

    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Ld77$g;->c:Ld77;

    .line 3
    iget-object v0, v0, Ld77;->j:Lz27;

    .line 4
    sget-object v1, Lz27$a;->f:Lz27$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ld77$g;->a:Ld67;

    invoke-interface {v3}, Lx37;->e()Ly37;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "{0} Terminated"

    invoke-virtual {v0, v1, v3, v2}, Lz27;->b(Lz27$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Ld77$g;->c:Ld77;

    .line 6
    iget-object v0, v0, Ld77;->h:Lv37;

    .line 7
    iget-object v1, p0, Ld77$g;->a:Ld67;

    .line 8
    iget-object v0, v0, Lv37;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Lv37;->b(Ljava/util/Map;Lx37;)V

    .line 9
    iget-object v0, p0, Ld77$g;->c:Ld77;

    iget-object v1, p0, Ld77$g;->a:Ld67;

    .line 10
    iget-object v2, v0, Ld77;->k:Lb57;

    new-instance v3, Li77;

    invoke-direct {v3, v0, v1, v4}, Li77;-><init>(Ld77;Ld67;Z)V

    .line 11
    iget-object v0, v2, Lb57;->f:Ljava/util/Queue;

    const-string v1, "runnable is null"

    invoke-static {v3, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v2}, Lb57;->a()V

    .line 13
    iget-object v0, p0, Ld77$g;->c:Ld77;

    .line 14
    iget-object v0, v0, Ld77;->k:Lb57;

    .line 15
    new-instance v2, Ld77$g$c;

    invoke-direct {v2, p0}, Ld77$g$c;-><init>(Ld77$g;)V

    .line 16
    iget-object v3, v0, Lb57;->f:Ljava/util/Queue;

    invoke-static {v2, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v0}, Lb57;->a()V

    return-void
.end method

.method public d(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld77$g;->c:Ld77;

    iget-object v1, p0, Ld77$g;->a:Ld67;

    .line 2
    iget-object v2, v0, Ld77;->k:Lb57;

    new-instance v3, Li77;

    invoke-direct {v3, v0, v1, p1}, Li77;-><init>(Ld77;Ld67;Z)V

    .line 3
    iget-object p1, v2, Lb57;->f:Ljava/util/Queue;

    const-string v0, "runnable is null"

    invoke-static {v3, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v2}, Lb57;->a()V

    return-void
.end method
