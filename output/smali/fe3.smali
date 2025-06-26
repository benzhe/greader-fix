.class public final Lfe3;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lde3;


# direct methods
.method public constructor <init>(Lde3;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfe3;->a:Lde3;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lfe3;->a:Lde3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 5
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lyd3;

    .line 6
    iget-object v0, v0, Lde3;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae3;

    .line 7
    invoke-interface {v1, p1}, Lae3;->g(Lyd3;)V

    goto :goto_0

    .line 8
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lpe3;

    .line 9
    iget-object v1, v0, Lde3;->s:Lpe3;

    invoke-virtual {v1, p1}, Lpe3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    iput-object p1, v0, Lde3;->s:Lpe3;

    .line 11
    iget-object v0, v0, Lde3;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae3;

    .line 12
    invoke-interface {v1, p1}, Lae3;->a(Lpe3;)V

    goto :goto_1

    .line 13
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lie3;

    .line 14
    iget v1, v0, Lde3;->l:I

    iget v2, p1, Lie3;->d:I

    sub-int/2addr v1, v2

    iput v1, v0, Lde3;->l:I

    .line 15
    iget v1, v0, Lde3;->m:I

    if-nez v1, :cond_1

    .line 16
    iget-object v1, p1, Lie3;->a:Lse3;

    iput-object v1, v0, Lde3;->o:Lse3;

    .line 17
    iget-object v1, p1, Lie3;->b:Ljava/lang/Object;

    iput-object v1, v0, Lde3;->p:Ljava/lang/Object;

    .line 18
    iget-object p1, p1, Lie3;->c:Lge3;

    iput-object p1, v0, Lde3;->t:Lge3;

    .line 19
    iget-object p1, v0, Lde3;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae3;

    .line 20
    iget-object v2, v0, Lde3;->o:Lse3;

    iget-object v3, v0, Lde3;->p:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lae3;->b(Lse3;Ljava/lang/Object;)V

    goto :goto_2

    .line 21
    :pswitch_3
    iget v1, v0, Lde3;->l:I

    if-nez v1, :cond_1

    .line 22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lge3;

    iput-object p1, v0, Lde3;->t:Lge3;

    .line 23
    iget-object p1, v0, Lde3;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae3;

    .line 24
    invoke-interface {v0}, Lae3;->j()V

    goto :goto_3

    .line 25
    :pswitch_4
    iget v1, v0, Lde3;->l:I

    sub-int/2addr v1, v2

    iput v1, v0, Lde3;->l:I

    if-nez v1, :cond_1

    .line 26
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lge3;

    iput-object v1, v0, Lde3;->t:Lge3;

    .line 27
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    .line 28
    iget-object p1, v0, Lde3;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae3;

    .line 29
    invoke-interface {v0}, Lae3;->j()V

    goto :goto_4

    .line 30
    :pswitch_5
    iget v1, v0, Lde3;->m:I

    if-nez v1, :cond_1

    .line 31
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lbk3;

    .line 32
    iput-boolean v2, v0, Lde3;->i:Z

    .line 33
    iget-object v1, p1, Lbk3;->a:Lnj3;

    iput-object v1, v0, Lde3;->q:Lnj3;

    .line 34
    iget-object v1, p1, Lbk3;->b:Lak3;

    iput-object v1, v0, Lde3;->r:Lak3;

    .line 35
    iget-object v1, v0, Lde3;->b:Lzj3;

    iget-object p1, p1, Lbk3;->c:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lzj3;->b(Ljava/lang/Object;)V

    .line 36
    iget-object p1, v0, Lde3;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae3;

    .line 37
    iget-object v2, v0, Lde3;->q:Lnj3;

    iget-object v3, v0, Lde3;->r:Lak3;

    invoke-interface {v1, v2, v3}, Lae3;->d(Lnj3;Lak3;)V

    goto :goto_5

    .line 38
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    goto :goto_6

    :cond_0
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, v0, Lde3;->n:Z

    .line 39
    iget-object p1, v0, Lde3;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae3;

    .line 40
    iget-boolean v2, v0, Lde3;->n:Z

    invoke-interface {v1, v2}, Lae3;->i(Z)V

    goto :goto_7

    .line 41
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, v0, Lde3;->k:I

    .line 42
    iget-object p1, v0, Lde3;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae3;

    .line 43
    iget-boolean v2, v0, Lde3;->j:Z

    iget v3, v0, Lde3;->k:I

    invoke-interface {v1, v2, v3}, Lae3;->c(ZI)V

    goto :goto_8

    .line 44
    :pswitch_8
    iget p1, v0, Lde3;->m:I

    sub-int/2addr p1, v2

    iput p1, v0, Lde3;->m:I

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
