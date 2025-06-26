.class public final Lgx3;
.super Lfx3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfx3<",
        "Lsx3$d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfx3;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsx3$d;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/Object;)Ljx3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljx3<",
            "Lsx3$d;",
            ">;"
        }
    .end annotation

    check-cast p1, Lsx3$c;

    iget-object p1, p1, Lsx3$c;->zzjv:Ljx3;

    return-object p1
.end method

.method public final c(Lv04;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv04;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsx3$d;

    sget-object p2, Lhx3;->a:[I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Ljava/lang/Object;)Ljx3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljx3<",
            "Lsx3$d;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lsx3$c;

    iget-object v0, p1, Lsx3$c;->zzjv:Ljx3;

    .line 2
    iget-boolean v1, v0, Ljx3;->b:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljx3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljx3;

    .line 4
    iput-object v0, p1, Lsx3$c;->zzjv:Ljx3;

    :cond_0
    return-object v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lsx3$c;

    iget-object p1, p1, Lsx3$c;->zzjv:Ljx3;

    .line 2
    iget-boolean v0, p1, Ljx3;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Ljx3;->a:Lqz3;

    invoke-virtual {v0}, Lqz3;->i()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Ljx3;->b:Z

    :goto_0
    return-void
.end method

.method public final f(Lxy3;)Z
    .locals 0

    instance-of p1, p1, Lsx3$c;

    return p1
.end method
