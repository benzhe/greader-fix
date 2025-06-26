.class public final synthetic Ljj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lkj1;


# direct methods
.method public constructor <init>(Lkj1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj1;->e:Lkj1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Ljj1;->e:Lkj1;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v1, v0, Lkj1;->i:Lwj1;

    invoke-virtual {v1}, Lwj1;->k()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Google"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    const/4 v4, 0x6

    if-eq v1, v4, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    :try_start_1
    const-string v0, "Wrong native template id!"

    .line 3
    invoke-static {v0}, Lis0;->zzex(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, Lkj1;->m:Ldk1;

    .line 5
    iget-object v1, v1, Ldk1;->e:Led0;

    if-eqz v1, :cond_6

    .line 6
    iget-object v0, v0, Lkj1;->q:Lxa3;

    .line 7
    invoke-interface {v0}, Lxa3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzc0;

    invoke-interface {v1, v0}, Led0;->P1(Lzc0;)V

    goto/16 :goto_0

    .line 8
    :cond_1
    iget-object v1, v0, Lkj1;->m:Ldk1;

    .line 9
    iget-object v1, v1, Ldk1;->c:Lo90;

    if-eqz v1, :cond_6

    .line 10
    invoke-virtual {v0, v2, v3}, Lkj1;->n(Ljava/lang/String;Z)V

    .line 11
    iget-object v1, v0, Lkj1;->m:Ldk1;

    .line 12
    iget-object v1, v1, Ldk1;->c:Lo90;

    .line 13
    iget-object v0, v0, Lkj1;->p:Lxa3;

    .line 14
    invoke-interface {v0}, Lxa3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv90;

    invoke-interface {v1, v0}, Lo90;->V3(Lv90;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v1, v0, Lkj1;->m:Ldk1;

    iget-object v4, v0, Lkj1;->i:Lwj1;

    .line 16
    invoke-virtual {v4}, Lwj1;->c()Ljava/lang/String;

    move-result-object v4

    .line 17
    iget-object v1, v1, Ldk1;->f:Lm4;

    const/4 v5, 0x0

    .line 18
    invoke-virtual {v1, v4, v5}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 19
    check-cast v1, Lg90;

    if-eqz v1, :cond_6

    .line 20
    iget-object v1, v0, Lkj1;->i:Lwj1;

    invoke-virtual {v1}, Lwj1;->o()Lxw0;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 21
    invoke-virtual {v0, v2, v3}, Lkj1;->n(Ljava/lang/String;Z)V

    .line 22
    :cond_3
    iget-object v1, v0, Lkj1;->m:Ldk1;

    iget-object v2, v0, Lkj1;->i:Lwj1;

    .line 23
    invoke-virtual {v2}, Lwj1;->c()Ljava/lang/String;

    move-result-object v2

    .line 24
    iget-object v1, v1, Ldk1;->f:Lm4;

    .line 25
    invoke-virtual {v1, v2, v5}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    check-cast v1, Lg90;

    .line 27
    iget-object v0, v0, Lkj1;->r:Lxa3;

    .line 28
    invoke-interface {v0}, Lxa3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq80;

    invoke-interface {v1, v0}, Lg90;->b5(Lq80;)V

    goto :goto_0

    .line 29
    :cond_4
    iget-object v1, v0, Lkj1;->m:Ldk1;

    .line 30
    iget-object v1, v1, Ldk1;->b:Lu80;

    if-eqz v1, :cond_6

    .line 31
    invoke-virtual {v0, v2, v3}, Lkj1;->n(Ljava/lang/String;Z)V

    .line 32
    iget-object v1, v0, Lkj1;->m:Ldk1;

    .line 33
    iget-object v1, v1, Ldk1;->b:Lu80;

    .line 34
    iget-object v0, v0, Lkj1;->o:Lxa3;

    .line 35
    invoke-interface {v0}, Lxa3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li80;

    invoke-interface {v1, v0}, Lu80;->P3(Li80;)V

    goto :goto_0

    .line 36
    :cond_5
    iget-object v1, v0, Lkj1;->m:Ldk1;

    .line 37
    iget-object v1, v1, Ldk1;->a:Lz80;

    if-eqz v1, :cond_6

    .line 38
    invoke-virtual {v0, v2, v3}, Lkj1;->n(Ljava/lang/String;Z)V

    .line 39
    iget-object v1, v0, Lkj1;->m:Ldk1;

    .line 40
    iget-object v1, v1, Ldk1;->a:Lz80;

    .line 41
    iget-object v0, v0, Lkj1;->n:Lxa3;

    .line 42
    invoke-interface {v0}, Lxa3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm80;

    invoke-interface {v1, v0}, Lz80;->T1(Lm80;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RemoteException when notifyAdLoad is called"

    .line 43
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    return-void
.end method
