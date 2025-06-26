.class public final synthetic Lq15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lr15;


# direct methods
.method public constructor <init>(Lr15;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq15;->e:Lr15;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lq15;->e:Lr15;

    iget-object v1, v0, Lr15;->g:Ls15;

    iget-wide v5, v0, Lr15;->e:J

    iget-wide v2, v0, Lr15;->f:J

    iget-object v0, v1, Ls15;->b:Lx15;

    .line 1
    invoke-virtual {v0}, Lyv4;->d()V

    iget-object v0, v1, Ls15;->b:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lqw4;->m:Low4;

    const-string v4, "Application going to the background"

    .line 4
    invoke-virtual {v0, v4}, Low4;->a(Ljava/lang/String;)V

    iget-object v0, v1, Ls15;->b:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 5
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 6
    sget-object v4, Lew4;->u0:Ldw4;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v4}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v1, Ls15;->b:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 7
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lex4;->v:Lzw4;

    invoke-virtual {v0, v4}, Lzw4;->b(Z)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v8, v1, Ls15;->b:Lx15;

    iget-object v8, v8, Lly4;->a:Lrx4;

    .line 10
    iget-object v8, v8, Lrx4;->g:Lcs4;

    .line 11
    invoke-virtual {v8}, Lcs4;->x()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v1, Ls15;->b:Lx15;

    iget-object v8, v8, Lx15;->e:Lu15;

    .line 12
    iget-object v8, v8, Lu15;->c:Lis4;

    .line 13
    invoke-virtual {v8}, Lis4;->c()V

    .line 14
    iget-object v8, v1, Ls15;->b:Lx15;

    iget-object v8, v8, Lly4;->a:Lrx4;

    .line 15
    iget-object v8, v8, Lrx4;->g:Lcs4;

    .line 16
    sget-object v9, Lew4;->l0:Ldw4;

    .line 17
    invoke-virtual {v8, v7, v9}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    iget-object v7, v1, Ls15;->b:Lx15;

    iget-object v7, v7, Lx15;->e:Lu15;

    iget-wide v9, v7, Lu15;->b:J

    iput-wide v2, v7, Lu15;->b:J

    sub-long v9, v2, v9

    const-string v7, "_et"

    .line 18
    invoke-virtual {v0, v7, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v7, v1, Ls15;->b:Lx15;

    iget-object v7, v7, Lly4;->a:Lrx4;

    .line 19
    invoke-virtual {v7}, Lrx4;->y()Lh05;

    move-result-object v7

    .line 20
    invoke-virtual {v7, v4}, Lh05;->p(Z)La05;

    move-result-object v7

    .line 21
    invoke-static {v7, v0, v4}, Lh05;->r(La05;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-object v7, v1, Ls15;->b:Lx15;

    iget-object v7, v7, Lx15;->e:Lu15;

    .line 22
    invoke-virtual {v7, v8, v4, v2, v3}, Lu15;->a(ZZJ)Z

    :cond_2
    iget-object v1, v1, Ls15;->b:Lx15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 23
    invoke-virtual {v1}, Lrx4;->s()Lsz4;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_ab"

    move-object v7, v0

    .line 24
    invoke-virtual/range {v2 .. v7}, Lsz4;->B(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method
