.class public final Lo15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:J

.field public final synthetic f:Lx15;


# direct methods
.method public constructor <init>(Lx15;J)V
    .locals 0

    iput-object p1, p0, Lo15;->f:Lx15;

    iput-wide p2, p0, Lo15;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lo15;->f:Lx15;

    iget-wide v1, p0, Lo15;->e:J

    .line 1
    invoke-virtual {v0}, Lyv4;->d()V

    invoke-virtual {v0}, Lx15;->i()V

    iget-object v3, v0, Lly4;->a:Lrx4;

    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 2
    iget-object v3, v3, Lqw4;->n:Low4;

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Activity resumed, time"

    invoke-virtual {v3, v5, v4}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v0, Lly4;->a:Lrx4;

    .line 4
    iget-object v3, v3, Lrx4;->g:Lcs4;

    .line 5
    sget-object v4, Lew4;->u0:Ldw4;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lly4;->a:Lrx4;

    .line 6
    iget-object v3, v3, Lrx4;->g:Lcs4;

    .line 7
    invoke-virtual {v3}, Lcs4;->x()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lly4;->a:Lrx4;

    invoke-virtual {v3}, Lrx4;->q()Lex4;

    move-result-object v3

    iget-object v3, v3, Lex4;->v:Lzw4;

    invoke-virtual {v3}, Lzw4;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, v0, Lx15;->e:Lu15;

    .line 8
    iget-object v6, v3, Lu15;->d:Lx15;

    .line 9
    invoke-virtual {v6}, Lyv4;->d()V

    iget-object v6, v3, Lu15;->c:Lis4;

    .line 10
    invoke-virtual {v6}, Lis4;->c()V

    iput-wide v1, v3, Lu15;->a:J

    iput-wide v1, v3, Lu15;->b:J

    .line 11
    :cond_1
    iget-object v1, v0, Lx15;->f:Ls15;

    invoke-virtual {v1}, Ls15;->a()V

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lx15;->f:Ls15;

    invoke-virtual {v3}, Ls15;->a()V

    iget-object v3, v0, Lly4;->a:Lrx4;

    .line 12
    iget-object v3, v3, Lrx4;->g:Lcs4;

    .line 13
    invoke-virtual {v3}, Lcs4;->x()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lx15;->e:Lu15;

    .line 14
    iget-object v6, v3, Lu15;->d:Lx15;

    .line 15
    invoke-virtual {v6}, Lyv4;->d()V

    iget-object v6, v3, Lu15;->c:Lis4;

    .line 16
    invoke-virtual {v6}, Lis4;->c()V

    iput-wide v1, v3, Lu15;->a:J

    iput-wide v1, v3, Lu15;->b:J

    .line 17
    :cond_3
    :goto_0
    iget-object v0, v0, Lx15;->d:Lw15;

    iget-object v1, v0, Lw15;->a:Lx15;

    invoke-virtual {v1}, Lyv4;->d()V

    iget-object v1, v0, Lw15;->a:Lx15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    invoke-virtual {v1}, Lrx4;->g()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lw15;->a:Lx15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 18
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 19
    invoke-virtual {v1, v5, v4}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    iget-object v1, v0, Lw15;->a:Lx15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    invoke-virtual {v1}, Lrx4;->q()Lex4;

    move-result-object v1

    iget-object v1, v1, Lex4;->v:Lzw4;

    invoke-virtual {v1, v2}, Lzw4;->b(Z)V

    :cond_5
    iget-object v1, v0, Lw15;->a:Lx15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 20
    iget-object v1, v1, Lrx4;->n:Lb20;

    .line 21
    invoke-interface {v1}, Lb20;->a()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Lw15;->b(JZ)V

    :goto_1
    return-void
.end method
