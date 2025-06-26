.class public final synthetic Lh46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# instance fields
.field public final e:Lk56;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lk56;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh46;->e:Lk56;

    iput-object p2, p0, Lh46;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lh46;->e:Lk56;

    iget-object v1, p0, Lh46;->f:Ljava/lang/String;

    check-cast p1, Lkg6;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lkg6;->F()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ON_FOREGROUND"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Lk56;->h:Lk66;

    iget-object v0, v0, Lk56;->i:Lo96;

    .line 5
    invoke-virtual {v1}, Lk66;->a()Lrb7;

    move-result-object v2

    .line 6
    invoke-static {}, La66;->D()La66;

    move-result-object v3

    invoke-static {v3}, Lrb7;->i(Ljava/lang/Object;)Lrb7;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrb7;->o(Lvb7;)Lrb7;

    move-result-object v2

    .line 7
    new-instance v3, Lc66;

    invoke-direct {v3, v1, v0}, Lc66;-><init>(Lk66;Lo96;)V

    .line 8
    invoke-virtual {v2, v3}, Lrb7;->j(Luc7;)Lrb7;

    move-result-object v2

    .line 9
    new-instance v3, Ld66;

    invoke-direct {v3, v1, v0}, Ld66;-><init>(Lk66;Lo96;)V

    .line 10
    invoke-virtual {v2, v3}, Lrb7;->f(Lvc7;)Lrb7;

    move-result-object v0

    .line 11
    new-instance v1, Ljg7;

    invoke-direct {v1, v0}, Ljg7;-><init>(Lvb7;)V

    .line 12
    sget-object v0, Ld56;->e:Ld56;

    .line 13
    new-instance v2, Lgh7;

    invoke-direct {v2, v1, v0}, Lgh7;-><init>(Lec7;Ltc7;)V

    .line 14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lac7;->d(Ljava/lang/Object;)Lac7;

    move-result-object v0

    .line 15
    new-instance v1, Ldd7$g;

    invoke-direct {v1, v0}, Ldd7$g;-><init>(Ljava/lang/Object;)V

    .line 16
    new-instance v0, Lqh7;

    invoke-direct {v0, v2, v1}, Lqh7;-><init>(Lec7;Luc7;)V

    .line 17
    sget-object v1, Le56;->e:Le56;

    .line 18
    new-instance v2, Ldg7;

    invoke-direct {v2, v0, v1}, Ldg7;-><init>(Lec7;Lvc7;)V

    .line 19
    new-instance v0, Lf56;

    invoke-direct {v0, p1}, Lf56;-><init>(Lkg6;)V

    .line 20
    invoke-virtual {v2, v0}, Lrb7;->j(Luc7;)Lrb7;

    move-result-object p1

    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lkg7;

    invoke-direct {v0, p1}, Lkg7;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
