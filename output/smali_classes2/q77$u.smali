.class public final Lq77$u;
.super Li57;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq77;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "u"
.end annotation


# instance fields
.field public final a:Lc47$b;

.field public final b:Ly37;

.field public final c:Lr57;

.field public final d:Ls57;

.field public e:Ld77;

.field public f:Z

.field public g:Z

.field public h:Lb57$c;

.field public final synthetic i:Lq77;


# direct methods
.method public constructor <init>(Lq77;Lc47$b;Lq77$n;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lq77$u;->i:Lq77;

    invoke-direct {p0}, Li57;-><init>()V

    const-string v0, "args"

    .line 2
    invoke-static {p2, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lq77$u;->a:Lc47$b;

    const-string v0, "helper"

    .line 3
    invoke-static {p3, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lq77;->a()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Subchannel"

    invoke-static {v0, p3}, Ly37;->b(Ljava/lang/String;Ljava/lang/String;)Ly37;

    move-result-object v2

    iput-object v2, p0, Lq77$u;->b:Ly37;

    .line 5
    new-instance p3, Ls57;

    .line 6
    iget-object v0, p1, Lq77;->m:Ld97;

    .line 7
    invoke-interface {v0}, Ld97;->a()J

    move-result-wide v4

    const-string v0, "Subchannel for "

    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    iget-object p2, p2, Lc47$b;->a:Ljava/util/List;

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Ls57;-><init>(Ly37;IJLjava/lang/String;)V

    iput-object p3, p0, Lq77$u;->d:Ls57;

    .line 10
    new-instance p2, Lr57;

    .line 11
    iget-object p1, p1, Lq77;->m:Ld97;

    .line 12
    invoke-direct {p2, p3, p1}, Lr57;-><init>(Ls57;Ld97;)V

    iput-object p2, p0, Lq77$u;->c:Lr57;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lq37;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq77$u;->i:Lq77;

    const-string v1, "Subchannel.getAllAddresses()"

    invoke-static {v0, v1}, Lq77;->o(Lq77;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lq77$u;->f:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lq77$u;->e:Ld77;

    .line 4
    iget-object v0, v0, Ld77;->m:Ljava/util/List;

    return-object v0
.end method

.method public b()Lv27;
    .locals 1

    .line 1
    iget-object v0, p0, Lq77$u;->a:Lc47$b;

    .line 2
    iget-object v0, v0, Lc47$b;->b:Lv27;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lq77$u;->f:Z

    const-string v1, "Subchannel is not started"

    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lq77$u;->e:Ld77;

    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq77$u;->i:Lq77;

    const-string v1, "Subchannel.requestConnection()"

    invoke-static {v0, v1}, Lq77;->o(Lq77;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lq77$u;->f:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lq77$u;->e:Ld77;

    invoke-virtual {v0}, Ld77;->a()La67;

    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq77$u;->i:Lq77;

    const-string v1, "Subchannel.shutdown()"

    invoke-static {v0, v1}, Lq77;->o(Lq77;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lq77$u;->i:Lq77;

    iget-object v0, v0, Lq77;->n:Lb57;

    new-instance v1, Lq77$u$a;

    invoke-direct {v1, p0}, Lq77$u$a;-><init>(Lq77$u;)V

    .line 3
    iget-object v2, v0, Lb57;->f:Ljava/util/Queue;

    const-string v3, "runnable is null"

    invoke-static {v1, v3}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0}, Lb57;->a()V

    return-void
.end method

.method public f(Lc47$j;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lq77$u;->i:Lq77;

    iget-object v2, v2, Lq77;->n:Lb57;

    invoke-virtual {v2}, Lb57;->d()V

    .line 2
    iget-boolean v2, v0, Lq77$u;->f:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string v4, "already started"

    invoke-static {v2, v4}, Lc50;->G(ZLjava/lang/Object;)V

    .line 3
    iget-boolean v2, v0, Lq77$u;->g:Z

    xor-int/2addr v2, v3

    const-string v4, "already shutdown"

    invoke-static {v2, v4}, Lc50;->G(ZLjava/lang/Object;)V

    .line 4
    iput-boolean v3, v0, Lq77$u;->f:Z

    .line 5
    iget-object v2, v0, Lq77$u;->i:Lq77;

    .line 6
    iget-boolean v2, v2, Lq77;->H:Z

    const-string v4, "runnable is null"

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, v0, Lq77$u;->i:Lq77;

    iget-object v2, v2, Lq77;->n:Lb57;

    new-instance v3, Lw77;

    invoke-direct {v3, v0, v1}, Lw77;-><init>(Lq77$u;Lc47$j;)V

    .line 8
    iget-object v1, v2, Lb57;->f:Ljava/util/Queue;

    invoke-static {v3, v4}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v2}, Lb57;->a()V

    goto/16 :goto_0

    .line 10
    :cond_0
    new-instance v2, Ld77;

    iget-object v5, v0, Lq77$u;->a:Lc47$b;

    .line 11
    iget-object v6, v5, Lc47$b;->a:Ljava/util/List;

    .line 12
    iget-object v5, v0, Lq77$u;->i:Lq77;

    .line 13
    invoke-virtual {v5}, Lq77;->a()Ljava/lang/String;

    move-result-object v7

    iget-object v5, v0, Lq77$u;->i:Lq77;

    .line 14
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    .line 15
    iget-object v9, v5, Lq77;->u:Ln57$a;

    .line 16
    iget-object v10, v5, Lq77;->f:Lb67;

    .line 17
    invoke-interface {v10}, Lb67;->x0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v11

    iget-object v5, v0, Lq77$u;->i:Lq77;

    .line 18
    iget-object v12, v5, Lq77;->q:Lqd5;

    .line 19
    iget-object v13, v5, Lq77;->n:Lb57;

    new-instance v14, Lx77;

    invoke-direct {v14, v0, v1}, Lx77;-><init>(Lq77$u;Lc47$j;)V

    .line 20
    iget-object v15, v5, Lq77;->O:Lv37;

    .line 21
    iget-object v1, v5, Lq77;->K:Lq57$a;

    .line 22
    invoke-interface {v1}, Lq57$a;->a()Lq57;

    move-result-object v16

    iget-object v1, v0, Lq77$u;->d:Ls57;

    iget-object v5, v0, Lq77$u;->b:Ly37;

    iget-object v3, v0, Lq77$u;->c:Lr57;

    move-object/from16 v18, v5

    move-object v5, v2

    move-object/from16 v17, v1

    move-object/from16 v19, v3

    invoke-direct/range {v5 .. v19}, Ld77;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ln57$a;Lb67;Ljava/util/concurrent/ScheduledExecutorService;Lqd5;Lb57;Ld77$e;Lv37;Lq57;Ls57;Ly37;Lz27;)V

    .line 23
    iget-object v1, v0, Lq77$u;->i:Lq77;

    .line 24
    iget-object v3, v1, Lq77;->M:Ls57;

    const-string v6, "Child Subchannel started"

    .line 25
    sget-object v7, Lw37$a;->f:Lw37$a;

    .line 26
    iget-object v1, v1, Lq77;->m:Ld97;

    .line 27
    invoke-interface {v1}, Ld97;->a()J

    move-result-wide v8

    .line 28
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v5, "description"

    .line 29
    invoke-static {v6, v5}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "severity"

    .line 30
    invoke-static {v7, v5}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "timestampNanos"

    .line 31
    invoke-static {v1, v5}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "at least one of channelRef and subchannelRef must be null"

    const/4 v8, 0x1

    .line 32
    invoke-static {v8, v5}, Lc50;->G(ZLjava/lang/Object;)V

    .line 33
    new-instance v13, Lw37;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v5, v13

    move-object v11, v2

    invoke-direct/range {v5 .. v12}, Lw37;-><init>(Ljava/lang/String;Lw37$a;JLx37;Lx37;Lv37$a;)V

    .line 34
    invoke-virtual {v3, v13}, Ls57;->b(Lw37;)V

    .line 35
    iput-object v2, v0, Lq77$u;->e:Ld77;

    .line 36
    iget-object v1, v0, Lq77$u;->i:Lq77;

    iget-object v1, v1, Lq77;->n:Lb57;

    new-instance v3, Lz77;

    invoke-direct {v3, v0, v2}, Lz77;-><init>(Lq77$u;Ld77;)V

    .line 37
    iget-object v2, v1, Lb57;->f:Ljava/util/Queue;

    invoke-static {v3, v4}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {v1}, Lb57;->a()V

    :goto_0
    return-void
.end method

.method public g(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lq37;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq77$u;->i:Lq77;

    iget-object v0, v0, Lq77;->n:Lb57;

    invoke-virtual {v0}, Lb57;->d()V

    .line 2
    iget-object v0, p0, Lq77$u;->e:Ld77;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "newAddressGroups"

    .line 4
    invoke-static {p1, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "newAddressGroups contains null entry"

    .line 6
    invoke-static {v2, v3}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "newAddressGroups is empty"

    invoke-static {v1, v2}, Lc50;->t(ZLjava/lang/Object;)V

    .line 8
    iget-object v1, v0, Ld77;->k:Lb57;

    new-instance v2, Lg77;

    invoke-direct {v2, v0, p1}, Lg77;-><init>(Ld77;Ljava/util/List;)V

    .line 9
    iget-object p1, v1, Lb57;->f:Ljava/util/Queue;

    const-string v0, "runnable is null"

    invoke-static {v2, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v1}, Lb57;->a()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq77$u;->b:Ly37;

    invoke-virtual {v0}, Ly37;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
