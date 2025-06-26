.class public Lk66;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:La66;


# instance fields
.field public final a:Lv56;

.field public final b:Lz86;

.field public c:Lrb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrb7<",
            "La66;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, La66;->D()La66;

    move-result-object v0

    sput-object v0, Lk66;->d:La66;

    return-void
.end method

.method public constructor <init>(Lv56;Lz86;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lbg7;->e:Lbg7;

    iput-object v0, p0, Lk66;->c:Lrb7;

    .line 3
    iput-object p1, p0, Lk66;->a:Lv56;

    .line 4
    iput-object p2, p0, Lk66;->b:Lz86;

    return-void
.end method


# virtual methods
.method public final a()Lrb7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrb7<",
            "La66;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk66;->c:Lrb7;

    iget-object v1, p0, Lk66;->a:Lv56;

    .line 2
    invoke-static {}, La66;->G()Lik6;

    move-result-object v2

    invoke-virtual {v1, v2}, Lv56;->a(Lik6;)Lrb7;

    move-result-object v1

    .line 3
    new-instance v2, Le66;

    invoke-direct {v2, p0}, Le66;-><init>(Lk66;)V

    .line 4
    invoke-virtual {v1, v2}, Lrb7;->e(Ltc7;)Lrb7;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lrb7;->o(Lvb7;)Lrb7;

    move-result-object v0

    .line 6
    new-instance v1, Lf66;

    invoke-direct {v1, p0}, Lf66;-><init>(Lk66;)V

    .line 7
    invoke-virtual {v0, v1}, Lrb7;->d(Ltc7;)Lrb7;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lz56;Lo96;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lk66;->b:Lz86;

    invoke-interface {v0}, Lz86;->a()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lz56;->G()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2}, Lo96;->c()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c()Lz56;
    .locals 4

    .line 1
    invoke-static {}, Lz56;->I()Lz56$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 3
    iget-object v1, v0, Lgj6$a;->f:Lgj6;

    check-cast v1, Lz56;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lz56;->C(Lz56;J)V

    .line 4
    iget-object v1, p0, Lk66;->b:Lz86;

    invoke-interface {v1}, Lz86;->a()J

    move-result-wide v1

    .line 5
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 6
    iget-object v3, v0, Lgj6$a;->f:Lgj6;

    check-cast v3, Lz56;

    invoke-static {v3, v1, v2}, Lz56;->E(Lz56;J)V

    .line 7
    invoke-virtual {v0}, Lgj6$a;->l()Lgj6;

    move-result-object v0

    check-cast v0, Lz56;

    return-object v0
.end method
