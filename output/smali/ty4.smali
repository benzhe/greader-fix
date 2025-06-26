.class public final synthetic Lty4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lsz4;

.field public final f:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lsz4;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lty4;->e:Lsz4;

    iput-object p2, p0, Lty4;->f:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lty4;->e:Lsz4;

    iget-object v1, p0, Lty4;->f:Landroid/os/Bundle;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lde4;->b()Z

    iget-object v2, v0, Lly4;->a:Lrx4;

    .line 2
    iget-object v2, v2, Lrx4;->g:Lcs4;

    const/4 v3, 0x0

    .line 3
    sget-object v4, Lew4;->y0:Ldw4;

    invoke-virtual {v2, v3, v4}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez v1, :cond_1

    iget-object v0, v0, Lly4;->a:Lrx4;

    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    iget-object v0, v0, Lex4;->B:Lax4;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lax4;->b(Landroid/os/Bundle;)V

    goto/16 :goto_3

    :cond_1
    iget-object v2, v0, Lly4;->a:Lrx4;

    invoke-virtual {v2}, Lrx4;->q()Lex4;

    move-result-object v2

    iget-object v2, v2, Lex4;->B:Lax4;

    invoke-virtual {v2}, Lax4;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    instance-of v6, v5, Ljava/lang/String;

    if-nez v6, :cond_4

    instance-of v6, v5, Ljava/lang/Long;

    if-nez v6, :cond_4

    instance-of v6, v5, Ljava/lang/Double;

    if-nez v6, :cond_4

    iget-object v6, v0, Lly4;->a:Lrx4;

    invoke-virtual {v6}, Lrx4;->t()Lp25;

    move-result-object v6

    invoke-virtual {v6, v5}, Lp25;->o0(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lly4;->a:Lrx4;

    invoke-virtual {v6}, Lrx4;->t()Lp25;

    move-result-object v7

    iget-object v8, v0, Lsz4;->p:Lo25;

    const/4 v9, 0x0

    const/16 v10, 0x1b

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lp25;->A(Lo25;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_3
    iget-object v6, v0, Lly4;->a:Lrx4;

    invoke-virtual {v6}, Lrx4;->a()Lqw4;

    move-result-object v6

    .line 4
    iget-object v6, v6, Lqw4;->k:Low4;

    const-string v7, "Invalid default event parameter type. Name, value"

    .line 5
    invoke-virtual {v6, v7, v4, v5}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {v4}, Lp25;->F(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v5, v0, Lly4;->a:Lrx4;

    invoke-virtual {v5}, Lrx4;->a()Lqw4;

    move-result-object v5

    .line 6
    iget-object v5, v5, Lqw4;->k:Low4;

    const-string v6, "Invalid default event parameter name. Name"

    .line 7
    invoke-virtual {v5, v6, v4}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-nez v5, :cond_6

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v6, v0, Lly4;->a:Lrx4;

    invoke-virtual {v6}, Lrx4;->t()Lp25;

    move-result-object v6

    iget-object v7, v0, Lly4;->a:Lrx4;

    .line 8
    iget-object v7, v7, Lrx4;->g:Lcs4;

    const/16 v7, 0x64

    const-string v8, "param"

    .line 9
    invoke-virtual {v6, v8, v4, v7, v5}, Lp25;->p0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lly4;->a:Lrx4;

    invoke-virtual {v6}, Lrx4;->t()Lp25;

    move-result-object v6

    invoke-virtual {v6, v2, v4, v5}, Lp25;->z(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, v0, Lly4;->a:Lrx4;

    invoke-virtual {v1}, Lrx4;->t()Lp25;

    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 10
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 11
    invoke-virtual {v1}, Lcs4;->h()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    const/4 v4, 0x0

    if-gt v3, v1, :cond_8

    goto :goto_2

    :cond_8
    new-instance v3, Ljava/util/TreeSet;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :cond_9
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    if-le v5, v1, :cond_9

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    iget-object v1, v0, Lly4;->a:Lrx4;

    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v5

    iget-object v6, v0, Lsz4;->p:Lo25;

    const/4 v7, 0x0

    const/16 v8, 0x1a

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lp25;->A(Lo25;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, v0, Lly4;->a:Lrx4;

    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 12
    iget-object v1, v1, Lqw4;->k:Low4;

    const-string v3, "Too many default event parameters set. Discarding beyond event parameter limit"

    .line 13
    invoke-virtual {v1, v3}, Low4;->a(Ljava/lang/String;)V

    :goto_2
    iget-object v1, v0, Lly4;->a:Lrx4;

    invoke-virtual {v1}, Lrx4;->q()Lex4;

    move-result-object v1

    iget-object v1, v1, Lex4;->B:Lax4;

    invoke-virtual {v1, v2}, Lax4;->b(Landroid/os/Bundle;)V

    iget-object v0, v0, Lly4;->a:Lrx4;

    invoke-virtual {v0}, Lrx4;->z()Lh15;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lyv4;->d()V

    .line 15
    invoke-virtual {v0}, Lww4;->f()V

    .line 16
    invoke-virtual {v0, v4}, Lh15;->v(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v1

    new-instance v3, Lp05;

    .line 17
    invoke-direct {v3, v0, v1, v2}, Lp05;-><init>(Lh15;Lcom/google/android/gms/measurement/internal/zzp;Landroid/os/Bundle;)V

    invoke-virtual {v0, v3}, Lh15;->t(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method
