.class public final synthetic Lb66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# instance fields
.field public final e:Lk66;

.field public final f:Lo96;


# direct methods
.method public constructor <init>(Lk66;Lo96;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb66;->e:Lk66;

    iput-object p2, p0, Lb66;->f:Lo96;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lb66;->e:Lk66;

    iget-object v1, p0, Lb66;->f:Lo96;

    check-cast p1, La66;

    .line 1
    sget-object v2, Lk66;->d:La66;

    .line 2
    invoke-virtual {v1}, Lo96;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lk66;->c()Lz56;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, La66;->E(Ljava/lang/String;Lz56;)Lz56;

    move-result-object v2

    const-string v3, "item is null"

    .line 3
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v3, Lah7;

    invoke-direct {v3, v2}, Lah7;-><init>(Ljava/lang/Object;)V

    .line 5
    new-instance v2, Lg66;

    invoke-direct {v2, v0, v1}, Lg66;-><init>(Lk66;Lo96;)V

    .line 6
    new-instance v4, Lxg7;

    invoke-direct {v4, v3, v2}, Lxg7;-><init>(Lxb7;Lvc7;)V

    .line 7
    invoke-virtual {v0}, Lk66;->c()Lz56;

    move-result-object v2

    .line 8
    new-instance v3, Lah7;

    invoke-direct {v3, v2}, Lah7;-><init>(Ljava/lang/Object;)V

    .line 9
    new-instance v2, Ldh7;

    invoke-direct {v2, v4, v3}, Ldh7;-><init>(Lxb7;Lxb7;)V

    .line 10
    new-instance v3, Lh66;

    invoke-direct {v3, p1, v1}, Lh66;-><init>(La66;Lo96;)V

    .line 11
    new-instance p1, Lbh7;

    invoke-direct {p1, v2, v3}, Lbh7;-><init>(Lxb7;Luc7;)V

    .line 12
    new-instance v1, Li66;

    invoke-direct {v1, v0}, Li66;-><init>(Lk66;)V

    .line 13
    new-instance v0, Lyg7;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lyg7;-><init>(Lxb7;Luc7;Z)V

    invoke-static {v0}, Ln56;->x1(Lhb7;)Lhb7;

    move-result-object p1

    return-object p1
.end method
