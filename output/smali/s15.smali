.class public final Ls15;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr15;

.field public final synthetic b:Lx15;


# direct methods
.method public constructor <init>(Lx15;)V
    .locals 0

    iput-object p1, p0, Ls15;->b:Lx15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Ls15;->b:Lx15;

    .line 1
    invoke-virtual {v0}, Lyv4;->d()V

    iget-object v0, p0, Ls15;->a:Lr15;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ls15;->b:Lx15;

    .line 2
    iget-object v1, v1, Lx15;->c:Landroid/os/Handler;

    .line 3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Ls15;->b:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 4
    iget-object v0, v0, Lrx4;->g:Lcs4;

    const/4 v1, 0x0

    .line 5
    sget-object v2, Lew4;->u0:Ldw4;

    invoke-virtual {v0, v1, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls15;->b:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lex4;->v:Lzw4;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzw4;->b(Z)V

    :cond_1
    return-void
.end method
