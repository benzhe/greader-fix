.class public final synthetic Lbi6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfj4$a;


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lbi6;->a:J

    return-void
.end method


# virtual methods
.method public final a()Lgp4$a;
    .locals 7

    .line 1
    iget-wide v0, p0, Lbi6;->a:J

    .line 2
    invoke-static {}, Lgp4;->w()Lgp4$a;

    move-result-object v2

    .line 3
    invoke-static {}, Lxp4;->p()Lxp4$a;

    move-result-object v3

    .line 4
    invoke-static {}, Lip4;->p()Lip4$a;

    move-result-object v4

    .line 5
    iget-boolean v5, v4, Lpk4$b;->g:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {v4}, Lpk4$b;->f()V

    .line 7
    iput-boolean v6, v4, Lpk4$b;->g:Z

    .line 8
    :cond_0
    iget-object v5, v4, Lpk4$b;->f:Lpk4;

    check-cast v5, Lip4;

    invoke-static {v5, v0, v1}, Lip4;->q(Lip4;J)V

    .line 9
    sget-object v0, Lnh4;->G:Lnh4;

    .line 10
    iget-boolean v1, v4, Lpk4$b;->g:Z

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v4}, Lpk4$b;->f()V

    .line 12
    iput-boolean v6, v4, Lpk4$b;->g:Z

    .line 13
    :cond_1
    iget-object v1, v4, Lpk4$b;->f:Lpk4;

    check-cast v1, Lip4;

    invoke-static {v1, v0}, Lip4;->s(Lip4;Lnh4;)V

    .line 14
    invoke-virtual {v3, v4}, Lxp4$a;->k(Lip4$a;)Lxp4$a;

    .line 15
    invoke-virtual {v2, v3}, Lgp4$a;->k(Lxp4$a;)Lgp4$a;

    return-object v2
.end method
