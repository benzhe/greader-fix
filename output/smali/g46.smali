.class public final synthetic Lg46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# instance fields
.field public final e:Lk56;


# direct methods
.method public constructor <init>(Lk56;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg46;->e:Lk56;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg46;->e:Lk56;

    check-cast p1, Lkg6;

    .line 1
    invoke-virtual {p1}, Lkg6;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Lkg7;

    invoke-direct {v0, p1}, Lkg7;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, v0, Lk56;->g:Ly36;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lkg6;->G()Lkg6$c;

    move-result-object v1

    sget-object v2, Lkg6$c;->e:Lkg6$c;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lkg6;->J()Llg6;

    move-result-object v1

    invoke-virtual {v1}, Llg6;->D()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lkg6;->E()Ljg6;

    move-result-object v1

    invoke-virtual {v1}, Ljg6;->D()Ljava/lang/String;

    move-result-object v1

    .line 8
    :goto_0
    invoke-virtual {v0}, Ly36;->a()Lrb7;

    move-result-object v0

    sget-object v2, Ls36;->e:Ls36;

    .line 9
    invoke-virtual {v0, v2}, Lrb7;->j(Luc7;)Lrb7;

    move-result-object v0

    sget-object v2, Lt36;->e:Lt36;

    .line 10
    new-instance v3, Lug7;

    invoke-direct {v3, v0, v2}, Lug7;-><init>(Lvb7;Luc7;)V

    .line 11
    sget-object v0, Lu36;->e:Lu36;

    .line 12
    new-instance v2, Lbh7;

    invoke-direct {v2, v3, v0}, Lbh7;-><init>(Lxb7;Luc7;)V

    const-string v0, "element is null"

    .line 13
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    new-instance v0, Ldd7$e;

    invoke-direct {v0, v1}, Ldd7$e;-><init>(Ljava/lang/Object;)V

    .line 15
    new-instance v1, Lwg7;

    invoke-direct {v1, v2, v0}, Lwg7;-><init>(Lxb7;Lvc7;)V

    .line 16
    sget-object v0, Lw46;->e:Lw46;

    .line 17
    new-instance v2, Lfh7;

    invoke-direct {v2, v1, v0}, Lfh7;-><init>(Lec7;Ltc7;)V

    .line 18
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lac7;->d(Ljava/lang/Object;)Lac7;

    move-result-object v0

    .line 19
    new-instance v1, Ldd7$g;

    invoke-direct {v1, v0}, Ldd7$g;-><init>(Ljava/lang/Object;)V

    .line 20
    new-instance v0, Lqh7;

    invoke-direct {v0, v2, v1}, Lqh7;-><init>(Lec7;Luc7;)V

    .line 21
    new-instance v1, Lx46;

    invoke-direct {v1, p1}, Lx46;-><init>(Lkg6;)V

    .line 22
    new-instance v2, Lgh7;

    invoke-direct {v2, v0, v1}, Lgh7;-><init>(Lec7;Ltc7;)V

    .line 23
    sget-object v0, Ly46;->e:Ly46;

    .line 24
    new-instance v1, Ldg7;

    invoke-direct {v1, v2, v0}, Ldg7;-><init>(Lec7;Lvc7;)V

    .line 25
    new-instance v0, Lz46;

    invoke-direct {v0, p1}, Lz46;-><init>(Lkg6;)V

    .line 26
    invoke-virtual {v1, v0}, Lrb7;->j(Luc7;)Lrb7;

    move-result-object v0

    :goto_1
    return-object v0
.end method
