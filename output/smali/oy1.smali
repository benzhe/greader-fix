.class public final synthetic Loy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# instance fields
.field public final a:Lkq3;


# direct methods
.method public constructor <init>(Lkq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loy1;->a:Lkq3;

    return-void
.end method


# virtual methods
.method public final a(Lyp3$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Loy1;->a:Lkq3;

    .line 2
    iget-object v1, p1, Ls63$b;->f:Ls63;

    check-cast v1, Lyp3;

    invoke-virtual {v1}, Lyp3;->H()Lwp3;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ls63;->v()Ls63$b;

    move-result-object v1

    .line 4
    check-cast v1, Lwp3$a;

    .line 5
    iget-boolean v2, v1, Ls63$b;->g:Z

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Ls63$b;->o()V

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, v1, Ls63$b;->g:Z

    .line 8
    :cond_0
    iget-object v2, v1, Ls63$b;->f:Ls63;

    check-cast v2, Lwp3;

    invoke-static {v2, v0}, Lwp3;->x(Lwp3;Lkq3;)V

    .line 9
    invoke-virtual {p1, v1}, Lyp3$a;->r(Lwp3$a;)Lyp3$a;

    return-void
.end method
