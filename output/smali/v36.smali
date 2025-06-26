.class public final synthetic Lv36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# instance fields
.field public final e:Ly36;

.field public final f:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Ly36;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv36;->e:Ly36;

    iput-object p2, p0, Lv36;->f:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lv36;->e:Ly36;

    iget-object v1, p0, Lv36;->f:Ljava/util/HashSet;

    check-cast p1, Lng6;

    .line 1
    sget-object v2, Ly36;->c:Lng6;

    const-string v2, "Existing impressions: "

    .line 2
    invoke-static {v2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgj6;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ln56;->t1(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lng6;->F()Lng6$b;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lng6;->D()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmg6;

    .line 5
    invoke-virtual {v3}, Lmg6;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-virtual {v2}, Lgj6$a;->o()V

    .line 7
    iget-object v4, v2, Lgj6$a;->f:Lgj6;

    check-cast v4, Lng6;

    invoke-static {v4, v3}, Lng6;->C(Lng6;Lmg6;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v2}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lng6;

    const-string v1, "New cleared impression list: "

    .line 9
    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgj6;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ln56;->t1(Ljava/lang/String;)V

    .line 10
    iget-object v1, v0, Ly36;->a:Lv56;

    .line 11
    invoke-virtual {v1, p1}, Lv56;->b(Lii6;)Lhb7;

    move-result-object v1

    .line 12
    new-instance v2, Lw36;

    invoke-direct {v2, v0, p1}, Lw36;-><init>(Ly36;Lng6;)V

    .line 13
    invoke-virtual {v1, v2}, Lhb7;->d(Lqc7;)Lhb7;

    move-result-object p1

    return-object p1
.end method
