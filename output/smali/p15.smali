.class public final Lp15;
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

    iput-object p1, p0, Lp15;->f:Lx15;

    iput-wide p2, p0, Lp15;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lp15;->f:Lx15;

    iget-wide v5, p0, Lp15;->e:J

    .line 1
    invoke-virtual {v0}, Lyv4;->d()V

    invoke-virtual {v0}, Lx15;->i()V

    iget-object v1, v0, Lly4;->a:Lrx4;

    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lqw4;->n:Low4;

    .line 3
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Activity paused, time"

    invoke-virtual {v1, v3, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v0, Lx15;->f:Ls15;

    .line 4
    new-instance v8, Lr15;

    iget-object v1, v7, Ls15;->b:Lx15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 5
    iget-object v1, v1, Lrx4;->n:Lb20;

    .line 6
    invoke-interface {v1}, Lb20;->a()J

    move-result-wide v3

    move-object v1, v8

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lr15;-><init>(Ls15;JJ)V

    iput-object v8, v7, Ls15;->a:Lr15;

    iget-object v1, v7, Ls15;->b:Lx15;

    .line 7
    iget-object v1, v1, Lx15;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    .line 8
    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 10
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 11
    invoke-virtual {v1}, Lcs4;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lx15;->e:Lu15;

    .line 12
    iget-object v1, v1, Lu15;->c:Lis4;

    .line 13
    invoke-virtual {v1}, Lis4;->c()V

    .line 14
    :cond_0
    iget-object v0, v0, Lx15;->d:Lw15;

    iget-object v1, v0, Lw15;->a:Lx15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 15
    iget-object v1, v1, Lrx4;->g:Lcs4;

    const/4 v2, 0x0

    .line 16
    sget-object v3, Lew4;->u0:Ldw4;

    invoke-virtual {v1, v2, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lw15;->a:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    iget-object v0, v0, Lex4;->v:Lzw4;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzw4;->b(Z)V

    :cond_1
    return-void
.end method
