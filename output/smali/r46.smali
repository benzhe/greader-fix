.class public final synthetic Lr46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltc7;


# instance fields
.field public final e:Lk56;


# direct methods
.method public constructor <init>(Lk56;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr46;->e:Lk56;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lr46;->e:Lk56;

    check-cast p1, Lqg6;

    .line 1
    iget-object v0, v0, Lk56;->g:Ly36;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4
    invoke-virtual {p1}, Lqg6;->F()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkg6;

    .line 5
    invoke-virtual {v2}, Lkg6;->G()Lkg6$c;

    move-result-object v3

    sget-object v4, Lkg6$c;->e:Lkg6$c;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v2}, Lkg6;->J()Llg6;

    move-result-object v2

    invoke-virtual {v2}, Llg6;->D()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v2}, Lkg6;->E()Ljg6;

    move-result-object v2

    invoke-virtual {v2}, Ljg6;->D()Ljava/lang/String;

    move-result-object v2

    .line 8
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "Potential impressions to clear: "

    .line 9
    invoke-static {p1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln56;->t1(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ly36;->a()Lrb7;

    move-result-object p1

    sget-object v2, Ly36;->c:Lng6;

    .line 11
    invoke-virtual {p1, v2}, Lrb7;->b(Ljava/lang/Object;)Lrb7;

    move-result-object p1

    .line 12
    new-instance v2, Lv36;

    invoke-direct {v2, v0, v1}, Lv36;-><init>(Ly36;Ljava/util/HashSet;)V

    .line 13
    invoke-virtual {p1, v2}, Lrb7;->h(Luc7;)Lhb7;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lhb7;->h()Lic7;

    return-void
.end method
