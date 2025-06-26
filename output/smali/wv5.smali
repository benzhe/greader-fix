.class public final synthetic Lwv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz35;


# instance fields
.field public final a:Law5;

.field public final b:[La37;

.field public final c:Lkw5;


# direct methods
.method public constructor <init>(Law5;[La37;Lkw5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwv5;->a:Law5;

    iput-object p2, p0, Lwv5;->b:[La37;

    iput-object p3, p0, Lwv5;->c:Lkw5;

    return-void
.end method


# virtual methods
.method public a(Le45;)V
    .locals 10

    iget-object v0, p0, Lwv5;->a:Law5;

    iget-object v1, p0, Lwv5;->b:[La37;

    iget-object v2, p0, Lwv5;->c:Lkw5;

    .line 1
    sget-object v3, Law5;->f:Li47$f;

    .line 2
    invoke-virtual {p1}, Le45;->l()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La37;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 3
    aget-object p1, v1, v3

    new-instance v4, Lxv5;

    invoke-direct {v4, v0, v2, v1}, Lxv5;-><init>(Law5;Lkw5;[La37;)V

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v5, Li47;

    invoke-direct {v5}, Li47;-><init>()V

    .line 6
    sget-object v6, Law5;->f:Li47$f;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 7
    sget-object v8, Law5;->h:Ljava/lang/String;

    aput-object v8, v7, v3

    const/4 v8, 0x1

    const-string v9, "22.0.1"

    aput-object v9, v7, v8

    const-string v9, "%s fire/%s grpc/"

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v5, v6, v7}, Li47;->h(Li47$f;Ljava/lang/Object;)V

    .line 9
    sget-object v6, Law5;->g:Li47$f;

    iget-object v7, v0, Law5;->d:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Li47;->h(Li47$f;Ljava/lang/Object;)V

    .line 10
    iget-object v0, v0, Law5;->e:Ljw5;

    if-eqz v0, :cond_3

    .line 11
    check-cast v0, Lsv5;

    .line 12
    iget-object v6, v0, Lsv5;->a:Ls96;

    invoke-interface {v6}, Ls96;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lsv5;->b:Ls96;

    invoke-interface {v6}, Ls96;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v6, v0, Lsv5;->a:Ls96;

    invoke-interface {v6}, Ls96;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lby5;

    const-string v7, "fire-fst"

    invoke-interface {v6, v7}, Lby5;->a(Ljava/lang/String;)Lby5$a;

    move-result-object v6

    .line 14
    iget v6, v6, Lby5$a;->e:I

    if-eqz v6, :cond_1

    .line 15
    sget-object v7, Lsv5;->d:Li47$f;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Li47;->h(Li47$f;Ljava/lang/Object;)V

    .line 16
    :cond_1
    sget-object v6, Lsv5;->e:Li47$f;

    iget-object v7, v0, Lsv5;->b:Ls96;

    invoke-interface {v7}, Ls96;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcb6;

    invoke-interface {v7}, Lcb6;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Li47;->h(Li47$f;Ljava/lang/Object;)V

    .line 17
    iget-object v0, v0, Lsv5;->c:Lve5;

    if-nez v0, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, v0, Lve5;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 20
    sget-object v6, Lsv5;->f:Li47$f;

    invoke-virtual {v5, v6, v0}, Li47;->h(Li47$f;Ljava/lang/Object;)V

    .line 21
    :cond_3
    :goto_0
    invoke-virtual {p1, v4, v5}, La37;->e(La37$a;Li47;)V

    .line 22
    check-cast v2, Liv5$c;

    .line 23
    iget-object p1, v2, Liv5$c;->a:Liv5$a;

    .line 24
    new-instance v0, Llv5;

    invoke-direct {v0, v2}, Llv5;-><init>(Liv5$c;)V

    .line 25
    invoke-virtual {p1, v0}, Liv5$a;->a(Ljava/lang/Runnable;)V

    .line 26
    aget-object p1, v1, v3

    invoke-virtual {p1, v8}, La37;->c(I)V

    return-void
.end method
