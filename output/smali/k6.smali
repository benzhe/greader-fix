.class public Lk6;
.super Lc6;
.source "SourceFile"


# instance fields
.field public C0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc6;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk6;->C0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public B(Lt5;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lc6;->B(Lt5;)V

    .line 2
    iget-object v0, p0, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6;

    .line 4
    invoke-virtual {v2, p1}, Lc6;->B(Lt5;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public L()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk6;->C0:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    iget-object v2, p0, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6;

    .line 4
    instance-of v3, v2, Lk6;

    if-eqz v3, :cond_1

    .line 5
    check-cast v2, Lk6;

    invoke-virtual {v2}, Lk6;->L()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Lc6;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p1, Lc6;->M:Lc6;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lk6;

    .line 4
    iget-object v0, v0, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p1, Lc6;->M:Lc6;

    .line 6
    :cond_0
    iput-object p0, p1, Lc6;->M:Lc6;

    return-void
.end method

.method public z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-super {p0}, Lc6;->z()V

    return-void
.end method
