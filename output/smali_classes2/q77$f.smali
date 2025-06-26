.class public final Lq77$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq77;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final synthetic e:Lq77;


# direct methods
.method public constructor <init>(Lq77;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq77$f;->e:Lq77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lq77$f;->e:Lq77;

    .line 2
    iget-object v0, v0, Lq77;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lq77$f;->e:Lq77;

    .line 5
    iget-object v1, v0, Lq77;->Y:Lb57$c;

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, v1, Lb57$c;->a:Lb57$b;

    iget-boolean v2, v1, Lb57$b;->g:Z

    if-nez v2, :cond_1

    iget-boolean v1, v1, Lb57$b;->f:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 7
    iget-boolean v0, v0, Lq77;->x:Z

    const-string v1, "name resolver must be started"

    .line 8
    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lq77$f;->e:Lq77;

    .line 10
    invoke-virtual {v0}, Lq77;->u()V

    .line 11
    :cond_2
    iget-object v0, p0, Lq77$f;->e:Lq77;

    .line 12
    iget-object v0, v0, Lq77;->B:Ljava/util/Set;

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld77;

    .line 14
    iget-object v2, v1, Ld77;->k:Lb57;

    new-instance v3, Lf77;

    invoke-direct {v3, v1}, Lf77;-><init>(Ld77;)V

    .line 15
    iget-object v1, v2, Lb57;->f:Ljava/util/Queue;

    const-string v4, "runnable is null"

    invoke-static {v3, v4}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v2}, Lb57;->a()V

    goto :goto_1

    .line 17
    :cond_3
    iget-object v0, p0, Lq77$f;->e:Lq77;

    .line 18
    iget-object v0, v0, Lq77;->C:Ljava/util/Set;

    .line 19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li87;

    .line 20
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 21
    throw v0
.end method
