.class public final synthetic Lp36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# instance fields
.field public final e:Ly36;

.field public final f:Lmg6;


# direct methods
.method public constructor <init>(Ly36;Lmg6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp36;->e:Ly36;

    iput-object p2, p0, Lp36;->f:Lmg6;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lp36;->e:Ly36;

    iget-object v1, p0, Lp36;->f:Lmg6;

    check-cast p1, Lng6;

    .line 1
    sget-object v2, Ly36;->c:Lng6;

    .line 2
    invoke-static {p1}, Lng6;->G(Lng6;)Lng6$b;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lgj6$a;->o()V

    .line 4
    iget-object v2, p1, Lgj6$a;->f:Lgj6;

    check-cast v2, Lng6;

    invoke-static {v2, v1}, Lng6;->C(Lng6;Lmg6;)V

    .line 5
    invoke-virtual {p1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lng6;

    .line 6
    iget-object v1, v0, Ly36;->a:Lv56;

    .line 7
    invoke-virtual {v1, p1}, Lv56;->b(Lii6;)Lhb7;

    move-result-object v1

    .line 8
    new-instance v2, Lx36;

    invoke-direct {v2, v0, p1}, Lx36;-><init>(Ly36;Lng6;)V

    .line 9
    invoke-virtual {v1, v2}, Lhb7;->d(Lqc7;)Lhb7;

    move-result-object p1

    return-object p1
.end method
