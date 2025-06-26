.class public Lcq5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lbu5;",
            "Lbq5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcq5;->a:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public a(Lbq5;)V
    .locals 7

    .line 1
    sget-object v0, Lbq5$a;->e:Lbq5$a;

    sget-object v1, Lbq5$a;->h:Lbq5$a;

    iget-object v2, p1, Lbq5;->b:Lyt5;

    .line 2
    iget-object v2, v2, Lfu5;->a:Lbu5;

    .line 3
    iget-object v3, p0, Lcq5;->a:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbq5;

    if-nez v3, :cond_0

    .line 4
    iget-object v0, p0, Lcq5;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5
    :cond_0
    iget-object v4, v3, Lbq5;->a:Lbq5$a;

    .line 6
    iget-object v5, p1, Lbq5;->a:Lbq5$a;

    .line 7
    sget-object v6, Lbq5$a;->f:Lbq5$a;

    if-eq v5, v6, :cond_1

    if-ne v4, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcq5;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-ne v5, v1, :cond_2

    if-eq v4, v0, :cond_2

    .line 9
    iget-object p1, p1, Lbq5;->b:Lyt5;

    .line 10
    new-instance v0, Lbq5;

    invoke-direct {v0, v4, p1}, Lbq5;-><init>(Lbq5$a;Lyt5;)V

    .line 11
    iget-object p1, p0, Lcq5;->a:Ljava/util/TreeMap;

    invoke-virtual {p1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_2
    sget-object v1, Lbq5$a;->g:Lbq5$a;

    if-ne v5, v1, :cond_3

    if-ne v4, v1, :cond_3

    .line 13
    iget-object p1, p1, Lbq5;->b:Lyt5;

    .line 14
    new-instance v0, Lbq5;

    invoke-direct {v0, v1, p1}, Lbq5;-><init>(Lbq5$a;Lyt5;)V

    .line 15
    iget-object p1, p0, Lcq5;->a:Ljava/util/TreeMap;

    invoke-virtual {p1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-ne v5, v1, :cond_4

    if-ne v4, v6, :cond_4

    .line 16
    iget-object p1, p1, Lbq5;->b:Lyt5;

    .line 17
    new-instance v0, Lbq5;

    invoke-direct {v0, v6, p1}, Lbq5;-><init>(Lbq5$a;Lyt5;)V

    .line 18
    iget-object p1, p0, Lcq5;->a:Ljava/util/TreeMap;

    invoke-virtual {p1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    if-ne v5, v0, :cond_5

    if-ne v4, v6, :cond_5

    .line 19
    iget-object p1, p0, Lcq5;->a:Ljava/util/TreeMap;

    invoke-virtual {p1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    if-ne v5, v0, :cond_6

    if-ne v4, v1, :cond_6

    .line 20
    iget-object p1, v3, Lbq5;->b:Lyt5;

    .line 21
    new-instance v1, Lbq5;

    invoke-direct {v1, v0, p1}, Lbq5;-><init>(Lbq5$a;Lyt5;)V

    .line 22
    iget-object p1, p0, Lcq5;->a:Ljava/util/TreeMap;

    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    if-ne v5, v6, :cond_7

    if-ne v4, v0, :cond_7

    .line 23
    iget-object p1, p1, Lbq5;->b:Lyt5;

    .line 24
    new-instance v0, Lbq5;

    invoke-direct {v0, v1, p1}, Lbq5;-><init>(Lbq5$a;Lyt5;)V

    .line 25
    iget-object p1, p0, Lcq5;->a:Ljava/util/TreeMap;

    invoke-virtual {p1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_7
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v5, p1, v0

    const/4 v0, 0x1

    aput-object v4, p1, v0

    const-string v0, "Unsupported combination of changes %s after %s"

    .line 26
    invoke-static {v0, p1}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 p1, 0x0

    throw p1
.end method
