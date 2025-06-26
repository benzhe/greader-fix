.class public final synthetic Luq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# instance fields
.field public final a:Llp3$a;

.field public final b:Ljava/lang/String;

.field public final c:Lkq3;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Llp3$a;Ljava/lang/String;Lkq3;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luq1;->a:Llp3$a;

    iput-object p2, p0, Luq1;->b:Ljava/lang/String;

    iput-object p3, p0, Luq1;->c:Lkq3;

    iput-object p4, p0, Luq1;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lyp3$a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Luq1;->a:Llp3$a;

    iget-object v1, p0, Luq1;->b:Ljava/lang/String;

    iget-object v2, p0, Luq1;->c:Lkq3;

    iget-object v3, p0, Luq1;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lyp3$a;->s()Llp3;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Ls63;->v()Ls63$b;

    move-result-object v4

    .line 4
    check-cast v4, Llp3$b;

    .line 5
    iget-boolean v5, v4, Ls63$b;->g:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {v4}, Ls63$b;->o()V

    .line 7
    iput-boolean v6, v4, Ls63$b;->g:Z

    .line 8
    :cond_0
    iget-object v5, v4, Ls63$b;->f:Ls63;

    check-cast v5, Llp3;

    invoke-static {v5, v0}, Llp3;->x(Llp3;Llp3$a;)V

    .line 9
    invoke-virtual {p1, v4}, Lyp3$a;->p(Llp3$b;)Lyp3$a;

    .line 10
    iget-object v0, p1, Ls63$b;->f:Ls63;

    check-cast v0, Lyp3;

    invoke-virtual {v0}, Lyp3;->H()Lwp3;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ls63;->v()Ls63$b;

    move-result-object v0

    .line 12
    check-cast v0, Lwp3$a;

    .line 13
    iget-boolean v4, v0, Ls63$b;->g:Z

    if-eqz v4, :cond_1

    .line 14
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 15
    iput-boolean v6, v0, Ls63$b;->g:Z

    .line 16
    :cond_1
    iget-object v4, v0, Ls63$b;->f:Ls63;

    check-cast v4, Lwp3;

    invoke-static {v4, v1}, Lwp3;->y(Lwp3;Ljava/lang/String;)V

    .line 17
    iget-boolean v1, v0, Ls63$b;->g:Z

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 19
    iput-boolean v6, v0, Ls63$b;->g:Z

    .line 20
    :cond_2
    iget-object v1, v0, Ls63$b;->f:Ls63;

    check-cast v1, Lwp3;

    invoke-static {v1, v2}, Lwp3;->x(Lwp3;Lkq3;)V

    .line 21
    invoke-virtual {p1, v0}, Lyp3$a;->r(Lwp3$a;)Lyp3$a;

    .line 22
    iget-boolean v0, p1, Ls63$b;->g:Z

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {p1}, Ls63$b;->o()V

    .line 24
    iput-boolean v6, p1, Ls63$b;->g:Z

    .line 25
    :cond_3
    iget-object p1, p1, Ls63$b;->f:Ls63;

    check-cast p1, Lyp3;

    invoke-static {p1, v3}, Lyp3;->F(Lyp3;Ljava/lang/String;)V

    return-void
.end method
