.class public final synthetic Lh66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# instance fields
.field public final e:La66;

.field public final f:Lo96;


# direct methods
.method public constructor <init>(La66;Lo96;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh66;->e:La66;

    iput-object p2, p0, Lh66;->f:Lo96;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lh66;->e:La66;

    iget-object v1, p0, Lh66;->f:Lo96;

    check-cast p1, Lz56;

    .line 1
    sget-object v2, Lk66;->d:La66;

    .line 2
    invoke-static {p1}, Lz56;->J(Lz56;)Lz56$a;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lgj6$a;->o()V

    .line 4
    iget-object v3, v2, Lgj6$a;->f:Lgj6;

    check-cast v3, Lz56;

    invoke-static {v3}, Lz56;->D(Lz56;)V

    .line 5
    invoke-virtual {p1}, Lz56;->H()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 6
    invoke-virtual {v2}, Lgj6$a;->o()V

    .line 7
    iget-object p1, v2, Lgj6$a;->f:Lgj6;

    check-cast p1, Lz56;

    invoke-static {p1, v3, v4}, Lz56;->C(Lz56;J)V

    .line 8
    invoke-virtual {v2}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lz56;

    .line 9
    invoke-static {v0}, La66;->F(La66;)La66$a;

    move-result-object v0

    .line 10
    invoke-virtual {v1}, Lo96;->b()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 13
    iget-object v2, v0, Lgj6$a;->f:Lgj6;

    check-cast v2, La66;

    invoke-static {v2}, La66;->C(La66;)Ljava/util/Map;

    move-result-object v2

    check-cast v2, Luj6;

    invoke-virtual {v2, v1, p1}, Luj6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v0}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, La66;

    return-object p1
.end method
