.class public Ld77$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld77;->b(Lx47;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lx47;

.field public final synthetic f:Ld77;


# direct methods
.method public constructor <init>(Ld77;Lx47;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld77$c;->f:Ld77;

    iput-object p2, p0, Ld77$c;->e:Lx47;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Ld77$c;->f:Ld77;

    .line 2
    iget-object v0, v0, Ld77;->u:Lj37;

    .line 3
    iget-object v0, v0, Lj37;->a:Li37;

    .line 4
    sget-object v1, Li37;->i:Li37;

    if-ne v0, v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Ld77$c;->f:Ld77;

    iget-object v2, p0, Ld77$c;->e:Lx47;

    .line 6
    iput-object v2, v0, Ld77;->v:Lx47;

    .line 7
    iget-object v0, v0, Ld77;->t:Lc87;

    .line 8
    iget-object v2, p0, Ld77$c;->f:Ld77;

    .line 9
    iget-object v3, v2, Ld77;->s:Ld67;

    const/4 v4, 0x0

    .line 10
    iput-object v4, v2, Ld77;->t:Lc87;

    .line 11
    iget-object v2, p0, Ld77$c;->f:Ld77;

    .line 12
    iput-object v4, v2, Ld77;->s:Ld67;

    .line 13
    iget-object v5, v2, Ld77;->k:Lb57;

    invoke-virtual {v5}, Lb57;->d()V

    .line 14
    invoke-static {v1}, Lj37;->a(Li37;)Lj37;

    move-result-object v1

    invoke-virtual {v2, v1}, Ld77;->j(Lj37;)V

    .line 15
    iget-object v1, p0, Ld77$c;->f:Ld77;

    .line 16
    iget-object v1, v1, Ld77;->l:Ld77$f;

    .line 17
    invoke-virtual {v1}, Ld77$f;->b()V

    .line 18
    iget-object v1, p0, Ld77$c;->f:Ld77;

    .line 19
    iget-object v1, v1, Ld77;->q:Ljava/util/Collection;

    .line 20
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    iget-object v1, p0, Ld77$c;->f:Ld77;

    .line 22
    iget-object v2, v1, Ld77;->k:Lb57;

    new-instance v5, Lh77;

    invoke-direct {v5, v1}, Lh77;-><init>(Ld77;)V

    .line 23
    iget-object v1, v2, Lb57;->f:Ljava/util/Queue;

    const-string v6, "runnable is null"

    invoke-static {v5, v6}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v2}, Lb57;->a()V

    .line 25
    :cond_1
    iget-object v1, p0, Ld77$c;->f:Ld77;

    .line 26
    iget-object v2, v1, Ld77;->k:Lb57;

    invoke-virtual {v2}, Lb57;->d()V

    .line 27
    iget-object v2, v1, Ld77;->p:Lb57$c;

    if-eqz v2, :cond_2

    .line 28
    invoke-virtual {v2}, Lb57$c;->a()V

    .line 29
    iput-object v4, v1, Ld77;->p:Lb57$c;

    .line 30
    iput-object v4, v1, Ld77;->n:Ln57;

    :cond_2
    if-eqz v0, :cond_3

    .line 31
    iget-object v1, p0, Ld77$c;->e:Lx47;

    invoke-interface {v0, v1}, Lc87;->b(Lx47;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 32
    iget-object v0, p0, Ld77$c;->e:Lx47;

    invoke-interface {v3, v0}, Lc87;->b(Lx47;)V

    :cond_4
    return-void
.end method
